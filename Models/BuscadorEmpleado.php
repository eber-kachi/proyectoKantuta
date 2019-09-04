<?php 
class BuscadorEmpleado
	{

		private $conexion;

		function __construct()
		{
			$this->conexion =  new Conexion();
        }

		public function listaEmpleado()
		{
<<<<<<< HEAD
			$sqlListaDeEstudiantes = "SELECT E.codigoUsuario,CONCAT_WS(' ',E.apellidoPaterno,E.apellidoMaterno,E.primerNombre,E.segundoNombre) nombreCompleto,
			       E.CI,E.idCargo ,C.nombre, if(C.esFlexible=true,'Flexible','No Flexible') as 'FLEXIBILIDAD'
=======
			$sqlListaDeEmpleado = "
			SELECT E.idEmpleado as 'idEmpleado', CONCAT_WS(' ',E.apellidoPaterno,E.apellidoMaterno,E.primerNombre,E.segundoNombre) as 'nombreCompleto',
                         C.idCargo, C.nombre as 'nombre', 
                   if(C.esFlexible = true,'Flexible','No Flexible') as 'Flexibilidad'
>>>>>>> 8909503424d0100d71e759c99cd0cd7a2e8f48f2
			FROM Empleado E join Cargo C
			WHERE E.idCargo = C.idCargo
			ORDER BY C.esFlexible, E.apellidoPaterno, E.apellidoMaterno, E.primerNombre, E.segundoNombre;
								";
			$cmd = $this->conexion->prepare($sqlListaDeEmpleado);
            $cmd->execute();
			$listaDeEmpleadoDeLaConsulta = $cmd->fetchAll();

			$listaEmpleado = array();
			$i = 0;

            foreach($listaDeEmpleadoDeLaConsulta as $registroEmpleado){
                    $objetoEmpleado = new Empleado();	
	            	$objetoEmpleado->setidEmpleado($registroEmpleado['idEmpleado']);	
	            	$objetoEmpleado->setnombreCompleto($registroEmpleado['nombreCompleto']);
		            $objetoEmpleado->setnombre($registroEmpleado['nombre']);	
		            $objetoEmpleado->setnombreFlexible($registroEmpleado['Flexibilidad']);
					$listaEmpleado[$i] = $objetoEmpleado;
					  $i++;
		    }

			return $listaEmpleado;
        }//end function for empleado
        public function buscarEmpleado($idEmpleado)
		{
            $sqlListaImagenes = "
            SELECT E.idEmpleado, CONCAT_WS(' ',E.apellidoPaterno,E.apellidoMaterno,E.primerNombre,E.segundoNombre) nombreCompleto,
			       E.CI,E.idCargo ,C.nombre as 'nombre', if(C.esFlexible=true,'Flexible','No Flexible') as 'Flexibilidad'
			FROM Empleado E join Cargo C
            WHERE E.idEmpleado = :idEmpleado
            AND E.idCargo = C.idCargo
            ORDER BY C.esFlexible, E.apellidoPaterno,E.apellidoMaterno,E.primerNombre,E.segundoNombre;

								";
			$cmd = $this->conexion->prepare($sqlListaImagenes);
			$cmd->bindParam(':idEmpleado', $idEmpleado);
			$cmd->execute();
			$listaDeEmpleadoDeLaConsulta = $cmd->fetchAll();
          
            $buscarEmpleado = 	array();
			$i = 0;
          	
            foreach($listaDeEmpleadoDeLaConsulta as $registroEmpleado){
	            	$objetoEmpleado = new Empleado();	
	            	$objetoEmpleado->setidEmpleado($registroEmpleado['idEmpleado']);	
	            	$objetoEmpleado->setnombreCompleto($registroEmpleado['nombreCompleto']);
		            $objetoEmpleado->setnombre($registroEmpleado['nombre']);	
		            $objetoEmpleado->setnombreFlexible($registroEmpleado['Flexibilidad']);
					$buscarEmpleado[$i] = $objetoEmpleado;
					  $i++;
		    }

			return $buscarEmpleado;
		}//end function
		
}
<<<<<<< HEAD
 ?>
<!-- ======= -->
<?php
	require_once ('Conexion.php');
	require_once('Empleado.php');
	class BuscadorEmpleado
	{
	 	private $conexion;
	 	private $user;
		function __construct()
		{
			//$this->user = new Usuario();
			$this->conexion =  new Conexion();
		}
		public function listaDeEmpleado()
		{
			$sqlListaDeEmpleado ="SELECT e.idEmpleado,e.idCargo,e.idEstadoCivil,e.ci,CONCAT_WS(' ',e.apellidoPaterno,e.apellidoMaterno,e.primerNombre,e.segundoNombre) as Empleado,
            e.fechaNacimiento,e.codeRFID,e.genero,e.fotografia,e.numeroCelular,e.numeroFijo,Usuario,e.contrasenia,e.activo 
								 FROM Empleado as e
								 JOIN Cargo as c on c.idCargo = e.idCargo
                                 JOIN estadoCivil as ec on ec.idEstadoCivil = e.idEstadoCivil
								 ORDER BY Empleado;";

			$cmd = $this->conexion->prepare($sqlListaDeEmpleado);
			$cmd->execute();
			$listaEmpleadoDeLaConsola = $cmd->fetchAll();
			// arreglo para llenar la lista de Empleado
			$listaEmpleado = array();
			$i=0;
			foreach ($listaEmpleadoDeLaConsola as $RegistroEmpleado) {
				$objEmpleado = new Empleado();
				$objEmpleado->setidEmpleado($RegistroEmpleado['idEmpleado']);
				$objEmpleado->setidCargo($RegistroEmpleado['idCargo']);
				$objEmpleado->setidEstadoCivil($RegistroEmpleado['idEstadoCivil']);
				$objEmpleado->setci($RegistroEmpleado['ci']);
				$objEmpleado->setEmpleado($RegistroEmpleado['Empleado']);
				$objEmpleado->setfechaNacimiento($RegistroEmpleado['fechaNacimiento']);
				$objEmpleado->setcodeRFID($RegistroEmpleado['codeRFID']);
                $objEmpleado->setgenero($RegistroEmpleado['genero']);
                $objEmpleado->setfotografia($RegistroEmpleado['fotografia']);
                $objEmpleado->setnumeroCelular($RegistroEmpleado['numeroCelular']);
                $objEmpleado->setnumeroFijo($RegistroEmpleado['numeroFijo']);
                $objEmpleado->setusuario($RegistroEmpleado['Usuario']);
				$objEmpleado->setcontrasenia($RegistroEmpleado['contrasenia']);
				// var_dump($RegistroEmpleado);
                $objEmpleado->setactivo($RegistroEmpleado['activo']);
                
				$listaEmpleado[$i] = $objEmpleado;
				$i++;
			}
			return $listaEmpleado;
		}// fin funcion Lista de usuario
    }
=======
 ?>
>>>>>>> 8909503424d0100d71e759c99cd0cd7a2e8f48f2
