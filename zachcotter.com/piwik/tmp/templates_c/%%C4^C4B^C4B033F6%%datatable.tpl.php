<?php /* Smarty version 2.6.26, created on 2013-05-31 03:12:15
         compiled from CoreHome/templates/datatable.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'json_encode', 'CoreHome/templates/datatable.tpl', 1, false),array('modifier', 'escape', 'CoreHome/templates/datatable.tpl', 1, false),array('modifier', 'translate', 'CoreHome/templates/datatable.tpl', 12, false),)), $this); ?>
<div class="dataTable" data-table-type="dataTable" data-report="<?php echo $this->_tpl_vars['properties']['uniqueId']; ?>
" data-params="<?php echo ((is_array($_tmp=json_encode($this->_tpl_vars['javascriptVariablesToSet']))) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
">
    <div class="reportDocumentation">
        <?php if (! empty ( $this->_tpl_vars['reportDocumentation'] )): ?><p><?php echo $this->_tpl_vars['reportDocumentation']; ?>
</p><?php endif; ?>
        <?php if (isset ( $this->_tpl_vars['properties']['metadata']['archived_date'] )): ?><span class='helpDate'><?php echo $this->_tpl_vars['properties']['metadata']['archived_date']; ?>
</span><?php endif; ?>
    </div>
    <div class="<?php if (isset ( $this->_tpl_vars['javascriptVariablesToSet']['idSubtable'] ) && $this->_tpl_vars['javascriptVariablesToSet']['idSubtable'] != 0): ?>sub<?php endif; ?><?php if ($this->_tpl_vars['javascriptVariablesToSet']['viewDataTable'] == 'tableAllColumns'): ?>dataTableAllColumnsWrapper<?php elseif ($this->_tpl_vars['javascriptVariablesToSet']['viewDataTable'] == 'tableGoals'): ?>dataTableAllColumnsWrapper<?php else: ?>dataTableWrapper<?php endif; ?>">
        <?php if (isset ( $this->_tpl_vars['arrayDataTable']['result'] ) && $this->_tpl_vars['arrayDataTable']['result'] == 'error'): ?>
            <?php echo $this->_tpl_vars['arrayDataTable']['message']; ?>

        <?php else: ?>
            <?php if (count ( $this->_tpl_vars['arrayDataTable'] ) == 0): ?>
                <?php if (isset ( $this->_tpl_vars['showReportDataWasPurgedMessage'] ) && $this->_tpl_vars['showReportDataWasPurgedMessage']): ?>
                    <div class="pk-emptyDataTable"><?php echo ((is_array($_tmp='CoreHome_DataForThisReportHasBeenPurged')) ? $this->_run_mod_handler('translate', true, $_tmp, $this->_tpl_vars['deleteReportsOlderThan']) : smarty_modifier_translate($_tmp, $this->_tpl_vars['deleteReportsOlderThan'])); ?>
</div>
                <?php else: ?>
                    <div class="pk-emptyDataTable"><?php echo ((is_array($_tmp='CoreHome_ThereIsNoDataForThisReport')) ? $this->_run_mod_handler('translate', true, $_tmp) : smarty_modifier_translate($_tmp)); ?>
</div>
                <?php endif; ?>
            <?php else: ?>
                <a name="<?php echo $this->_tpl_vars['properties']['uniqueId']; ?>
"></a>
                <table cellspacing="0" class="dataTable">
                    
                    <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "CoreHome/templates/datatable_head.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
                    
                    <tbody>
                    <?php $_from = $this->_tpl_vars['arrayDataTable']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['row']):
?>
                        <tr <?php if ($this->_tpl_vars['row']['idsubdatatable'] && $this->_tpl_vars['javascriptVariablesToSet']['controllerActionCalledWhenRequestSubTable'] != null): ?>class="subDataTable"
                            id="<?php echo $this->_tpl_vars['row']['idsubdatatable']; ?>
"<?php endif; ?><?php if (isset ( $this->_tpl_vars['row']['issummaryrow'] ) && $this->_tpl_vars['row']['issummaryrow'] && $this->_tpl_vars['properties']['highlight_summary_row']): ?> class="highlight"<?php endif; ?>>
                            <?php $_from = $this->_tpl_vars['dataTableColumns']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['column']):
?>
                                <td>
                                    <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "CoreHome/templates/datatable_cell.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
                                </td>
                            <?php endforeach; endif; unset($_from); ?>
                        </tr>
                    <?php endforeach; endif; unset($_from); ?>
                    </tbody>
                </table>
            <?php endif; ?>

            <?php if ($this->_tpl_vars['properties']['show_footer']): ?>
                <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "CoreHome/templates/datatable_footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
            <?php endif; ?>
            <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "CoreHome/templates/datatable_js.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
        <?php endif; ?>
    </div>
</div>