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

jimport( 'joomla.application.component.view');

require_once JPATH_COMPONENT.'/helpers/tagmeta.php';

/**
 * HTML View class for the Tag Meta Rule component
 *
 * @package TagMeta
 *
 */
class TagMetaViewRule extends JView
{
  protected $form;
  protected $item;
  protected $state;

  /**
   * Display the view
   */
  public function display($tpl = null)
  {
    // Initialiase variables.
    $this->form = $this->get('Form');
    $this->item = $this->get('Item');
    $this->state = $this->get('State');

    // Check for errors.
    if (count($errors = $this->get('Errors'))) {
      JError::raiseError(500, implode("\n", $errors));
      return false;
    }

    $this->addToolbar();
    parent::display($tpl);
  }

  /**
   * Add the page title and toolbar
   *
   * @since  1.6
   */
  protected function addToolbar()
  {
    JRequest::setVar('hidemainmenu', true);

    $user = JFactory::getUser();
    $userId = $user->get('id');
    $isNew = ($this->item->id == 0);
    $checkedOut = !($this->item->checked_out == 0 || $this->item->checked_out == $userId);
    $canDo = TagMetaHelper::getActions();

    JToolBarHelper::title($isNew ? JText::_('COM_TAGMETA_RULE_NEW') : JText::_('COM_TAGMETA_RULE_EDIT'), 'tagmeta.png');

    // If not checked out, can save the item
    if (!$checkedOut && ($canDo->get('core.edit') || count($user->getAuthorisedCategories('com_tagmeta', 'core.create')) > 0)) {
      JToolBarHelper::apply('rule.apply');
      JToolBarHelper::save('rule.save');

      if ($canDo->get('core.create')) {
        //JToolBarHelper::save2new('rule.save2new');
        JToolBarHelper::custom('rule.save2new', 'save-new', '', 'JTOOLBAR_SAVE_AND_NEW', false);
      }
    }

    // If an existing item, can save to a copy
    if (!$isNew && $canDo->get('core.create')) {
      //JToolBarHelper::save2copy('rule.save2copy');
      JToolBarHelper::custom('rule.save2copy', 'save-copy', '', 'JTOOLBAR_SAVE_AS_COPY', false);
    }

    if (empty($this->item->id)) {
      JToolBarHelper::cancel('rule.cancel');
    } else {
      JToolBarHelper::cancel('rule.cancel', 'JTOOLBAR_CLOSE');
    }

  }

}
?>
