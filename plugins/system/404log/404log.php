<?php
/*
 * @component 404log
 * @version 1.2 "Python"
 * @website : http://www.medialup.com
 * @copyright : 2014 Ionut Lupu. All rights reserved.
 * @license : http://www.gnu.org/copyleft/gpl.html GNU/GPL
 */
 
 
// Check to ensure this file is included in Joomla!
defined('_JEXEC') or die('Restricted access');

// import library dependencies
jimport('joomla.plugin.plugin');
jimport('joomla.filesystem.file');


class plgSystem404log extends JPlugin
{

    protected static $row;
    protected static $parametri;

	function __construct(&$subject, $config)
	{
		parent::__construct($subject, $config);
   
		self::$parametri = $this->params;
		
		JError::setErrorHandling(E_ERROR, 'callback', array('plgSystem404log', 'Error404'));
		restore_error_handler();
	}


	static function Error404(&$error) {
      
	  $errors = JError::getErrors();
	  

		if ( !empty( $errors ) ) { 
		  foreach ( $errors as $error ) {
			  if ( $error->getCode() == '404' ) {

			      // get url
			      $uri        = JURI::getInstance();
			      $current    = $uri->toString(array('scheme', 'host', 'port', 'path', 'query', 'fragment'));

			      // get user ip
			      $ip = self::getIP();
			      
			      // get refferer
			      $refferer = self::getRefferer();

			      // get date
			      $date = JFactory::getDate()->format("Y-m-d");

			      // get time
			      $time = JFactory::getDate()->format("H:i:s");
			      
			      $details = array('url'=>$current, 'ip'=>$ip, 'date'=>$date, 'time'=>$time, 'refferer'=>$refferer);

			      self::createRow ( $details );
			      self::sendEmail();
			      self::logRow();

			      $redirect = self::$parametri->get('redirect');
			      // if a redirect url is set, redirect the user
			      if ( !empty($redirect) ) {
				 	 	JFactory::getApplication()->redirect($redirect);
				  		exit();
			      	}
			  	}
		  	}
		}
        
		$app 		= JFactory::getApplication();
		$document 	= JDocument::getInstance('error');
		if ($document) {
			
			$config = JFactory::getConfig();
			$template = $app->getTemplate();
			$document->setError($error);

			@ob_end_clean();
			$document->setTitle(JText::_('Error') . ': ' . $error->getCode());
			$data = $document->render(false, array('template' => $template, 'directory' => JPATH_THEMES, 'debug' => $config->get('debug')));

			if (!empty($data)) {
			
				JResponse::allowCache(false);

				JResponse::setBody($data);
				echo JResponse::toString();
			}
   		} 

		$app->close(0);
   	}
	


    protected static function createRow( $details ) {
        $body       = 'New 404 | URL: %s | IP: %s | Date:%s | Time:%s | Refferer URL: %s';
        self::$row  = JText::sprintf( $body, $details['url'], $details['ip'], $details['date'], $details['time'], $details['refferer'] );
    }



    protected static function sendEmail() {

        $fromname   = JFactory::getConfig()->get('fromname');
        $mailfrom   = JFactory::getConfig()->get('mailfrom');
        $to         =  self::$parametri->get('emailTo');
        $subject    =  self::$parametri->get('emailSubject');
        $tosend     =  self::$parametri->get('sendEmail');

        if ( !$tosend || !$to || !$subject ) {
            return false;
        }

        JFactory::getMailer()->sendMail($mailfrom, $fromname, $to, $subject, self::$row);
    }


    protected static function logRow() {

        $logfile = self::$parametri->get('logfile');
        if ( !$logfile ) {
            return;
        }

        if (!JFile::exists( $logfile)) {
            $content = '';
            JFile::write( $logfile, $content );
        }

        $logs = JFile::read ( $logfile );
        $logs .= "\n" . self::$row;

        JFile::write( $logfile, $logs );
    }
	

    protected static function getIP() {
        
        foreach (array('HTTP_CLIENT_IP', 'HTTP_X_FORWARDED_FOR', 'HTTP_X_FORWARDED', 'HTTP_X_CLUSTER_CLIENT_IP', 'HTTP_FORWARDED_FOR', 'HTTP_FORWARDED', 'REMOTE_ADDR') as $key){
            if (array_key_exists($key, $_SERVER) === true){
                foreach (explode(',', $_SERVER[$key]) as $ip){
                    $ip = trim($ip);
                    if (filter_var($ip, FILTER_VALIDATE_IP, FILTER_FLAG_NO_PRIV_RANGE | FILTER_FLAG_NO_RES_RANGE) !== false){
                        return $ip;
                    }
                }
            }
        }
    }
    
    
    protected static function getRefferer() {
		return $_SERVER['HTTP_REFERER'];
	}


}
?>
