<?php /* Smarty version 2.6.12, created on 2015-11-19 08:31:52
         compiled from menu.tpl */ ?>
<div class="navbar-default sidebar" role="navigation">
	 <div class="sidebar-nav navbar-collapse">
		<ul class="nav" id="side-menu">
		    <li class="sidebar-search">
			   <div class="input-group custom-search-form">
				  <input type="text" class="form-control" placeholder="Localizar...">
				  <span class="input-group-btn">
				  <button class="btn btn-default" type="button">
					 <i class="fa fa-search"></i>
				  </button>
			   </span>
			   </div>
			   <!-- /input-group -->
		    </li>
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
		   
		</ul>
	 </div>
	 <!-- /.sidebar-collapse -->
  </div>
  <!-- /.navbar-static-side -->