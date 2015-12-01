<?php /* Smarty version 2.6.12, created on 2015-12-01 11:31:42
         compiled from includes/menu.tpl */ ?>
<div class="navbar-default sidebar" role="navigation">
	 <div class="sidebar-nav navbar-collapse">
		<ul class="nav" id="side-menu">
		    <li>
			   <a href="index.php"><i class="fa fa-dashboard fa-fw"></i> Painel Inicial</a>
		    </li>
							   
		  
		    <li>
			   <a href="#"><i class="fa fa-users fa-fw"></i> Clientes<span class="fa arrow"></span></a>
			   <ul class="nav nav-second-level">
				  <li>
					 <a href="index.php?p=clientes">Visualizar</a>
				  </li>
				  <li>
					 <a href="index.php?p=clientes&acao=create">Cadastrar</a>
				  </li>                                
			   </ul>
			   <!-- /.nav-second-level -->
		    </li>
		    <li>
			   <a href="#"><i class="fa fa-shopping-cart fa-fw"></i> Produtos<span class="fa arrow"></span></a>
			   <ul class="nav nav-second-level">
				 <li>
					 <a href="index.php?p=produtos">Listar</a>
				  </li>
				  <li>
					 <a href="index.php?p=produtos&acao=create">Cadastrar</a>
				  </li>  
				  
			   </ul>
			   <!-- /.nav-second-level -->
		    </li>
		    
		      <li>
			   <a href="#"><i class="fa fa-book fa-fw"></i> Fluxo de Caixa <span class="fa arrow"></span></a>
			   <ul class="nav nav-second-level">
				  <li>
					 <a href="index.php?p=caixa&acao=create">Cadastrar</a>
				  </li>                                
				  <li>
					 <a href="index.php?p=caixa">Visualizar</a>
				  </li>
			   </ul>
			   <!-- /.nav-second-level -->
		    </li>
		    
		      <li>
			   <a href="#"><i class="fa fa-user-md fa-fw"></i> Usuários <span class="fa arrow"></span></a>
			   <ul class="nav nav-second-level">
				  <li>
					 <a href="index.php?p=usuarios&acao=create">Cadastrar</a>
				  </li>                                
				  <li>
					 <a href="index.php?p=usuarios">Visualizar</a>
				  </li>
			   </ul>
			   <!-- /.nav-second-level -->
		    </li>
		    
		      <li>
			   <a href="#"><i class="fa fa-file-text-o  fa-fw"></i> Relatórios<span class="fa arrow"></span></a>
			   <ul class="nav nav-second-level">
				<li>
					 <a href="index.php?p=relatorios&acao=vendas">Vendas por Período</a>
				  </li>
				 <li>
					 <a href="index.php?p=relatorios&acao=fiados">Clientes à Pagar</a>
				  </li>
				 				  
			   </ul>
			   <!-- /.nav-second-level -->
		    </li>
		   
		</ul>
	 </div>
	 <!-- /.sidebar-collapse -->
  </div>
  <!-- /.navbar-static-side -->