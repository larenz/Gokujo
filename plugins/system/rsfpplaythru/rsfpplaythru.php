<?php
/**
 * @package    RSFormPro PlayThru
 * @copyright  Copyright (c)2011-2012 Davide Tampellini
 * @license    GNU General Public License version 3, or later
 */

defined('_JEXEC') or die();

jimport( 'joomla.plugin.plugin' );

class plgSystemRSFPPlayThru extends JPlugin
{
	const AYAH_WEB_SERVICE_HOST = "ws.areyouahuman.com";

	protected $ayah_publisher_key;
	protected $ayah_scoring_key;

	protected $session_secret;
	protected $pluginId;

	function plgSystemRSFPPlayThru( &$subject, $config )
	{
		parent::__construct( $subject, $config );

		$db = JFactory::getDbo();
		$query = "SELECT `ComponentTypeId` FROM #__rsform_component_types WHERE ComponentTypeName = 'playthru'";
		$db->setQuery($query);
		$id_play = $db->loadResult();

		$this->pluginId = $id_play;
		$this->canRun();
		$this->session_secret 	  = JRequest::getVar('session_secret');
		$this->ayah_scoring_key   = RSFormProHelper::getConfig('playthru.scoring.key');
		$this->ayah_publisher_key = RSFormProHelper::getConfig('playthru.publisher.key');
	}

	function canRun()
	{
		if (class_exists('RSFormProHelper')) return true;

		$helper = JPATH_ADMINISTRATOR.DS.'components'.DS.'com_rsform'.DS.'helpers'.DS.'rsform.php';
		if (file_exists($helper))
		{
			require_once($helper);
			RSFormProHelper::readConfig();
			return true;
		}

		return false;
	}

	function rsfp_bk_onAfterShowComponents()
	{
		if (!$this->canRun()) return;

		$lang =& JFactory::getLanguage();
		$lang->load('plg_system_rsfpplaythru', JPATH_ADMINISTRATOR);

		$formId = JRequest::getInt('formId');
		$components = RSFormProHelper::componentExists($formId, $this->pluginId);
		$link = "displayTemplate('".$this->pluginId."')";
		if (!empty($components))
			$link = "displayTemplate('".$this->pluginId."', '".$components[0]."')";

		?>
		<li class="rsform_navtitle">Playthru</li>
		<li>
			<a href="javascript: void(0);" onclick="<?php echo $link;?>;return false;" id="rsfpc<?php echo $this->pluginId?>">
				<span id="playthru">Playthru captcha</span>
			</a>
		</li>
		<?php
	}

	function rsfp_bk_onAfterCreateComponentPreview($args = array())
	{
		if (!$this->canRun()) return;

		if ($args['ComponentTypeName'] == 'playthru')
		{
			$args['out'] ='<td>'.$args['data']['CAPTION'].'</td>';
			$args['out'] .='<td>{playthru field}</td>';
		}
	}

	function rsfp_bk_onAfterShowConfigurationTabs($tabs)
	{
		if (!$this->canRun()) return;

		$lang = JFactory::getLanguage();
		$lang->load('plg_system_rsfpplaythru', JPATH_ADMINISTRATOR);

		$tabs->addTitle(JText::_('Playthru'), 'form-playthru');
		$tabs->addContent($this->playthruConfigurationScreen());
	}

	function rsfp_bk_onAfterCreateFrontComponentBody($args)
	{
		if (!$this->canRun()) return;
		$lang =& JFactory::getLanguage();
		$lang->load('plg_system_rsfpplaythru', JPATH_ADMINISTRATOR);

		if ($args['r']['ComponentTypeId'] != $this->pluginId){
			return;
		}

		if ($this->ayah_publisher_key == null || $this->ayah_publisher_key == '')
		{
			$args['out'] = JText::_('PLG_PLAYTHRU_ERROR_NO_PUBLISHER_KEY');
			return;
		}

		$url = 'https://' . self::AYAH_WEB_SERVICE_HOST . "/ws/script/".urlencode($this->ayah_publisher_key);

		$args['out'] = "<div id='AYAH'></div><script src='". $url ."' type='text/javascript' language='JavaScript'></script>";
	}

	function rsfp_f_onBeforeFormValidation($args)
	{
		$result = false;

		if(!$this->ayah_scoring_key)
		{
			$args['invalid'] = array_merge($args['invalid'], array($this->pluginId));
			$args['invalid'] = array_unique($args['invalid']);
			return;
		}

		if(!$this->session_secret)
		{
			$args['invalid'] = array_merge($args['invalid'], array($this->pluginId));
			$args['invalid'] = array_unique($args['invalid']);
			return;
		}

		if ($this->session_secret)
		{
			$fields = array(
				'session_secret' => urlencode($this->session_secret),
				'scoring_key' => $this->ayah_scoring_key
				);

			$resp = $this->doHttpsPostReturnJSONArray(self::AYAH_WEB_SERVICE_HOST, "/ws/scoreGame", $fields);
			if($resp->status_code == 1)
			{
				//captcha field is always invalid for RSForm. If it's ok, let's remove from the invalid array
				$db = JFactory::getDbo();
				$query = "SELECT ComponentId FROM #__rsform_components WHERE ComponentTypeId = ".$this->pluginId;
				$db->setQuery($query);
				$components = $db->loadResultArray();

				foreach($components as $component)
				{
					$pos = array_search($component, $args['invalid']);
					if($pos !== false){
						unset($args['invalid'][$pos]);
					}
				}
			}
			else
			{
				$args['invalid'] = array_merge($args['invalid'], array($this->pluginId));
				$args['invalid'] = array_unique($args['invalid']);
				return;
			}
		}

		return true;
	}

	function playthruConfigurationScreen()
	{
		ob_start();

		$lang = JFactory::getLanguage();
		$lang->load('plg_system_rsfpplaythru', JPATH_ADMINISTRATOR);
		?>
		<div id="page-playthru">
			<table class="admintable">
				<tr>
					<td width="200" style="width: 200px;" align="right" class="key">
						<label for="public"><?php echo JText::_( 'PLG_PLAYTHRU_PUBLISHER_KEY_LABEL' ); ?></label></td>
					<td>
						<input type="text" name="rsformConfig[playthru.publisher.key]" value="<?php echo RSFormProHelper::htmlEscape(RSFormProHelper::getConfig('playthru.publisher.key')); ?>" size="100" maxlength="100">
					</td>
				</tr>
				<tr>
					<td width="200" style="width: 200px;" align="right" class="key">
						<label for="private"><?php echo JText::_( 'PLG_PLAYTHRU_SCORING_KEY_LABEL' ); ?></label>
					</td>
					<td>
						<input type="text" name="rsformConfig[playthru.scoring.key]" value="<?php echo RSFormProHelper::htmlEscape(RSFormProHelper::getConfig('playthru.scoring.key'));  ?>" size="100" maxlength="100">
					</td>
				</tr>
			</table>
		</div>
		<?php

		$contents = ob_get_contents();
		ob_end_clean();
		return $contents;
	}

	/**
 	 * Do a HTTPS POST, return some JSON decoded as array (Internal function)
	 * @param $host hostname
 	 * @param $path path
	 * @param $fields associative array of fields
	 * return JSON decoded data structure or empty data structure
	 */
	protected function doHttpsPostReturnJSONArray($hostname, $path, $fields)
	{
		$result = $this->doHttpsPost($hostname, $path, $fields);

		if ($result) $result = json_decode($result);
		else
		{
			$result = array();
		}

		return $result;
	}

	protected function doHttpsPost($hostname, $path, $fields)
	{
		$result = "";
		// URLencode the post string
		$fields_string = "";
		foreach($fields as $key => $value)
		{
			if (is_array($value))
			{
				foreach ($value as $v)
				{
					$fields_string .= $key . '[]=' . $v . '&';
				}
			}
			else
			{
				$fields_string .= $key.'='.$value.'&';
			}
		}
		rtrim($fields_string,'&');

		// cURL or something else
		if (function_exists('curl_init'))
		{
			$curlsession = curl_init();
			curl_setopt($curlsession, CURLOPT_URL, "https://" . $hostname . $path);
			curl_setopt($curlsession, CURLOPT_POST, count($fields));
			curl_setopt($curlsession, CURLOPT_POSTFIELDS, $fields_string);
			curl_setopt($curlsession, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($curlsession, CURLOPT_SSL_VERIFYHOST, 0);
			curl_setopt($curlsession, CURLOPT_SSL_VERIFYPEER, false);
			$result = curl_exec($curlsession);
		}
		else
		{
			// Build a header
			$http_request  = "POST $path HTTP/1.1\r\n";
			$http_request .= "Host: $hostname\r\n";
			$http_request .= "Content-Type: application/x-www-form-urlencoded;\r\n";
			$http_request .= "Content-Length: " . strlen($fields_string) . "\r\n";
			$http_request .= "User-Agent: AreYouAHuman/PHP 1.0.2\r\n";
			$http_request .= "Connection: Close\r\n";
			$http_request .= "\r\n";
			$http_request .= $fields_string ."\r\n";

			$result = '';
			$errno = $errstr = "";
			$fs = fsockopen("ssl://" . $hostname, 443, $errno, $errstr, 10);
			if( false == $fs )
			{
				die('Could not open socket');
			}
			else
			{
				fwrite($fs, $http_request);
				while (!feof($fs))
				{
					$result .= fgets($fs, 4096);
				}

				$result = explode("\r\n\r\n", $result, 2);
				$result = $result[1];
			}
		}

		return $result;
	}
}