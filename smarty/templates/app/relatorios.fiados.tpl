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
					{foreach from = $lista item = item}
	                        <tr class="odd gradeX">
	                            <td>{$item.nome}</td>
	                            <td class="text-center">{$item.telefone}</td>                                                   
	                            <td class="text-center">R$ {$item.valor|number_format:2:",":"."}</td>	                                                   
	                        </tr>	                        
	                     {/foreach}   
	                        
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