<?php

require_once "classes/model/DB.class.php";

class Salves extends DB {

	$id_usuario = $_POST["id_usuario"];
	$nome = $_POST["nome"];
	$login = $_POST["login"];
	$senha = $this->encrypt($_POST["senha"]);

	$sql = "insert into usuarios values
		 (null,'$nome','$login','$senha')";


	function geraPalavaAleatoria($palavra = 20){
		return substr(sha1(mt_rand()), 0, $palavra);

	}
	

	 function encrypt($pwd){
	 	
	 	$salt = geraPalavaAleatoria();

		return md5($salt.$pwd.$salt);

	}
}

?>