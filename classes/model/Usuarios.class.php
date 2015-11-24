<?php

require_once "classes/model/DB.class.php";

 Class Usuario extends DB {

	var $table = "usuarios";
	var $fields = "id_usuario, nome, login, senha";
	var $credentials;

	public function autenticar($login, $senha) {
	
		$this->credentials = $this->execSQL("select id_usuario, nome, login from usuarios where login = '$login' and senha = '$senha'");
		
		if ($this->result->num_rows > 0) return true;
		
		return false;
				
	}
	
	public function getCredentials() {
		
		return $this->credentials[0];
	
	}
}

?>