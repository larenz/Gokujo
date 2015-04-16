<?php
/**
* @version   $Id: branding.php 1513 2012-07-03 18:33:48Z kevin $
* @author    RocketTheme http://www.rockettheme.com
* @copyright Copyright (C) 2007 - 2014 RocketTheme, LLC
* @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*
* Gantry uses the Joomla Framework (http://www.joomla.org), a GNU/GPLv2 content management system
*
*/
defined('JPATH_BASE') or die();

gantry_import('core.gantryfeature');

class GantryFeatureBranding extends GantryFeature {
    var $_feature_name = 'branding';

	function render($position="") {
	    ob_start();
	    ?>
	    <div class="rt-block">
			<div id="developed-by">
				<a href="http://www.rockettheme.com/" title="rockettheme.com" id="rocket"></a>
			</div>
		</div>
		<?php
	    return ob_get_clean();
	}
}