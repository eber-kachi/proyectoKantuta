<?php
    require_once("../Models/Conexion.php");
    require_once("../Models/Empleado.php");
    require_once("../Models/BuscadorEmpleado.php");
    $objetoBuscadorEmpleado = new BuscadorEmpleado();
    $listaEmpleado = array();
    $i=0;
        // $objetoBuscadorEmpleado;

    $listaEmpleado = $objetoBuscadorEmpleado->listaEmpleado();
?>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Lista de Empleados</title>
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
                                <td>Seleccionar</td>
                            </tr>
                    <?php
                        foreach ($listaEmpleado as $regEmpleado) {
                    ?>
                            <tr>
                                <td><?php echo $regEmpleado->getnombreCompleto(); ?></td>
                                <td><?php echo $regEmpleado->getnombre(); ?></td>
                                <td><?php echo $regEmpleado->getnombreFlexible(); ?></td>
                                <td><a href="IUHorarioAsistencia.php?idEmpleado=<?php echo $regEmpleado->getidEmpleado(); ?>">Seleccionar</a></td>
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