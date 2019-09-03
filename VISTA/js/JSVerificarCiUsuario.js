$(document).ready(function(){
	$('#ci').focus();
})

function verificarCi(ciUsuario){
	$.ajax({
			url: 'LogicaRegistrarUsuario.php',
			type: 'POST',
			datatype: 'html',
			data: {ci: ciUsuario}
		   })
	.done(function(resultado){
		if (resultado === 'noexiste') {
			$("#mensajeCi").html('El ci es valido');
		} else {
			$("#mensajeCi").html('EL Ci existe');
			
		}
	})
}//end function

$(document).on('keyup','#ci',function(){
	var criterioBusqueda = $(this).val();
	//console.log(criterioBusqueda);
	if(criterioBusqueda!=""){
		verificarCi(criterioBusqueda);
	}else{
		$('#ci').focus();
	}
});