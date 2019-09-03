<?php

class Cargo
{
    private $idCargo; 
    private $nombre;
    private $esFlexible;

    function __construct()
    { }
    //set
    public function setidCargo($idCargo){$this->idCargo = $idCargo;}
    public function setnombre($nombre){$this->nombre = $nombre;}
    public function setesFlexible($esFlexible){$this->esFlexible = $esFlexible;}
    //get
    public function getidCargo(){return $this->idCargo;}
    public function getnombre(){return $this->nombre;}
    public function getesFlexible(){return $this->esFlexible;}
}