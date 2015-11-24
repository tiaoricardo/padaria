<?php

class DB {
	
	var $con;	
	var $result;
	
	public function __construct() {
		
		$this->con = new Mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
	
	}
	
	public function get() {
		
		return $this->execSQL("select * from {$this->table}");
		
	}
	
	public function getOne($sql, $field = null) {
		
		$this->result = $this->con->query($sql);	
		
		$row = $this->result->fetch_assoc();
		
		if (!is_null($field)) {
			return $row[$field];
		}
		
		return $row;
		
	}
	
	public function execSQL($sql) {
		
		$this->result = $this->con->query($sql);
		
		$itens = array();
		
		while($item = $this->result->fetch_assoc()) {
		
			$itens[] = $item;
		}
	
		return $itens;
	
	}
	
	public function save($dados) {
		
		$fields = explode(",",$this->fields);
				
		$insert = array();
		
		foreach($fields as $key=>$field) {
			
			$f = trim($field);	
			
			if (is_null($dados[$f])) {
				$dados[$f] = "null";
			} else {
				$dados[$f] = "'{$dados[$f]}'";
			}
			
			$insert[$f] = $dados[$f];		
		
		}
		
		
		
		$values = implode(", ", $insert);
			
		$sql = "insert into {$this->table} ({$this->fields}) values ($values)";
		
		return $this->con->query($sql);		
	
	}
	
}


?>