<?php /* Smarty version 2.6.12, created on 2015-11-21 00:05:51
         compiled from app/admins.form.tpl */ ?>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Administração</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">

    <div class="col-lg-12">

<div class="panel panel-default">
    <div class="panel-heading">
        Cadastro de Administrador
    </div>
    <div class="panel-body">

        <div class="row">
            <div class="col-lg-4">
                <form role="form" action="index.php?p=admins&acao=create" method="post">
                   
                    <div class="form-group">
                        <label>Nome do Administrador</label>
                        <input class="form-control" name="nome_admin" placeholder="Informe o Nome do Cliente" />
                        <p class="help-block small">Ex.: José da Silva Alencar.</p>
                    </div>
			         
                     <div class="form-group">
                        <label>Telefone do Administrador</label>
                        <input class="form-control input-small" name="telefone" placeholder="(99) 98888-7777" />
                    </div>

                    <div class="form-group">
                        <label>Usuário</label>
                        <input class="form-control input-small" name="usuario" placeholder="Informe o Usuário" />
                    </div>

                    <div class="form-group">
                        <label>Senha</label>
                        <input class="form-control input-small" type="password" name="senha" placeholder="Senha" />
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