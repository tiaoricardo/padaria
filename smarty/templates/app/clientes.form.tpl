<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Clientes</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">

    <div class="col-lg-12">

        <div class="panel panel-default">
            <div class="panel-heading">
                Cadastro de Clientes
            </div>
            <div class="panel-body">

                <div class="row">
                    <div class="col-lg-4">
                        <form role="form" action="index.php?p=clientes&acao=create" method="post">
                            <div class="form-group">
                                <label>Nome do Cliente</label>
                                <input class="form-control" name="nome" placeholder="Informe o Nome do Cliente" />
                                <p class="help-block small">Ex.: José da Silva Alencar.</p>
                            </div>
					    <div class="form-group">
                                <label>Telefone do Cliente</label>
                                <input class="form-control input-small" name="telefone" placeholder="(99) 98888-7777" />
                                
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