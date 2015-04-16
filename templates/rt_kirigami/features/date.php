<?php
/**
 * @version   $Id: date.php 19176 2014-02-26 17:51:25Z kevin $
* @author    RocketTheme http://www.rockettheme.com
* @copyright Copyright (C) 2007 - 2014 RocketTheme, LLC
* @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*
* Gantry uses the Joomla Framework (http://www.joomla.org), a GNU/GPLv2 content management system
*
*/

defined('JPATH_BASE') or die();

gantry_import('core.gantryfeature');
gantry_import('core.utilities.gantrydate');
/**
 * @package     gantry
 * @subpackage  features
 */
class GantryFeatureDate extends GantryFeature
{
    var $_feature_name = 'date';
   
	function render($position)
	{
		/** @var $gantry Gantry */
		global $gantry;
		ob_start();
		$now    = new GantryDate();	
		$format = $this->get('formats');
	    ?>
	    <div class="rt-block">
			<span class="rt-date"><span><?php echo $now->toFormat($format); ?></span></span>
		</div>
		<?php
	    return ob_get_clean();
	}
	
}