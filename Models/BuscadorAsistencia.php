<?php 
class BuscadorAsistencia{
    private $conexion;

		function __construct()
		{
			$this->conexion =  new Conexion();
        }

    public function listaAsistenciaRFID()
		{
			$sqlListaDeEmpleados = "
            SELECT a.idAsistencia, e.idEmpleado,
            (ELT(WEEKDAY(DATE(a.horaFechaEntrada)) + 1, 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado', 'Domingo')) AS 'DIA',
            a.TotalHoras as 'HorasTrabajadas', c.nombre AS 'Cargo',
            IF(c.esFlexible,'Horario Flexible','Horario Fijo') AS 'TipoHorario',
            h.horarioIngreso, h.horarioSalida
            FROM empleado e INNER JOIN asistencia a
            ON e.idEmpleado = a.idEmpleado AND e.idEmpleado = 3
            INNER JOIN cargo c
            ON e.idCargo = c.idCargo
            INNER JOIN horario h
            ON c.idCargo = h.idCargo
            INNER Join turno t
            ON h.idTurno = t.idTurno AND t.idTurno = 1
            AND DATE(a.horaFechaEntrada) = '2019-08-30' ;
								";
			$cmd = $this->conexion->prepare($sqlListaDeEmpleados);
			$cmd->execute();
			$listaDeEmpleadoDeLaConsulta = $cmd->fetchAll();

            //llenando la lista para usaurios...con el foreach
			$listaEmpleadoAsistencia = 	array();
			$i = 0;
          	
            foreach($listaDeEmpleadoDeLaConsulta as $regitroEmpleado){
                    $objetoAsistencia = new Asistencia();	
                    $objetoAsistencia->setidAsistencia($regitroEmpleado['idAsistencia']);	
	            	$objetoAsistencia->setdia($regitroEmpleado['DIA']);	
	            	$objetoAsistencia->setTotalHoras($regitroEmpleado['HorasTrabajadas']);
		            $objetoAsistencia->setcargo($regitroEmpleado['Cargo']);	
		            $objetoAsistencia->settipohorario($regitroEmpleado['TipoHorario']);
		            $objetoAsistencia->sethoraFechaEntrada($regitroEmpleado['horarioIngreso']);
		            $objetoAsistencia->sethoraFechaSalida($regitroEmpleado['horarioSalida']);	
					  $listaEmpleadoAsistencia[$i] = $objetoAsistencia;
					  $i++;
		    }
			return $listaEmpleadoAsistencia;
		}//end function for assistance
		public function listaEmpleadoFiltro($nivel)
		{   
			$sqlListaDeEmpleados = "
            SELECT e.idEmpleado,
            (ELT(WEEKDAY(DATE(a.horaFechaEntrada)) + 1, 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado', 'Domingo')) AS DIA,
            a.TotalHoras as HorasTrabajadas, c.nombre AS Cargo,
            IF(c.esFlexible,'Horario Flexible','Horario Fijo') AS TipoHorario,
            h.horarioIngreso, h.horarioSalida
            FROM empleado e INNER JOIN asistencia a
            ON e.idEmpleado = a.idEmpleado AND e.idEmpleado = 3
            INNER JOIN cargo c
            ON e.idCargo = c.idCargo
            INNER JOIN horario h
            ON c.idCargo = h.idCargo
            INNER Join turno t
            ON h.idTurno = t.idTurno AND t.idTurno = 1
									";	
			$condiciones = [];//arreglo donde se ira colocando los registros
			if (!empty($nivel) && $nivel != '1') {
				$condiciones[] = " DATE(a.horaFechaEntrada) = '2019-08-30'";
            }
            if (!empty($nivel) && $nivel != '2') {
				$condiciones[] = " DATE(a.horaFechaEntrada) >= '2019-08-26' AND DATE(a.horaFechaEntrada) <= '2019-08-30'";
            }
            if (!empty($nivel) && $nivel != '3') {
				// $condiciones[] = " N.codigoNivel = :nivel ";
				$condiciones[] = "DATE(a.horaFechaEntrada) >= '2019-08-01' AND DATE(a.horaFechaEntrada) <= '2019-08-30'";
			}
			if (!empty($condiciones)) {
				$sqlListaDeEmpleados .= "AND ".implode(" AND ",$condiciones);
				
			}
			$sqlListaDeEmpleados .= " ORDER BY DATE(horaFechaEntrada)";

			// print_r($sqlListaDeEmpleados);
			$cmd = $this->conexion->prepare($sqlListaDeEmpleados);
			$cmd->execute();

            $listaDeEmpleadoDeLaConsulta = $cmd->fetchAll();

            //llenando la lista para usaurios...con el foreach
			$listaEmpleadoAsistencia = 	array();
			$i = 0;
          	
            foreach($listaDeEmpleadoDeLaConsulta as $regitroEmpleado){
	            	$objetoAsistencia = new Asistencia();	
	            	$objetoAsistencia->setdia($regitroEmpleado['DIA']);	
	            	$objetoAsistencia->setTotalHoras($regitroEmpleado['HorasTrabajadas']);
		            $objetoAsistencia->setcargo($regitroEmpleado['Cargo']);	
		            $objetoAsistencia->settipoHorario($regitroEmpleado['TipoHorario']);
		            $objetoAsistencia->sethoraFechaEntrada($regitroEmpleado['horarioIngreso']);
		            $objetoAsistencia->sethoraFechaSalida($regitroEmpleado['horarioSalida']);	
					  $listaEmpleadoAsistencia[$i] = $objetoAsistencia;
					  $i++;
		    }

			return $listaEmpleadoAsistencia;

		}
}
?>