<?php

require_once "classes/model/DB.class.php";

class Cliente extends DB {

	var $table = "clientes";
	var $fields = "id_cliente, nome, telefone";
	
	public function getFiados() {
	
		return $this->execSQL("select nome, telefone, sum(valor) valor from clientes c inner join vendas v on (c.id_cliente = v.id_cliente) 
									where data_pagamento is null group by c.id_cliente order by nome");
		
			
	}
	
}

?>