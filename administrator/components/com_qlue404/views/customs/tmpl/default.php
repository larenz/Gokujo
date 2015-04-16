<?php

// no direct access
defined('_JEXEC') or die('Restricted Access'); 
JHtml::_('behavior.tooltip'); 

$user		= JFactory::getUser();
$userId		= $user->get('id');
$listOrder	= $this->escape($this->state->get('list.ordering'));
$listDirn	= $this->escape($this->state->get('list.direction'));

?>

<form action="<?php echo JRoute::_('index.php?option=com_qlue404'); ?>" method="post" name="adminForm" id="adminForm">

<?php if (!empty( $this->sidebar)) : ?>
	<div id="j-sidebar-container" class="span2">
		<?php echo $this->sidebar; ?>
	</div>
	<div id="j-main-container" class="span10">
<?php else : ?>
	<div id="j-main-container">
<?php endif;?>

			<div id="filter-bar" class="btn-toolbar">				
				<div class="btn-group pull-right hidden-phone">
					<label for="limit" class="element-invisible"><?php echo JText::_('JFIELD_PLG_SEARCH_SEARCHLIMIT_DESC'); ?></label>
					<?php echo $this->pagination->getLimitBox(); ?>
				</div>
			</div>
			<div class="clearfix"> </div>

			<table class="adminlist table table-striped">
				<thead>
					<tr>
						<th width="5">
							<input type="checkbox" name="checkall-toggle" value="" title="<?php echo JText::_('JGLOBAL_CHECK_ALL'); ?>" onclick="Joomla.checkAll(this)" />
						</th>
						<th class="title">
							<?php echo JHtml::_('grid.sort', 'JGLOBAL_TITLE', 'a.title', $listDirn, $listOrder); ?>
						</th>
						<th width="10%">
							<?php echo JHtml::_('grid.sort',  'COM_QLUE404_ERROR', 'a.error', $listDirn, $listOrder); ?>
						</th>
						<th width="5%">
							<?php echo JHtml::_('grid.sort',  'JSTATUS', 'a.published', $listDirn, $listOrder); ?>
						</th>
						<th width="12%">
							<?php echo JHtml::_('grid.sort',  'JGLOBAL_CREATED', 'a.created', $listDirn, $listOrder); ?>
						</th>
						<th width="12%">
							<?php echo JHtml::_('grid.sort',  'JGLOBAL_MODIFIED', 'a.modified', $listDirn, $listOrder); ?>
						</th>
						<th width="1%" class="nowrap">
							<?php echo JHtml::_('grid.sort',  'JGRID_HEADING_ID', 'a.id', $listDirn, $listOrder); ?>
						</th>
					</tr>
				</thead>
				<tbody>
					
					<?php foreach($this->items as $i => $item): ?>
				        <tr class="row<?php echo $i % 2; ?>">
			                <td>
		                        <?php echo JHtml::_('grid.checkedOut', $item, $i); ?>
			                </td>
			                <td>
		                        <?php if(!$item->checked_out || ($item->checked_out == $user->get('id'))) : ?>
									<a href="<?php echo JRoute::_('index.php?option=com_qlue404&task=custom.edit&id='.(int) $item->id); ?>">
										<?php echo $this->escape($item->title); ?>
									</a>
								<?php else : ?>
									<?php echo $this->escape($item->title); ?>
								<?php endif; ?>
			                </td>
			                <td align="center">
			                	<?php echo $this->escape($item->error); ?>
			                </td>
			                <td align="center">
			                	<?php echo JHtml::_('jgrid.published', $item->published, $i, 'customs.'); ?>
			                </td>
			                <td align="center">
		                        <?php echo JHtml::_('date', $item->created, JText::_('DATE_FORMAT_LC2')); ?>
			                </td>
			                <td align="center">
		                        <?php echo JHtml::_('date', $item->modified, JText::_('DATE_FORMAT_LC2')); ?>
			                </td>
			                <td>
		                        <?php echo (int)$item->id; ?>
			                </td>
				        </tr>
					<?php endforeach; ?>
					
				</tbody>
				<tfoot>
					<tr>
						<td colspan="6"><?php echo $this->pagination->getListFooter(); ?></td>
					</tr>
				</tfoot>
			</table>

			<input type="hidden" name="task" value="" />
			<input type="hidden" name="boxchecked" value="0" />
			<input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>" />
			<input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>" />
			<?php echo JHtml::_('form.token'); ?>
	</div>
</form>