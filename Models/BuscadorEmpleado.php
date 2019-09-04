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
			$sqlListaDeEmpleado = "
			SELECT E.idEmpleado as 'idEmpleado', CONCAT_WS(' ',E.apellidoPaterno,E.apellidoMaterno,E.primerNombre,E.segundoNombre) as 'nombreCompleto',
                         C.idCargo, C.nombre as 'nombre', 
                   if(C.esFlexible = true,'Flexible','No Flexible') as 'Flexibilidad'
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
 ?>