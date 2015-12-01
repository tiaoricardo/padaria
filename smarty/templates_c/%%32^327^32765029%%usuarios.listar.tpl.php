<?php /* Smarty version 2.6.12, created on 2015-11-21 18:57:23
         compiled from app/usuarios.listar.tpl */ ?>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Usuários</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
    
    <div class="col-lg-12">
	    <div class="panel panel-default">
	        <div class="panel-heading">
	            Listagem de Usuários
	        </div>
	        <!-- /.panel-heading -->
	        <div class="panel-body">
	            <div class="dataTable_wrapper">
	                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
	                    <thead>
	                        <tr>
	                            <th>Código</th>
	                            <th>Nome do Usuário</th>
	                            <th>Login</th>
	                            
	                        </tr>
	                    </thead>

	                    <tbody>
					<?php $_from = $this->_tpl_vars['lista']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
	                        <tr class="odd gradeX">
	                            <td class="text-center"><?php echo $this->_tpl_vars['item']['id_usuario']; ?>
</td>
	                            <td class="text-center"><?php echo $this->_tpl_vars['item']['nome']; ?>
</td>                            
	                            <td class="text-center"><?php echo $this->_tpl_vars['item']['login']; ?>
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