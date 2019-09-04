<?php

class MenuController
{
    function __construct()
    {
        
    }

    public function getViewMenu()
    {
        return include('./VISTA/index.php');
    }

    public function getListEmployes()
    {
        return include('./VISTA/IUListaEmpleado.php');
    }

}

?>