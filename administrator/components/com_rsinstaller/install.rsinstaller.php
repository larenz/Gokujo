<?php
/**
* @version 1.3.0
* @package RSform!Pro 1.3.0
* @copyright (C) 2007-2010 www.rsjoomla.com
* @license GPL, http://www.gnu.org/copyleft/gpl.html
*/
defined( '_JEXEC' ) or die( 'Restricted access' );

// Get a new installer
$plg_installer = new JInstaller();
$plg_installer->install($this->parent->getPath('source').DS.'rsfpplaythru');

$db = JFactory::getDbo();

$query = "DELETE FROM #__rsform_config WHERE SettingName IN ('playthru.publisher.key', 'playthru.scoring.key')";
$db->setQuery($query);
$db->query();

$query = "SELECT ComponentTypeId FROM #__rsform_component_types WHERE ComponentTypeName = 'playthru'";
$db->setQuery($query);
$id_play = $db->loadResult();

$query = "DELETE FROM #__rsform_component_type_fields WHERE ComponentTypeId = ".$id_play;
$db->setQuery($query);
$db->query();

$query = "DELETE FROM #__rsform_component_types WHERE ComponentTypeName = 'playthru'";
$db->setQuery($query);
$db->query();

$query = "INSERT INTO #__rsform_config (SettingName, SettingValue) VALUES ".
		 "('playthru.publisher.key', ''),".
		 "('playthru.scoring.key', '')";
$db->setQuery($query);
$db->query();

$query = "INSERT INTO #__rsform_component_types (ComponentTypeId, ComponentTypeName) VALUES ".
		 "(NULL, 'playthru')";
$db->setQuery($query);
$db->query();

//get the ID of inserted element
$query = "SELECT ComponentTypeId FROM #__rsform_component_types ".
		 " WHERE ComponentTypeName = 'playthru'";
$db->setQuery($query);
$id_play = $db->loadResult();

$query = "INSERT INTO #__rsform_component_type_fields (ComponentTypeId, FieldName, FieldType, FieldValues, Ordering) VALUES ".
		 "($id_play, 'NAME', 'textbox', '', 0),".
		 "($id_play, 'CAPTION', 'textbox', '', 1),".
		 "($id_play, 'ADDITIONALATTRIBUTES', 'textarea', '', 2),".
		 "($id_play, 'DESCRIPTION', 'textarea', '', 3),".
		 "($id_play, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 4),".
		 "($id_play, 'REQUIRED', 'select', 'NO\r\nYES', 5),".
		 "($id_play, 'COMPONENTTYPE', 'hidden', '$id_play', 6)";
$db->setQuery($query);
$db->query();