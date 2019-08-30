<?php

class Cargo
{
    private idCargo; 
    private nombre;
    private flexible;

    function __construct()
    { }
    //set
    public function setidCargo($idCargo)
    {
        $this->idCargo = $idCargo;
    }
    public function setnombre($nombre)
    {
        $this->nombre = $nombre;
    }
    public function setflexible($flexible)
    {
        $this->flexible = $flexible;
    }

    //get
    public function getidCargo()
    {
        return $this->idCargo;
    }
    public function getnombre()
    {
        return $this->nombre;
    }
    public function getflexible()
    {
        return $this->flexible;
    }
}