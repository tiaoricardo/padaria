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
                        <div class="lead">R$ {$totais.recebido|number_format:2:",":"."}</div>
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
                        <div class="lead">R$ {$totais.fiado|number_format:2:",":"."}</div>
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
                        <div class="lead"> R$ {$totais.total|number_format:2:",":"."}</div>
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

    <li{if $smarty.get.period == "calendar"} class="active"{/if}>
       <input type="button" class="btn btn-default" id="exemplo" value="Calendário">
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
					{foreach from = $lista item = item}
	                        <tr class="odd gradeX">
	                            <td>{$item.nome}</td>
	                            <td class="text-center">{$item.data_venda|date_format:"%d/%m/%Y %Hh%M"}</td>	                                                   
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

