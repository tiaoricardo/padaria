<?php

require_once "classes/model/DB.class.php";

class Venda extends DB {
	
	var $table = "vendas";
	var $fields = "id_venda,  id_cliente, id_produto, valor, data_venda, data_pagamento";
	
	public function getVendas() {
								
		return $this->execSQL("select nome, valor, data_venda, data_pagamento from vendas v inner join clientes c on (v.id_cliente = c.id_cliente) 
									where id_venda > 0 " . $this->getFiltro() . " order by data_venda desc");
			
	}
	
	public function getFiltro() {
		
		switch ($_GET["period"]) {
			case "today":
				$d = date("d");
				$m = date("m");
				$y = date("Y");
				$criterio = " and day(data_venda) = $d and month(data_venda) = $m and year(data_venda) = $y";
				break;    
			case "yesterday":
				
				$tempo = time() - (60*60*24);
				$d = date("d",$tempo);
				$m = date("m",$tempo);
				$y = date("Y",$tempo);
				$criterio = " and day(data_venda) = $d and month(data_venda) = $m and year(data_venda) = $y";
				
				break; 
			case "week":
			
				$tempo = time() - (60*60*24*7);
				$data = date("Y-m-d",$tempo);
				$criterio = " and data_venda >= '$data' ";
				
				break; 
			case "month":
				
				$tempo = time() - (60*60*24*30);
				$data = date("Y-m-d",$tempo);
				$criterio = " and data_venda >= '$data' ";
				
				
				break; 
				
			default:    
		}
		
		return $criterio;
	
	}
	
	public function getTotais() {
		
		$totais = array();
		
		$criterio = $this->getFiltro();
		
		$totais["recebido"] = $this->getOne("select sum(valor) as valor from vendas where data_pagamento is not null $criterio","valor");		
		$totais["fiado"] = $this->getOne("select sum(valor) as valor from vendas where data_pagamento is null $criterio","valor");		
		$totais["total"] = $totais["recebido"] + $totais["fiado"];
		
		return $totais;
	
	}

}

?>