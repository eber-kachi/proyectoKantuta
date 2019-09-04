<?php
    require_once("../Models/Conexion.php");
    require_once("../Models/Empleado.php");
    require_once("../Models/BuscadorEmpleado.php");
    
    $objtetoBuscadorEmpleado = new BuscadorEmpleado();
    $buscarEmpleado = array();
    $i=0;
    $buscarEmpleado = $objtetoBuscadorEmpleado->buscarEmpleado($_REQUEST['idEmpleado']);
    // $buscarEmpleado = $objtetoBuscadorEmpleado->$buscarEmpleado(2);

?>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Empleado</title>
    <link rel="stylesheet" href="css/styleModal.css">
</head>
<body>
    <header>
        <main>
            <div class = "content-all"> 
                <!-- <p class = "content-btn">
                    <a href="IUProyectImage.php" class="btnRegistrar">Add Image</a>
                    <a href="MenuAdministrador.php" class="volverAdmin">Back to menu</a>
                </p> -->
                <table border = 1 class = "tablaImagen">
                            <tr>
                                <td>NombreCompleto</td>
                                <td>Cargo</td>
                                <td>Flexibilidad</td>
                            </tr>
                    <?php
                        foreach ($buscarEmpleado as $regEmpleado) {
                    ?>
                            <tr>
                                <td><?php echo $regEmpleado->getnombreCompleto(); ?></td>
                                <td><?php echo $regEmpleado->getnombre(); ?></td>
                                <td><?php echo $regEmpleado->getnombreFlexible(); ?></td>
                            </tr>
                    <?php
                        }
                    ?>
                </table>
            </div>
        </main>
    </header>
</body> 
</html> 

<?php 
  require('../Models/Asistencia.php');
  require('../Models/BuscadorAsistencia.php');

  $objtetoBuscadorEstudiante = new BuscadorAsistencia();
  $listaEstudianteAsistencia = array();
  $i=0;
     
//   $listaEstudianteAsistencia = $objtetoBuscadorEstudiante->listaAsistenciaRFID();
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Registration Assistance RFID</title>
    <link rel="stylesheet" href="css/IUUsuario.css">
    <script type="text/javascript" src="../Vista/js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="../Vista/js/JSBuscarEmpleado.js"></script>

</head>

<body>
<header>
    <main>
    <div class = "content-all"> 
    <section>
        <hr>
        <label>Día</label>&nbsp<input type="radio" name= "nivel" value="1" id="nivel">&nbsp&nbsp&nbsp&nbsp
        <label>Semanal</label>&nbsp<input type="radio" name= "nivel" value="2" id="nivel">&nbsp&nbsp&nbsp&nbsp
        <label>Mensual</label>&nbsp<input type="radio" name= "nivel" value="3" id="nivel">&nbsp&nbsp&nbsp&nbsp
        <label>Por Fecha</label>&nbsp<input type="radio" name= "nivel" value="4" id="nivel">&nbsp&nbsp&nbsp&nbsp
        <hr>
    </section>

    <section id="tablaEmpleados">
 
    </section>

         <!--    <form action="LogicaMostrarUsuariosTabla.php" method="post" class ="verlista">
                <button>See List of Users </button>
            </form> -->
<!--             <a href="MenuAdministrador.php" class = "volveratras">Go back</a>
 -->        </div>
    </main>
<header>
</body>
</html>
