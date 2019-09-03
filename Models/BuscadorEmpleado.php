<?php
	requireonce ('Conexion.php');
	class BuscadorEmpleado
	{
	 	private $conexion;
	 	private $user;
		function __construct()
		{
			$this->user = new Usuario();
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
			foreach ($listaEmpleadoDeLaConsola as RegistroEmpleado) {
				$objEmpleado = new Empleado();
				$objEmpleado->setidEmpleado(RegistroEmpleado['idEmpleado']);
				$objEmpleado->setidCargo(RegistroEmpleado['idCargo']);
				$objEmpleado->setidEstadoCivil(RegistroEmpleado['idEstadoCivil']);
				$objEmpleado->setci(RegistroEmpleado['ci']);
				$objEmpleado->setEmpleado(RegistroEmpleado['Empleado']);
				$objEmpleado->setfechaNacimiento(RegistroEmpleado['fechaNacimiento']);
				$objEmpleado->setcodeRFID(RegistroEmpleado['codeRFID']);
                $objEmpleado->setgenero(RegistroEmpleado['genero']);
                $objEmpleado->setfotografia(RegistroEmpleado['fotografia']);
                $objEmpleado->setnumeroCelular(RegistroEmpleado['numeroCelular']);
                $objEmpleado->setnumeroFijo(RegistroEmpleado['numeroFijo']);
                $objEmpleado->setusuario(RegistroEmpleado['usuario']);
                $objEmpleado->setcontrasenia(RegistroEmpleado['contrasenia']);
                $objEmpleado->setactivo(RegistroEmpleado['activo']);
                
				$listaEmpleado[$i] = $objEmpleado;
				$i++;
			}
			return $listaEmpleado;
		}// fin funcion Lista de usuario
    }