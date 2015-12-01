<?php /* Smarty version 2.6.12, created on 2015-11-23 04:49:06
         compiled from app/relatorios.fiados.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'number_format', 'app/relatorios.fiados.tpl', 32, false),)), $this); ?>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Relatórios</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    
    <div class="col-lg-12">
	    <div class="panel panel-default">
	        <div class="panel-heading">
	            Clientes à Pagar
	        </div>
	        <!-- /.panel-heading -->
	        <div class="panel-body">
	            <div class="dataTable_wrapper">
	                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
	                    <thead>
	                        <tr>
	                            <th>Cliente</th>
	                            <th>Telefone</th>	                            
	                            <th>Valor à Pagar</th>	                            
	                        </tr>
	                    </thead>

	                    <tbody>
					<?php $_from = $this->_tpl_vars['lista']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
	                        <tr class="odd gradeX">
	                            <td><?php echo $this->_tpl_vars['item']['nome']; ?>
</td>
	                            <td class="text-center"><?php echo $this->_tpl_vars['item']['telefone']; ?>
</td>                                                   
	                            <td class="text-center">R$ <?php echo ((is_array($_tmp=$this->_tpl_vars['item']['valor'])) ? $this->_run_mod_handler('number_format', true, $_tmp, 2, ",", ".") : number_format($_tmp, 2, ",", ".")); ?>
</td>	                                                   
	                        </tr>	                        
	                     <?php endforeach; endif; unset($_from); ?>   
	                        
	                    </tbody>
	                </table>
	            </div>
	            
	        </div>
	        <!-- /.panel-body -->
	    </div>
	    <!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
        
</div>