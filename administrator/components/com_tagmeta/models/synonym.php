<?php
/**
 * Tag Meta Community component for Joomla
 *
 * @author selfget.com (info@selfget.com)
 * @package TagMeta
 * @copyright Copyright 2009 - 2012
 * @license GNU Public License
 * @link http://www.selfget.com
 * @version 1.7.1
 */

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

// import the Joomla modellist library
jimport('joomla.application.component.modeladmin');

class TagMetaModelSynonym extends JModelAdmin
{
  /**
   * Returns a reference to the a Table object, always creating it
   *
   * @param  type  The table type to instantiate
   * @param  string  A prefix for the table class name. Optional
   * @param  array  Configuration array for model. Optional
   * @return  JTable  A database object
   * @since  1.6
   */
  public function getTable($type = 'Synonym', $prefix = 'TagMetaTable', $config = array())
  {
    return JTable::getInstance($type, $prefix, $config);
  }

  /**
   * Method to get the record form
   *
   * @param  array  $data    Data for the form
   * @param  boolean  $loadData  True if the form is to load its own data (default case), false if not
   * @return  mixed  A JForm object on success, false on failure
   * @since  1.6
   */
  public function getForm($data = array(), $loadData = true)
  {
    // Get the form
    $form = $this->loadForm('com_tagmeta.client', 'synonym', array('control' => 'jform', 'load_data' => $loadData));
    if (empty($form)) {
      return false;
    }

    return $form;
  }

  /**
   * Method to get the data that should be injected in the form
   *
   * @return  mixed  The data for the form
   * @since  1.6
   */
  protected function loadFormData()
  {
    // Check the session for previously entered form data
    $data = JFactory::getApplication()->getUserState('com_tagmeta.edit.synonym.data', array());

    if (empty($data)) {
      $data = $this->getItem();
    }

    return $data;
  }

  /**
   * Prepare and sanitise the table data prior to saving
   *
   * @param  JTable  A JTable object
   * @since  1.6
   */
  protected function prepareTable(&$table)
  {
    if (JRequest::getVar('task') == 'save2copy') {
      $table->keywords = JText::_('COM_TAGMETA_COPY_OF') . $table->keywords;
    }
    parent::prepareTable($table);
  }

}
?>
