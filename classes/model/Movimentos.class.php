<?php

require_once "classes/model/DB.class.php";

class Movimento extends DB {
	
	var $table = "movimentos";
	var $fields = "id_mov,  descricao, data_mov, valor, saldo";
	
	public function getMovimentos() {
	
		return $this->execSQL("select * from movimentos order by data_mov desc");
		
			
	}	
	
	public function getSaldoHoje() {
		
		$d = date("d");
		$m = date("m");
		$y = date("Y");
		
		return $this->getOne("select sum(valor) as total from movimentos where day(data_mov) = $d and month(data_mov) = $m and year(data_mov) = $y ","total");
	
	}
	
}

?>