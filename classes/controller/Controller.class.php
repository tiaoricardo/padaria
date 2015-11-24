<?php

require_once "classes/model/Usuarios.class.php";
require_once "classes/model/Clientes.class.php";
require_once "classes/model/Produtos.class.php";
require_once "classes/model/Vendas.class.php";

class Controller {

	var $view;
	
	public function __construct(&$view) {
		
		$this->view = $view;
			
	}
	
	public function controllerInit() {
	
		$cliente = new Cliente();
		$produto = new Produto();
				
		$this->view->assign("clientes",$cliente->get());
		$this->view->assign("produtos",$produto->get());
		
		$this->view->setContent("app/dashboard");
	
	}

	public function controllerUsuarios() {
		
		if ($_GET["acao"] == "") {

			$this->listarUsuarios();

		}
		
		if ($_GET["acao"] == "create") {

			if ($_POST) {
				
				$this->saveUsuario();
			
			}
		
			$this->view->setContent("app/usuarios.form");

		}
	
	}
	
	public function controllerClientes() {
		
		if ($_GET["acao"] == "") {

			$this->listarClientes();

		}
		
		if ($_GET["acao"] == "create") {

			if ($_POST) {
				
				$this->saveCliente();
			
			}
		
			$this->view->setContent("app/clientes.form");

		}
	
	}
	
	public function controllerProdutos() {
		
		if ($_GET["acao"] == "") {

			$this->listarProdutos();

		}
		
		if ($_GET["acao"] == "create") {

			if ($_POST) {
				
				$this->saveProduto();
			
			}
		
			$this->view->setContent("app/produtos.form");

		}
	
	}
	
	public function controllerVendas() {
				
		if ($_GET["acao"] == "register") {

			if ($_POST) {
				
				$this->saveVenda();
							
			}
			
		}
		
	}
	
	public function saveVenda() {
		
		$venda = new Venda();
		
		$valor =  self::toMoney($_POST["valor"]);
		
		if ($valor > 0) {
				
			$dados["id_cliente"] = $_POST["id_cliente"];
			$dados["id_produto"] = $_POST["id_produto"];
			$dados["valor"] = $valor;
			$dados["data_venda"] = date("Y-m-d H:i:s");
			
			if ($_POST["fiado"] == "sim") {
				$dados["data_pagamento"] = null;
			} else {
				$dados["data_pagamento"] = date("Y-m-d H:i:s");
			}
			
			if ($venda->save($dados)) {
				
				$_SESSION["success"] = true;
						
			}
		
		} else {
			
			$_SESSION["error"] = "Por favor, informe um valor <strong>diferente de zero (R$ 0,00)</strong> para registrar uma venda!";
		
		}
		
		$this->redirect("index.php");
	
	}
	
	public function isLogged() {
		
		if ($_SESSION["sess_id"]) {
			
			return true;
		
		}
		
		return false;
	
	}
	
	public function login() {
		
		if ($_POST) {
		
			$login = $_POST["login"];
			$senha = $this->encrypt($_POST["senha"]);
			
			$usuario = new Usuario();
						
			if ($usuario->autenticar($login, $senha)) {
				
				$credentials = $usuario->getCredentials();
				
				$_SESSION["sess_id"] = $credentials["id_usuario"];
				$_SESSION["sess_nome"] = $credentials["nome"];
				$_SESSION["sess_login"] = $credentials["login"];
				
				$this->redirect("index.php");
			
			} else {
				
				$this->redirect("index.php?error=1");
			
			}
	
		}
		
		$this->view->display("main/login.tpl");
	
	}
	
	public function logout() {
		
		unset($_SESSION);
		session_destroy();
		
		$this->redirect("index.php");
	
	}
	
	public function controllerRelatorios() {
		
		
		if ($_GET["acao"] == "fiados") {

			$cliente = new Cliente();

			$this->view->assign("lista",$cliente->getFiados());
			
			$this->view->setContent("app/relatorios.fiados");

		}
		
		if ($_GET["acao"] == "vendas") {
		
			$venda = new Venda();
			
			$this->view->assign("totais",$venda->getTotais());
			$this->view->assign("lista",$venda->getVendas());
			
			$this->view->setContent("app/relatorios.vendas");

		}
	
	}
	
	public function saveCliente() {
		
		$cliente = new Cliente();
		
		if ($cliente->save($_POST)) {
			
			$this->redirect("index.php?p=clientes");
		
		}
	
	}

	 function encrypt($pwd){
	 	$keyworld = "P4D4R14";
	 	$hash = md5($keyworld);
		return md5($hash.$pwd.$hash);

	}

	public function saveUsuario() {
		
		if ($_POST) {

		$_POST["senha"] = $this->encrypt($_POST["senha"]);

		$login = new Usuario();

		if ($login->save($_POST)) {
				
			$this->redirect("index.php?p=usuarios");
		
		}
	
	}

}
	
	public function saveProduto() {
		
		$produto = new Produto();
		
		if ($produto->save($_POST)) {
			
			$this->redirect("index.php?p=produtos");
		
		}
	
	}
	
	public function listarClientes() {
		
		$cliente = new Cliente();

		$lista = $cliente->get();
		
		$this->view->assign("lista",$lista);
		
		$this->view->setContent("app/clientes.listar");
	
	}

	public function listarUsuarios() {
		
		$login = new Usuario();

		$lista = $login->get();
		
		$this->view->assign("lista",$lista);
		
		$this->view->setContent("app/usuarios.listar");
	
	}
	
	public function listarProdutos() {
		
		$produto = new Produto();

		$lista = $produto->get();
		
		$this->view->assign("lista",$lista);
		
		$this->view->setContent("app/produtos.listar");
	
	}

	public function redirect($url) {

		header("location: $url");exit;

	}
	
	public static function toMoney($p) {
		$p = str_replace("R$","",$p);
		$p = str_replace(" ","",$p);
		$p = str_replace(".","",$p);
		$p = str_replace(",","",$p);
		$p = (int)$p;
		return round($p/100,2);
	}

}


?>