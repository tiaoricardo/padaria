<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Produtos</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">

    <div class="col-lg-12">

        <div class="panel panel-default">
            <div class="panel-heading">
                Cadastro de Produtos
            </div>
            <div class="panel-body">

                <div class="row">
                    <div class="col-lg-4">
                        <form role="form" action="index.php?p=produtos&acao=create" method="post">
                            <div class="form-group">
                                <label>Descrição do Produto</label>
                                <input class="form-control" name="descricao" placeholder="Informe uma descrição para o produto" />
                                <p class="help-block small">Ex.: Pão de Forma Caseiro.</p>
                            </div>
					   
                            <div class="form-group pull-right">

                                <input type="reset" class="btn btn-info" value="Limpar" />
                                <input type="submit" class="btn btn-success" value="Salvar" />
                            </div>
                           
                        </form>
                    </div>
                </div>

            </div>
        </div>

    </div>
   
    
</div>