<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Lançamentos</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">

    <div class="col-lg-12">
    
		{if $smarty.session.success}
		<div class="alert alert-success alert-dismissable">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<span class="fa fa-check-circle" style="font-size:20px;line-height:100%;vertical-align:middle;"> </span> Lançamento registrado com sucesso!
		</div>	
		{/if}
		
		{if $smarty.session.error}
		<div class="alert alert-danger alert-dismissable">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<span class="fa fa-times-circle" style="font-size:20px;line-height:100%;vertical-align:middle;"> </span> {$smarty.session.error}
		</div>	
		{/if}

        <div class="panel panel-default">
            <div class="panel-heading">
                Lançamento de Vendas
            </div>
            <div class="panel-body">

                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <form role="form" action="index.php?p=vendas&acao=register" method="post" class="form-horizontal" onsubmit="return validarVenda()">
				    
					<div class="row">
					
                            <div class="form-group col-md-6 col-lg-6">
                                <label class="col-md-3 text-right">Cliente <small style="color:blue">(F3)</small>:</label>
						  <div class="col-md-9">
	                                <select id="id_cliente" name="id_cliente" class="form-control">
							{foreach from = $clientes item = item}
								<option value="{$item.id_cliente}">{$item.id_cliente} - {$item.nome}</option>
							{/foreach}
							  </select>
						  </div>
                            </div>
					   
					   <div class="form-group col-md-6 col-lg-6">
                                <label class="col-md-3 text-right">Produto <small style="color:blue">(F4)</small>: </label>
		
				  <div class="col-md-9">
	                                <select id="id_produto" name="id_produto" class="form-control">
								{foreach from = $produtos item = item}
								<option value="{$item.id_produto}">{$item.id_produto} - {$item.descricao}</option>
								{/foreach}
							  </select>
						  </div>
                            </div>
				   </div>
					<div class="row">   
					   <div class="form-group col-md-9">
                                <label class="col-md-2 text-right">Valor <small style="color:blue">(F2)</small>: </label>
						  <div class="col-md-4">
							<input type="text" id="valor" placeholder="R$ 0,00" name="valor" style="text-align:center;font-size:22px;width:150px;color:red;font-weight:bold" class="form-control input-lg" autofocus />
							<label style="font-weight:normal;">  
							  <input type="checkbox" id="fiado" onclick="anotar()" name="fiado" value="sim" /> Anotar <small style="color:blue">(F6)</small>
							</label>  
						  </div>	
						<div class="form-group col-md-3">                                
                                <input type="submit" class="btn btn-primary" value="Registrar" />
                            </div>						  
					</div>
					   
                           
                        </form>
                    </div>
                </div>

            </div>
        </div>

    </div>
   
    
</div>

 <!-- Modal -->
   <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
		 <div class="modal-content">
			<div class="modal-header">
			    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			    <h4 class="modal-title" id="myModalLabel">Entrada Inválida</h4>
			</div>
			<div class="modal-body">
			    Por favor, informe um valor <strong>diferente de zero (R$ 0,00)</strong> para registrar uma venda!
			</div>
			<div class="modal-footer">
			    <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
			 </div>
		 </div>
		 <!-- /.modal-content -->
	  </div>
	  <!-- /.modal-dialog -->
   </div>
   <!-- /.modal -->

{literal}
<script type="text/javascript">

	function validarVenda() {
	
		var v = $("#valor").val();		
		v = v.replace(".","");
		v = v.replace(",",".");	
		
		v = parseFloat(v);

		
		if (v <=0 || isNaN(v)) {
			$('#myModal').modal('show');   
		}
		
		return (v > 0);
	
	}

</script>
{/literal}