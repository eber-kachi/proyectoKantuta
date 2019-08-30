<?php
class Gestion
{
    private $idGestion;
    private $idEmpresa;
    private $idEmpleado;
    private $fecha;



    function __construct()
    { }

    //set 
    public function setidGestion($idGestion)
    {
        $this->idGestion  = $idGestion;
    }
    public function setidEmpresa($idEmpresa)
    {
        $this->idEmpresa  = $idEmpresa;
    }
    public function setidEmpleado($idEmpleado)
    {
        $this->idEmpleado  = $idEmpleado;
    }
    public function setFecha($fecha)
    {
        $this->fecha = $fecha;
    }


    //get
    public function getidGestion()
    {
        return $this->idGestion;
    }
    public function getidEmpresa()
    {
        return $this->idEmpresa;
    }
    public function getidEmpleado()
    {
        return $this->idEmpleado;
    }
    public function getFecha()
    {
        return $this->fecha;
    }
}//end class
