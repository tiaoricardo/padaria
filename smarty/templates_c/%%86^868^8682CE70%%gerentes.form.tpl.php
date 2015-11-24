<?php /* Smarty version 2.6.12, created on 2015-11-21 17:24:00
         compiled from app/gerentes.form.tpl */ ?>
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
                Cadastro de Usuários
            </div>
            <div class="panel-body">

    <div class="row">
        <div class="col-lg-4">
            <form role="form" action="index.php?p=gerentes&acao=create" method="post">
                <div class="form-group">
                    <label>Nome do Usuário</label>
                    <input class="form-control" name="nome" placeholder="Informe o Nome do Usuário" />
                    <p class="help-block small">Ex.: José da Silva Alencar.</p>
                </div>
                <div class="form-group">
                    <label> Login</label>
                    <input class="form-control input-small" name="usuario" placeholder="Usuário" />
                </div>
                <div class="form-group">
                    <label> Senha</label>
                    <input class="form-control input-small" name="senha" placeholder="Senha" />
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