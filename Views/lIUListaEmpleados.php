<?php
include './IUHeader.php';
?>
<div class="container">
    <table class="table">
        <thead class="thead-dark">
            <tr>
                <th scope="col-md-1 ">#</th>
                <th scope="col-md-4 ">Nombre Completo</th>
                <th scope="col-md-3 ">Cargo</th>
                <th scope="col-md-4">Acciones</th>
            </tr>
        </thead>
        <tbody>

            <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>Otto</td>
                <td><a href="" id="" class="btn btn-success ml-2">Ver Dia</a>
                    <a href="../Controllers/LogicaListarHorasTabajadasSemana.php" id="" class="btn btn-success ml-2">Ver Semana</a>
                    <a href="" id="" class="btn btn-success ml-2">Ver mes</a>
                </td>
            </tr>
        </tbody>
    </table>
</div>





<?php

include './IUFooter.php';
?>