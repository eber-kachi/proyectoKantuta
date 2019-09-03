<?php 
class BuscadorEstudiante
	{
		private $conexion;

		function __construct()
		{
			$this->conexion =  new Conexion();
		}

		public function listaEmpleado()
		{
			$sqlListaDeEstudiantes = "
			SELECT E.codigoEstudiante, CONCAT_WS(' ',E.apellidoPaterno,E.apellidoMaterno,E.primerNombre,E.segundoNombre) nombreCompleto, E.fotografia, A.fechaHoraAsistencia, N.nombre as nombreNivel, H.hora as hora, (TIME(A.fechaHoraAsistencia)) as horaIngreso, ((TIME(A.fechaHoraAsistencia))-(h.hora)) as atraso 
			FROM Estudiante E, InscripcionMensualidad IM, Asistencia A, HorarioAsignadoInstructor HAI, Horario H, Nivel N
			WHERE DATE(A.fechaHoraAsistencia) = '2019-06-19'
			AND A.codigoInscripcionMensualidad = IM.codigoInscripcionMensualidad
			AND IM.codigoEstudiante = E.codigoEstudiante
			AND IM.codigoGestion >= 9
			AND IM.codigoHorarioAsignadoInstructor = HAI.codigoHorarioAsignadoInstructor
			AND HAI.codigoHoraInicio = H.codigoHorario
			AND HAI.codigoNivel = N.codigoNivel
			ORDER BY A.codigoAsistencia desc;
								";
			$cmd = $this->conexion->prepare($sqlListaDeEstudiantes);
			$cmd->execute();
			$listaDeEstudiantesDeLaConsulta = $cmd->fetchAll();

            //llenando la lista para usaurios...con el foreach
			$listaEstudianteAsistencia = 	array();
			$i = 0;
          	
            foreach($listaDeEstudiantesDeLaConsulta as $regitroEstudiante){
	            	$objetoEstudiante = new Estudiante();	
	            	$objetoEstudiante->setCodigoEstudiante($regitroEstudiante['codigoEstudiante']);	
	            	$objetoEstudiante->setNombreCompleto($regitroEstudiante['nombreCompleto']);
		            $objetoEstudiante->setFotografia($regitroEstudiante['fotografia']);	
		            $objetoEstudiante->setNombreNivel($regitroEstudiante['nombreNivel']);
		            $objetoEstudiante->setHora($regitroEstudiante['hora']);
		            $objetoEstudiante->setHoraIngreso($regitroEstudiante['horaIngreso']);	
		            $objetoEstudiante->setAtraso($regitroEstudiante['atraso']);
					  $listaEstudianteAsistencia[$i] = $objetoEstudiante;
					  $i++;
		    }

			return $listaEstudianteAsistencia;
		}//end function for assistance
		public function listaDeArticulosPorCriterioDinamico($cadenaBuscar,$nivel)
		{   
			$sqlListaDeEstudiantes = "
							SELECT E.codigoEstudiante, CONCAT_WS(' ',E.apellidoPaterno,E.apellidoMaterno,E.primerNombre,E.segundoNombre) nombreCompleto, E.fotografia, A.fechaHoraAsistencia, N.nombre as nombreNivel, H.hora as hora, (TIME(A.fechaHoraAsistencia)) as horaIngreso, ((TIME(A.fechaHoraAsistencia))-(h.hora)) as atraso
							FROM Estudiante E, InscripcionMensualidad IM, Asistencia A, HorarioAsignadoInstructor HAI, Horario H, Nivel N
							WHERE DATE(A.fechaHoraAsistencia) = '2019-06-19'
							AND A.codigoInscripcionMensualidad = IM.codigoInscripcionMensualidad
							AND IM.codigoEstudiante = E.codigoEstudiante
							AND IM.codigoGestion >= 9
							AND IM.codigoHorarioAsignadoInstructor = HAI.codigoHorarioAsignadoInstructor
							AND HAI.codigoHoraInicio = H.codigoHorario
							AND HAI.codigoNivel = N.codigoNivel
									";	
			$condiciones = [];//arreglo donde se ira colocando los registros
			if (!empty($nivel) && $nivel != 'todo') {
				// $condiciones[] = " N.codigoNivel = :nivel ";
				$condiciones[] = " N.codigoNivel = ".$nivel;
			}

			if (!empty($cadenaBuscar)) {
				$condiciones[] = "E.apellidoPaterno like '%". $cadenaBuscar."%' OR E.apellidoMaterno like '%". $cadenaBuscar."%' OR E.primerNombre like '%".$cadenaBuscar."%' OR E.segundoNombre like '%".$cadenaBuscar."%' OR E.CI like '%".$cadenaBuscar."%'";
			}
			/*COMO FUNCIONA EL IMPLODE
				$array = array('lastname', 'email', 'phone');
				$comma_separated = implode(":", $array);
				lastname:email:phone
			*/
			if (!empty($condiciones)) {
				$sqlListaDeEstudiantes .= "AND ".implode(" AND ",$condiciones);
				
			}
			$sqlListaDeEstudiantes .= " ORDER BY E.apellidoPaterno";

			print_r($sqlListaDeEstudiantes);
			$cmd = $this->conexion->prepare($sqlListaDeEstudiantes);
			// if (!empty($nombreArticulo)) {
			// 	$cmd->bindParam(':nombreArticulo', $nombreArticulo);
			// }
			// if (!empty($nivel) && $nivel != 'todo') {
			// 	// $nivel = $nivel == 'nivel';// la expresion retorna un booleano, es lo mismo que If ($estado == 'activo'), de qui retorna un true o false
			// 	$cmd->bindParam(':nivel',$nivel);
			// }
			$cmd->execute();
			/* Ejecuta una sentencia preparada pasando un array de valores */
			$listaDeEstudiantesDeLaConsulta = $cmd->fetchAll();

            // Arreglo para llenar una lista de Articulos
			$listaEstudianteAsistencia = array();
			$i = 0;
          	
            foreach($listaDeEstudiantesDeLaConsulta as $regitroEstudiante){
	            	$objetoEstudiante = new Estudiante();	
	            	$objetoEstudiante->setCodigoEstudiante($regitroEstudiante['codigoEstudiante']);	
	            	$objetoEstudiante->setNombreCompleto($regitroEstudiante['nombreCompleto']);
		            $objetoEstudiante->setFotografia($regitroEstudiante['fotografia']);	
		            $objetoEstudiante->setNombreNivel($regitroEstudiante['nombreNivel']);
		            $objetoEstudiante->setHora($regitroEstudiante['hora']);
		            $objetoEstudiante->setHoraIngreso($regitroEstudiante['horaIngreso']);	
		            $objetoEstudiante->setAtraso($regitroEstudiante['atraso']);
					$listaEstudianteAsistencia[$i] = $objetoEstudiante;
					  $i++;
		    }
		    //print_r($listaDeArticulos);
			return $listaEstudianteAsistencia;

		}
}
 ?>