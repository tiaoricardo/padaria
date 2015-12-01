<?php /* Smarty version 2.6.12, created on 2015-12-01 11:13:09
         compiled from app/caixa.form.tpl */ ?>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Fluxo de Caixa</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">

    <div class="col-lg-12">

        <div class="panel panel-default">
            <div class="panel-heading">
                <h4>Movimento do Caixa</h4>
            </div>
            <div class="panel-body">

                <div class="row">
                    <div class="col-lg-6">
					
					<ul class="nav nav-pills red">
						  <li id="out" class="active"><a href="#saida" data-toggle="tab">Saída</a></li>						  
						  <li id="in"><a href="#entrada" data-toggle="tab">Entrada</a></li>
					   </ul>
					  
					<br />	
					   
					<div class="tab-content">				    
					    <div class="tab-pane fade in active alert alert-danger" id="saida">
		                        <form role="form" action="index.php?p=caixa&acao=create" method="post">
		                            <div class="form-group">
		                                <label>Descrição da Saída</label>
		                                <input class="form-control" name="descricao" placeholder="Informe uma descrição para esta movimentação" />
		                                <p class="help-block small">Ex.: Pagamento de Funcionário ou Compra de Queijo.</p>
		                            </div>
							   
							    <div class="form-group">
		                                <label>Valor da Saída</label>
		                                <input class="form-control input-lg big-field" id="valor_out" name="valor" placeholder="R$ 0,00" />		                                
		                            </div>
							   
		                            <div class="form-group pull-right">
								   <input type="hidden" name="tipo" value="saida" />
		                                <input type="reset" class="btn btn-info" value="Limpar" />
		                                <input type="submit" class="btn btn-success" value="Salvar" />
		                            </div>
		                           
							  <br clear="all" />
		                        </form>
					    </div>
					    
					    <div class="tab-pane fade alert alert-success" id="entrada">
		                        <form role="form" action="index.php?p=caixa&acao=create" method="post">
		                            <div class="form-group">
		                                <label>Descrição da Entrada</label>
		                                <input class="form-control" name="descricao" placeholder="Informe uma descrição para esta movimentação" />
		                                <p class="help-block small">Ex.: Recebimentos Diversos.</p>
		                            </div>
							   
							   <div class="form-group">
		                                <label>Valor da Entrada</label>
		                                <input class="form-control input-lg big-field" id="valor_in" name="valor" placeholder="R$ 0,00" />		                                
		                            </div>
							   
		                            <div class="form-group pull-right">

		                                <input type="hidden" name="tipo" value="entrada" />
		                                <input type="reset" class="btn btn-info" value="Limpar" />
		                                <input type="submit" class="btn btn-success" value="Salvar" />
		                            </div>
		                           
							  <br clear="all" />
							  
		                        </form>
						    
					    </div>
				    </div>
                    </div>
                </div>

            </div>
        </div>

    </div>
   
    
</div>