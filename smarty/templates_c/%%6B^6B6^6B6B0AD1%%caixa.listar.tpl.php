<?php /* Smarty version 2.6.12, created on 2015-12-01 11:40:03
         compiled from app/caixa.listar.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'abs', 'app/caixa.listar.tpl', 28, false),array('modifier', 'number_format', 'app/caixa.listar.tpl', 28, false),array('modifier', 'date_format', 'app/caixa.listar.tpl', 29, false),)), $this); ?>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Fluxo de Caixa</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>

<div class="row">

	
    <div class="col-lg-12">
    
    <div class="panel panel-default">
        <div class="panel-heading">
           <h4>Saldo de Hoje</h4>
        </div>        
        <!-- /.panel-heading -->
 		<div class="panel-body">
		<div class="row">
		    <div class="col-lg-4 col-md-6">
		        <div class="panel panel-<?php if ($this->_tpl_vars['saldo'] > 0): ?>success<?php elseif ($this->_tpl_vars['saldo'] == 0): ?>warning<?php else: ?>danger<?php endif; ?>">
		            <div class="panel-heading">
		                <div class="row">
		                    <div class="col-xs-3">
		                        <i class="fa fa-money fa-5x"></i>
		                    </div>
		                    <div class="col-xs-9 text-right">
		                        <div class="lead"><?php if ($this->_tpl_vars['saldo'] < 0): ?>-<?php endif; ?>R$ <?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['saldo'])) ? $this->_run_mod_handler('abs', true, $_tmp) : abs($_tmp)))) ? $this->_run_mod_handler('number_format', true, $_tmp, 2, ",", ".") : number_format($_tmp, 2, ",", ".")); ?>
</div>
		                        <div>Saldo em <?php echo ((is_array($_tmp=time())) ? $this->_run_mod_handler('date_format', true, $_tmp, "%d/%m/%Y") : smarty_modifier_date_format($_tmp, "%d/%m/%Y")); ?>
</div>
		                    </div>
		                </div>
		            </div>
		          
		        </div>
		    </div>
		    
		</div>							
	</div>	
</div>	

    
	    <div class="panel panel-default">
	        <div class="panel-heading">
	          <h4>Movimentos do Caixa</h4>
	        </div>
	        <!-- /.panel-heading -->
	        <div class="panel-body">
	            <div class="dataTable_wrapper">
	                <table class="table table-striped table-bordered table-hover" id="dataTables-example" data-order="[[ 1, &quot;desc&quot; ]]">
	                    <thead>
	                        <tr>
	                            <th>Descrição</th>
	                            <th>Data Operação</th>	                            	                                                 
	                            <th>Valor</th>	                            
	                            <th>Saldo</th>	                            
	                        </tr>
	                    </thead>

	                    <tbody>
					<?php $_from = $this->_tpl_vars['lista']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
	                        <tr class="odd gradeX">
	                            <td><?php echo $this->_tpl_vars['item']['descricao']; ?>
</td>
	                            <td class="text-center" data-order="<?php echo $this->_tpl_vars['item']['data_mov']; ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['item']['data_mov'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%d/%m/%Y às %Hh%M") : smarty_modifier_date_format($_tmp, "%d/%m/%Y às %Hh%M")); ?>
</td>	                                                   
	                                                                               
	                            <td class="text-center">
						   
							<?php if ($this->_tpl_vars['item']['valor'] > 0): ?>
								<h4 class="no-margins"><span class="label label-success">R$ <?php echo ((is_array($_tmp=$this->_tpl_vars['item']['valor'])) ? $this->_run_mod_handler('number_format', true, $_tmp, 2, ",", ".") : number_format($_tmp, 2, ",", ".")); ?>
</span></h4>
							<?php elseif ($this->_tpl_vars['item']['valor'] == 0): ?>
								-
							<?php else: ?>
								<h4 class="no-margins"><span class="label label-danger">R$ <?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['item']['valor'])) ? $this->_run_mod_handler('abs', true, $_tmp) : abs($_tmp)))) ? $this->_run_mod_handler('number_format', true, $_tmp, 2, ",", ".") : number_format($_tmp, 2, ",", ".")); ?>
</span></h4>
							<?php endif; ?>
						   						
							</td>	                                                   
	                            <td class="text-center">
							
							<?php if ($this->_tpl_vars['item']['saldo'] != 0): ?>
								<strong>R$ <?php echo ((is_array($_tmp=$this->_tpl_vars['item']['saldo'])) ? $this->_run_mod_handler('number_format', true, $_tmp, 2, ",", ".") : number_format($_tmp, 2, ",", ".")); ?>
</strong>
							<?php else: ?>
							-
							<?php endif; ?>
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
