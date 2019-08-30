<?php
  class BuscadorGestion
	{
		private $conexion;

		function __construct()
		{
			$this->conexion =  new Conexion();
        }
        
		public function estadisticaInscripcionMensualidadGestion($gestion1,$gestion2)
		{

			$sqlListaIM = "
			SELECT YEAR(G.fecha) as 'Año',COUNT(if(E.genero=true,1,null)) as 'Masculino',
            COUNT(if(E.genero=false,1,null)) as 'Femenino'
            FROM Gestion G, Empleado E
            WHERE E.idEmpleado = G.idEmpleado
            AND YEAR(G.fecha) >= :gestion1 && YEAR(G.fecha) <= :gestion2
            GROUP BY YEAR(G.fecha) ;
	";
			$cmd = $this->conexion->prepare($sqlListaIM);
			$cmd->bindParam(':gestion1', $gestion1);
			$cmd->bindParam(':gestion2', $gestion2);
			$cmd->execute();
			$listaGestionConsulta = $cmd->fetchAll();
          	$listaGestion = array();
          	$i = 0;
          	//verificar si hay datos y cargarlos
            foreach($listaGestion as $list){
            	  $objetoGestion = new Gestion();
            	  $objetoGestion->setidGestion($list['idGestion']);
            	  $objetoGestion->setFechaInscripcionMensualidad($list['Año']);
            	  $objetoGestion->setCantidad($list['Cantidad']);
            	  $listaIM[$i] = $objetoInscripcion;
            	  $i++;
		    }
			return $listaIM;
		}//end function

	}//end class

?>