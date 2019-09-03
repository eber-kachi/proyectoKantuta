<?php 
	//require_once('Conexion.php');
	require_once('..ProyectoKantuta/..Models/Empleado.php');
	require_once('BuscadorEmpleado.php');
	$objetoBuscadorEmpleado = new BuscadorEmpleado();
	$listaDeEmpleado = array();
	$listaDeEmpleado = $objetoBuscadorEmpleado->listaDeEmpleado();
 ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<title>Usuario</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/estilo.css">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
</head>
<body>
	
	<?php 
	require_once('headerAdmin.php');
	 ?>
	<center class="centro">
		<h1>Lista de Empleado</h1>
		<p>
		<div class="table-responsive container">
		<table class="table" border=1>
			<tr bgcolor="#3399ff">
				<th>Empleado</th>
				<th>Fecha Nacimiento</th>
				<th>Genero</th>
				<th>Numero Celular</th>
				<th>Numero Fijo</th>
				<th>Contraseña</th>
				<th>Activo</th>
			</tr>
				<?php 
					foreach ($listaDeEmpleado as $objetoEmpleado) {
				?>
				<tr>
				<td><?php echo $objetoEmpleado->getempleado();?></td>
				<td><?php echo $objetoEmpleado->getfechaNacimiento();?></td>
				<td><?php echo $objetoEmpleado->getgenero();?></td>
				<td><?php echo $objetoEmpleado->getnumeroCelular();?></td>
				<td><?php echo $objetoEmpleado->getnumeroFijo();?></td>
				<td><?php echo $objetoEmpleado->getCntrasenia();?></td>
				<td><?php echo $objetoEmpleado->getactivo();?></td>
				</tr>
				<?php 
					}
				?>
		</table>
		</div>
	</center>
</body>
</html>