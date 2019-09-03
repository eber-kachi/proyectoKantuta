<?php
class Gestion
{
    private $idGestion;
    private $idEmpresa;
    private $idEmpleado;
    private $fecha;
    
    private $cantidadH;
    private $cantidadM;



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

    public function setCantidadH($cantidadH){$this->cantidadH = $cantidadH;}
    public function setCantidadM($cantidadM){$this->cantidadM = $cantidadM;}
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

    public function getCantidadH(){return $this->cantidadH;}
    public function getCantidadM(){return $this->cantidadM;}
}//end class
