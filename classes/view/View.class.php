<?php

require_once "lib/Smarty/libs/Smarty.class.php";

class View extends Smarty {

	public function __construct() {
		
		$this->template_dir = "smarty/templates/";
		$this->compile_dir = "smarty/templates_c/";
		$this->cache_dir = "smarty/cache/";
	
	}
	
	public function setContent($tpl) {
		
		$this->assign("content",$this->fetch("$tpl.tpl"));
		
	}
	
	public function show() {
		
		$this->display("main/main.tpl");
	
	}
	

}

?>