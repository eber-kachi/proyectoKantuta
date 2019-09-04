$(listarEmpleadoNivel());
$(document).ready(function(){
	$('#nivel').focus();
})
function listarEmpleadoNivel(nivel){
	$.ajax({
			url: 'MostrarEmpleadoAsistencia.php',
			type: 'POST',
			datatype: 'html',
			data: {nivel: nivel}
		   })
	.done(function(resultado){
		if (resultado === 'vacio') {
			$("#mensaje").html('No hay');
		} else {
			$("#mensaje").html('');
			$("#tablaEmpleados").html(resultado);
		}
	})
}//end function

$(document).on('change','#nivel',function(){
	// console.log('daniel');
	var criterioBusqueda = $(this).val();
	console.log(criterioBusqueda);
	if(criterioBusqueda!=""){
		listarEmpleadoNivel(criterioBusqueda);
	}else{
		listarEmpleadoNivel();
	}
});