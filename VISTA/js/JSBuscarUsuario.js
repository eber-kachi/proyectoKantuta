$(listarUsuarios());

$(document).ready(function(){
	$('#buscarUsuario').focus();
})

function listarUsuarios(usuarios){
	$.ajax({
			url: 'Mostrar.php',
			type: 'POST',
			datatype: 'html',
			data: {usuarios: usuarios}
		   })
	.done(function(resultado){
		if (resultado === 'vacio') {
			$("#mensaje").html('No hay resultados con su criterio de busqueda');
		} else {
			$("#mensaje").html('');
			$("#tablaUsuarios").html(resultado);
		}
	})
}//end function

$(document).on('keyup','#buscarUsuario',function(){
	var criterioBusqueda = $(this).val();
	console.log(criterioBusqueda);
	if(criterioBusqueda!=""){
		listarUsuarios(criterioBusqueda);
	}else{
		listarUsuarios();
	}
});