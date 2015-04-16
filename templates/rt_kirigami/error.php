<?php
/**
* @version   $Id: error.php 5443 2012-11-27 20:16:51Z james $
* @author    RocketTheme http://www.rockettheme.com
* @copyright Copyright (C) 2007 - 2012 RocketTheme, LLC
* @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
*
* Gantry uses the Joomla Framework (http://www.joomla.org), a GNU/GPLv2 content management system
*
*/

defined( '_JEXEC' ) or die( 'Restricted access' );
if (!isset($this->error)) {
        
	$this->error = JError::raiseWarning( 403, JText::_('ALERTNOTAUTH') );
	$this->debug = false; 
        
}

// load and inititialize gantry class
global $gantry;
require_once(dirname(__FILE__).'/lib/gantry/gantry.php');
$gantry->init();

$doc = JFactory::getDocument();
$doc->setTitle($this->error->getCode() . ' - '.$this->title);
$gantry->addStyle('grid-responsive.css', 5);
$gantry->addScript('rokmediaqueries.js'); 

ob_start();
?>
<body <?php echo $gantry->displayBodyTag(); ?>>
	<?php /** Begin Header **/ if ($gantry->countModules('header')) : ?>
	<div id="rt-header" class="dark-block">
		<div class="rt-headerborder"></div>
		<div class="rt-container">
			<?php echo $gantry->displayModules('header','standard','standard'); ?>
			<div class="clear"></div>
		</div>
	</div>
	<?php /** End Header **/ endif; ?>
	<div id="rt-error-body">
		<div class="rt-container">
			<div id="rt-body-surround" class="component-content">
				<div class="rt-error-box">
					<div class="rt-error-container">
                                               
						<h1 class="error-title">Error <br /><?php echo $this->error->getCode(); ?>!</h1>
						<h2 class="error-message"><?php echo $this->error->getMessage(); ?></h2>
						<div class="error-content">
							<p><strong>You may not be able to visit this page because of:</strong></p>
							<ol>
								<li>an out-of-date bookmark/favourite</li>
								<li>a search engine that has an out-of-date listing for this site</li>
								<li>a mistyped address</li>
								<li>you have no access to this page</li>
								<li>The requested resource was not found.</li>
								<li>An error has occurred while processing your request.</li>
							</ol>
							<p></p>
							<p><a href="<?php echo $gantry->baseUrl; ?>" class="readon"><span>&larr; Home</span></a></p>
						</div>
					</div>
					<img class="rt-error-image" src="<?php echo $gantry->baseUrl; ?>/templates/rt_kirigami/images/backgrounds/error-image.png" />
					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>
	<?php /** Begin Copyright **/ if ($gantry->countModules('copyright')) : ?>
	<div id="rt-copyright">
		<div class="rt-container">
			<?php echo $gantry->displayModules('copyright','standard','standard'); ?>
			<div class="clear"></div>
		</div>
	</div>
	<?php /** End Copyright **/ endif; ?>
</body>
</html>
<?php

$body = ob_get_clean();
$gantry->finalize();

require_once(JPATH_LIBRARIES.'/joomla/document/html/renderer/head.php');
$header_renderer = new JDocumentRendererHead($doc);
$header_contents = $header_renderer->render(null);
ob_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>">
<head>
	<?php echo $header_contents; ?>
	
	<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template; ?>/css/gantry-core.css" type="text/css" />
  	<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template; ?>/css/grid-12-responsive.css" type="text/css" />
	<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template; ?>/css/joomla-core.css" type="text/css" />
	<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template; ?>/css/main-<?php $colorstyle = $gantry->get('main-body'); echo $colorstyle; ?>.css" type="text/css" />
	<?php if ($gantry->get('menutype') =="fusionmenu") : ?>
	<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template; ?>/css/fusionmenu.css" type="text/css" />
	<?php endif; ?>
	<?php if ($gantry->get('menutype') =="splitmenu") : ?>
	<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template; ?>/css/splitmenu.css" type="text/css" />
	<?php endif; ?>
	<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template; ?>/css/template.css" type="text/css" />
	<link rel="stylesheet" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template; ?>/css/error.css" type="text/css" />
	<!--[if IE 8]>
		<link rel="stylesheet" type="text/css" href="<?php echo $this->baseurl; ?>/templates/<?php echo $this->template; ?>/css/template-ie8.css" />
	<![endif]-->

	<style type="text/css">
		<?php 
			$accentColor = new Color($gantry->get('main-accent'));
		    echo 'a, .active .sprocket-lists-title, .sprocket-lists li:hover .sprocket-lists-title, .sprocket-headlines-item a:hover, .sprocket-mosaic-title a:hover {color:'.$gantry->get('main-accent').';}'."\n";
		    echo '.title:before, .items-leading h2:before, .component-content .item-page h2:before, .component-content .blog h2:before, .component-content .weblink-category h2:before, .component-content .contact h2:before, .component-content .login h1:before, .sprocket-headlines-badge:before, .button, .readon, .readmore, button.validate, #member-profile a, #member-registration a, .formelm-buttons button, .sprocket-mosaic-loadmore, .sprocket-lists li:hover .indicator, .sprocket-lists li.active .indicator, .sprocket-lists .arrow:hover, .sprocket-lists-pagination li.active, .sprocket-headlines-navigation .arrow:hover, .sprocket-features-pagination li:hover span, .sprocket-features-arrows .arrow:hover, .rt-totop:hover {background-color:'.$gantry->get('main-accent').';}'."\n";
		    echo '.button:hover, .readon:hover, .readmore:hover, button.validate:hover, #member-profile a:hover, #member-registration a:hover, .formelm-buttons button:hover, .sprocket-mosaic-loadmore:hover {background-color:'.$accentColor->darken('5%').';}'."\n";
		    echo '#rt-header a, #rt-footer a {color:'.$accentColor->lighten('25%').';}'."\n";
		    echo '.menutop li.root:hover, .menutop li.root.f-mainparent-itemfocus, .menutop li.root.active, .fusion-submenu-wrapper, .rt-splitmenu li:hover, .rt-splitmenu li.active, #roksearch_search_str, .rokajaxsearch .roksearch-wrapper input#roksearch_search_str.inputbox:focus {border-color:'.$accentColor->lighten('25%').';}'."\n";
		    echo 'body ul.checkmark li::after, body ul.circle-checkmark li::before, body ul.square-checkmark li::before, body ul.circle-small li::after, body ul.circle li::after, body ul.circle-large li::after, .title5 .title::before, .sprocket-headlines-badge::after {border-color: '.$gantry->get('main-accent').';}'."\n";
		    echo 'body ul.triangle-small li::after, body ul.triangle li::after, body ul.triangle-large li::after {border-color: transparent transparent transparent '.$gantry->get('main-accent').';}'."\n";
		?>
	</style>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<?php
$header = ob_get_clean();
echo $header.$body;;
