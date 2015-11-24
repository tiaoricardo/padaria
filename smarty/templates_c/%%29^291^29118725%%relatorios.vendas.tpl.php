<?php /* Smarty version 2.6.12, created on 2015-11-24 17:53:28
         compiled from app/relatorios.vendas.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'number_format', 'app/relatorios.vendas.tpl', 30, false),array('modifier', 'date_format', 'app/relatorios.vendas.tpl', 158, false),)), $this); ?>
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
           Totalizações
        </div>
       
        </br>
        <!-- /.panel-heading -->
 		
<div class="row">
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-money fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="lead">R$ <?php echo ((is_array($_tmp=$this->_tpl_vars['totais']['recebido'])) ? $this->_run_mod_handler('number_format', true, $_tmp, 2, ",", ".") : number_format($_tmp, 2, ",", ".")); ?>
</div>
                        <div>Valor Recebido:</div>
                    </div>
                </div>
            </div>
            <a href="#">
                <div class="panel-footer">
                    <span class="pull-left">Mais Detalhes</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-shopping-cart fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="lead">R$ <?php echo ((is_array($_tmp=$this->_tpl_vars['totais']['fiado'])) ? $this->_run_mod_handler('number_format', true, $_tmp, 2, ",", ".") : number_format($_tmp, 2, ",", ".")); ?>
</div>
                        <div>Valor à Receber:</div>
                    </div>
                </div>
            </div>
            <a href="#">
                <div class="panel-footer">
                    <span class="pull-left">Mais Detalhes</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="panel panel-red">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-xs-3">
                        <i class="fa fa-usd fa-5x"></i>
                    </div>
                    <div class="col-xs-9 text-right">
                        <div class="lead"> R$ <?php echo ((is_array($_tmp=$this->_tpl_vars['totais']['total'])) ? $this->_run_mod_handler('number_format', true, $_tmp, 2, ",", ".") : number_format($_tmp, 2, ",", ".")); ?>
</div>
                        <div>Total Geral:</div>
                    </div>
                </div>
            </div>
            <a href="#">
                <div class="panel-footer">
                    <span class="pull-left">Mais Detalhes</span>
                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                    <div class="clearfix"></div>
                </div>
            </a>
        </div>
    </div>
</div>							
</div>	
	
<div class="panel panel-default">
<div class="panel-heading">
   Filtros do Relatório
</div>
<!-- /.panel-heading -->
<div class="panel-body">
    <!-- Nav tabs -->
    <ul class="nav nav-pills pills-primay">
    
    <li<?php if ($_GET['period'] == ""): ?> class="active"<?php endif; ?>>
        <a href="index.php?p=relatorios&acao=vendas">Todas</a>
    </li>

    <li<?php if ($_GET['period'] == 'today'): ?> class="active"<?php endif; ?>>
        <a href="index.php?p=relatorios&acao=vendas&period=today">Hoje</a>    
    </li>

    <li<?php if ($_GET['period'] == 'yesterday'): ?> class="active"<?php endif; ?>>
        <a href="index.php?p=relatorios&acao=vendas&period=yesterday">Ontem</a>
    </li>
    
    <li<?php if ($_GET['period'] == 'week'): ?> class="active"<?php endif; ?>>
        <a href="index.php?p=relatorios&acao=vendas&period=week">7 dias</a> 
    </li>

    <li<?php if ($_GET['period'] == 'month'): ?> class="active"<?php endif; ?>>
        <a href="index.php?p=relatorios&acao=vendas&period=month">30 dias</a> 
    </li>

    <li<?php if ($_GET['period'] == 'calendar'): ?> class="active"<?php endif; ?>>
       <input type="button" class="btn btn-default" id="exemplo" value="Calendário">
    </li>

    <?php echo '
    <script>
function test(el) {
  var $lnk = document.getElementById("lnk-city");
  $lnk.href = $lnk.href.replace(/cidade=(.*)/, \'cidade=\') + el.value;
}
</script>
    '; ?>


    </ul>
</div>								
</div>	
    
	    <div class="panel panel-default">
	        <div class="panel-heading">
	            Vendas por Período
	        </div>
	        <!-- /.panel-heading -->
	        <div class="panel-body">
	            <div class="dataTable_wrapper">
	                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
	                    <thead>
	                        <tr>
	                            <th>Cliente</th>
	                            <th>Data Compra</th>	                            
	                            <th>Valor</th>	                            
	                            <th>Situação</th>	                            
	                        </tr>
	                    </thead>

	                    <tbody>
					<?php $_from = $this->_tpl_vars['lista']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
	                        <tr class="odd gradeX">
	                            <td><?php echo $this->_tpl_vars['item']['nome']; ?>
</td>
	                            <td class="text-center"><?php echo ((is_array($_tmp=$this->_tpl_vars['item']['data_venda'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%d/%m/%Y %Hh%M") : smarty_modifier_date_format($_tmp, "%d/%m/%Y %Hh%M")); ?>
</td>	                                                   
	                            <td class="text-center">R$ <?php echo ((is_array($_tmp=$this->_tpl_vars['item']['valor'])) ? $this->_run_mod_handler('number_format', true, $_tmp, 2, ",", ".") : number_format($_tmp, 2, ",", ".")); ?>
</td>	                                                   
	                            <td class="text-center">
							
							<?php if ($this->_tpl_vars['item']['data_pagamento'] != ""): ?>
								<span class="label label-success">PAGO</span>
							<?php else: ?>
								<span class="label label-danger">À PAGAR</span>
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
