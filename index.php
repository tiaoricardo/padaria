<?php

session_start();

require_once "config/config.php";
require_once "classes/view/View.class.php";
require_once "classes/controller/Controller.class.php";

$view = new View();
$app = new Controller($view);

define("PAGE",$_GET["p"]);

if (PAGE == "logout") {
	
	$app->logout();

}

if ($app->isLogged()) {

	switch (PAGE) {
		case "usuarios":
			$app->controllerUsuarios();
			break;
		case "clientes":
			$app->controllerClientes();
			break;    
		case "produtos":
			$app->controllerProdutos();
			break; 
		case "vendas":
			$app->controllerVendas();
			break; 
		case "caixa":
			$app->controllerCaixa();
			break; 
		case "relatorios":
			$app->controllerRelatorios();
			break; 
			
		default: $app->controllerInit();	   
	}

	$view->show();

} else {

	$app->login();
	
}

unset($_SESSION["success"]);
unset($_SESSION["error"]);

?>