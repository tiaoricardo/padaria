<?php

require_once "classes/model/DB.class.php";

class Produto extends DB {
	
	var $table = "produtos";
	var $fields = "id_produto, descricao";
	
}

?>