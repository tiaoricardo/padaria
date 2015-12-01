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
           <h4>Totalizações</h4>
        </div>        
        <!-- /.panel-heading -->
 		<div class="panel-body">
		<div class="row">
		    <div class="col-lg-4 col-md-6">
		        <div class="panel panel-success">
		            <div class="panel-heading">
		                <div class="row">
		                    <div class="col-xs-3">
		                        <i class="fa fa-money fa-5x"></i>
		                    </div>
		                    <div class="col-xs-9 text-right">
		                        <div class="lead">R$ {$totais.recebido|number_format:2:",":"."}</div>
		                        <div>Recebido</div>
		                    </div>
		                </div>
		            </div>
		          
		        </div>
		    </div>
		    <div class="col-lg-4 col-md-6">
		        <div class="panel panel-info">
		            <div class="panel-heading">
		                <div class="row">
		                    <div class="col-xs-3">
		                        <i class="fa fa-briefcase fa-5x"></i>
		                    </div>
		                    <div class="col-xs-9 text-right">
		                        <div class="lead">R$ {$totais.fiado|number_format:2:",":"."}</div>
		                        <div>À Receber</div>
		                    </div>
		                </div>
		            </div>
		           
		        </div>
		    </div>
		    <div class="col-lg-4 col-md-6">
		        <div class="panel panel-danger">
		            <div class="panel-heading">
		                <div class="row">
		                    <div class="col-xs-3">
		                        <i class="fa fa-shopping-cart fa-5x"></i>
		                    </div>
		                    <div class="col-xs-9 text-right">
		                        <div class="lead"> R$ {$totais.total|number_format:2:",":"."}</div>
		                        <div>Total em Vendas</div>
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
  <h4>Filtros do Relatório</h4>
</div>
<!-- /.panel-heading -->
<div class="panel-body">
    <!-- Nav tabs -->
    <ul class="nav nav-pills pills-primay">
    
    <li{if $smarty.get.period == ""} class="active"{/if}>
        <a href="index.php?p=relatorios&acao=vendas">Todas</a>
    </li>

    <li{if $smarty.get.period == "today"} class="active"{/if}>
        <a href="index.php?p=relatorios&acao=vendas&period=today">Hoje</a>    
    </li>

    <li{if $smarty.get.period == "yesterday"} class="active"{/if}>
        <a href="index.php?p=relatorios&acao=vendas&period=yesterday">Ontem</a>
    </li>
    
    <li{if $smarty.get.period == "week"} class="active"{/if}>
        <a href="index.php?p=relatorios&acao=vendas&period=week">7 dias</a> 
    </li>

    <li{if $smarty.get.period == "month"} class="active"{/if}>
        <a href="index.php?p=relatorios&acao=vendas&period=month">30 dias</a> 
    </li>

    {literal}
    <script>
function test(el) {
  var $lnk = document.getElementById("lnk-city");
  $lnk.href = $lnk.href.replace(/cidade=(.*)/, 'cidade=') + el.value;
}
</script>
    {/literal}

    </ul>
</div>								
</div>	
    
	    <div class="panel panel-default">
	        <div class="panel-heading">
	          <h4>Vendas por Período</h4>
	        </div>
	        <!-- /.panel-heading -->
	        <div class="panel-body">
	            <div class="dataTable_wrapper">
	                <table class="table table-striped table-bordered table-hover" id="dataTables-example" data-order="[[ 1, &quot;desc&quot; ]]">
	                    <thead>
	                        <tr>
	                            <th>Cliente</th>
	                            <th>Data Compra</th>	                            
	                            <th>Valor</th>	                            
	                            <th>Situação</th>	                            
	                        </tr>
	                    </thead>

	                    <tbody>
					{foreach from = $lista item = item}
	                        <tr class="odd gradeX">
	                            <td>{$item.nome}</td>
	                            <td class="text-center" data-order="{$item.data_venda}">{$item.data_venda|date_format:"%d/%m/%Y às %Hh%M"}</td>	                                                   
	                            <td class="text-center">R$ {$item.valor|number_format:2:",":"."}</td>	                                                   
	                            <td class="text-center">
							
							{if $item.data_pagamento != ""}
								<span class="label label-success">PAGO</span>
							{else}
								<span class="label label-danger">À PAGAR</span>
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

