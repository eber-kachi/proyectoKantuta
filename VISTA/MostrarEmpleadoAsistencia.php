<?php 
  require('../Models/Conexion.php');
  require('../Models/Asistencia.php');
  require('../Models/BuscadorAsistencia.php');
   $conexion =  new Conexion();
   $objetoBuscadorAsistencia = new BuscadorAsistencia();
   // echo 'llega nivel    '.$_REQUEST['nivel'];
   // echo '---------';
   // echo 'llega search'.$_REQUEST['estudiantes'];
if (isset($_REQUEST['nivel'])){

     $tabla = '';

         $listaEmpleadoAsistencia = $objetoBuscadorAsistencia->listaEmpleadoFiltro($_REQUEST['nivel']);
        //  $listaEmpleadoAsistencia = $objetoBuscadorAsistencia->listaEmpleadoFiltro('1');

         if(count($listaEmpleadoAsistencia)>0){ 
         $tabla.='
                    <table border = 1 name="mostrarEmpleados" id="mostrarEmpleados">
                            <tr>
                                 <td>Día</td>
                                 <td>Total Horas Trabajadas</td>
                                 <td>Cargo</td>
                                 <td>Tipo Horario</td>
                                 <td>Ingreso</td>
                                 <td>Salida</td>
                                
                            </tr>';

            foreach($listaEmpleadoAsistencia as $registroEmpleado){
                $tabla.='
                            <tr>
                                <td>'.$registroEmpleado->getdia().'</td>
                                <td>'.$registroEmpleado->getTotalHoras().'</td>
                                <td>'.$registroEmpleado->getcargo().'</td>
                                <td>'.$registroEmpleado->gettipoHorario().'</td>
                                <td>'.$registroEmpleado->gethoraFechaEntrada().'</td>
                                <td>'.$registroEmpleado->gethoraFechaSalida().'</td>

                                
                            </tr>';
            }//end foreach
            $tabla.='</table>';
            echo $tabla;
     }else{
        //echo "No hay resultados con su criterio de busqueda";
        echo "vacio";
     }
    }else{
     
     $tabla = '';

         $listaEmpleadoAsistencia = $objetoBuscadorAsistencia->listaAsistenciaRFID();

         if(count($listaEmpleadoAsistencia)>0){ 
         $tabla.='
                    <table border = 1 name="mostrarEmpleados" id="mostrarEmpleados">
                            <tr>
                            <td>Día</td>
                            <td>Total Horas Trabajadas</td>
                            <td>Cargo</td>
                            <td>Tipo Horario</td>
                            <td>Ingreso</td>
                            <td>Salida</td>   
                                 
                            </tr>';

            foreach($listaEmpleadoAsistencia as $registroEmpleado){
                $tabla.='
                            <tr>
                                <td>'.$registroEmpleado->getdia().'</td>
                                <td>'.$registroEmpleado->getTotalHoras().'</td>
                                <td>'.$registroEmpleado->getcargo().'</td>
                                <td>'.$registroEmpleado->gettipoHorario().'</td>
                                <td>'.$registroEmpleado->gethoraFechaEntrada().'</td>
                                <td>'.$registroEmpleado->gethoraFechaSalida().'</td>

                                
                            </tr>';
            }//end foreach
            $tabla.='</table>';
            echo $tabla;
     }
}//end else


 ?>