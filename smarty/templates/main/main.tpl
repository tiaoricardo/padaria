<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>{$smarty.const.APP_NAME}</title>

    <!-- Bootstrap Core CSS -->
    <link href="assets/plugins/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="assets/plugins/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="assets/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="assets/css/sb-admin-2.css" rel="stylesheet">

    <!-- Datepicker -->
    <link href="assets/css/bootstrap-datepicker.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="assets/plugins/morrisjs/morris.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="assets/plugins/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <!-- Select2 -->
    <link href="assets/plugins/select2/select2.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">{$smarty.const.APP_NAME}</a>
            </div>
          
            {include file="includes/notifications.tpl"}
		  
            {include file="includes/menu.tpl"}
		  
	    </nav>

        <div id="page-wrapper">
            
			{$content}
			
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="assets/plugins/jquery/dist/jquery.min.js"></script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
         <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="assets/plugins/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="assets/plugins/metisMenu/dist/metisMenu.min.js"></script>

   <!-- Select2 -->
    <script src="assets/plugins/select2/select2.min.js"></script>

     <!-- DataTables JavaScript -->
    <script src="assets/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="assets/plugins/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
    
    <!-- Input MaskMoney -->
    <script src="assets/plugins/inputmask/jquery.maskMoney.js"></script>

    <!-- Datepicker -->
      <script src="assets/plugins/js/bootstrap-datepicker.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="assets/plugins/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    {literal}
    <script>
    
    
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
	   
	   
	   
	   $("select").select2({formatNoMatches:"Nenhum item encontrado!"});	
	   
	   $(".big-field").maskMoney({showSymbol:true, symbol:"R$ ",decimal:",",thousands:"."});
	   
	   $('html').keydown(function(e){
		
		  if (e.which == 114) {
			$('#id_produto').select2('close');
			$('#id_cliente').select2('open');
			 e.preventDefault();   
		  } else if  (e.which == 115) {
			$('#id_cliente').select2('close');
			$('#id_produto').select2('open');
			 e.preventDefault();   
		 } else if  (e.which == 117) {
			
			$('#fiado').click();
					
			 e.preventDefault();   
			
		  } else if  (e.which == 113) {
			
			$('#id_produto, #id_cliente').select2('close');
			$("#valor").focus();
			
			 e.preventDefault();   
		  
		  }
		  
		 
		  
	    });  
	    
	    $('.select2-input').on("keydown", function(e) {
            if (e.keyCode == 13) {
                $("#valor").focus();                
                e.preventDefault();   
                }
       });
	   
    });
    
    function anotar() {
    
		if ($('#fiado:checked').size() > 0) {				
			$("#valor").css({"background":"yellow"});				
		} else {
			$("#valor").css({"background":"white"});
		}		
    
	}
    
    </script>
    {/literal}

    {literal}
         <script>
      $(document).ready(function () {
        $('#exemplo').datepicker({
            format: "dd/mm/yyyy",
            language: "pt-BR"
        });
      });
    </script>
{/literal}

</body>

</html>