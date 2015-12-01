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
		        <div class="panel panel-{if $saldo > 0}success{elseif $saldo == 0}warning{else}danger{/if}">
		            <div class="panel-heading">
		                <div class="row">
		                    <div class="col-xs-3">
		                        <i class="fa fa-money fa-5x"></i>
		                    </div>
		                    <div class="col-xs-9 text-right">
		                        <div class="lead">{if $saldo < 0}-{/if}R$ {$saldo|abs|number_format:2:",":"."}</div>
		                        <div>Saldo em {$smarty.now|date_format:"%d/%m/%Y"}</div>
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
					{foreach from = $lista item = item}
	                        <tr class="odd gradeX">
	                            <td>{$item.descricao}</td>
	                            <td class="text-center" data-order="{$item.data_mov}">{$item.data_mov|date_format:"%d/%m/%Y às %Hh%M"}</td>	                                                   
	                                                                               
	                            <td class="text-center">
						   
							{if $item.valor > 0}
								<h4 class="no-margins"><span class="label label-success">R$ {$item.valor|number_format:2:",":"."}</span></h4>
							{elseif $item.valor == 0}
								-
							{else}
								<h4 class="no-margins"><span class="label label-danger">R$ {$item.valor|abs|number_format:2:",":"."}</span></h4>
							{/if}
						   						
							</td>	                                                   
	                            <td class="text-center">
							
							{if $item.saldo != 0}
								<strong>R$ {$item.saldo|number_format:2:",":"."}</strong>
							{else}
							-
							{/if}
							</td>	                                                   
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

