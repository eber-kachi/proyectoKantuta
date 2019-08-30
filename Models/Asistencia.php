<?php

class Asistencia
{
    private $idAsistencia;
    private $idEmpleado ;
    private $estado;
    private $horaFechaEntrada;
    private $horaFechaSalida;
    private $TotalHoras;

    function __construct()
    { }
    //set
    public function setidAsistencia($idAsistencia)
    {
        $this->idAsistencia = $idCidAsistenciaargo;
    }
    public function setidEmpleado($idEmpleado)
    {
        $this->idEmpleado = $idEmpleado;
    }
    public function setestado($estado)
    {
        $this->estado = $estado;
    }
    public function sethoraFechaEntrada($horaFechaEntrada)
    {
        $this->horaFechaEntrada = $horaFechaEntrada;
    }
    public function sethoraFechaSalida($horaFechaSalida)
    {
        $this->horaFechaSalida = $horaFechaSalida;
    }
    public function setTotalHoras($TotalHoras)
    {
        $this->TotalHoras = $TotalHoras;
    }

    //get
    public function getidAsistencia()
    {
        return $this->idAsistencia;
    }
    public function getidEmpleado()
    {
        return $this->idEmpleado;
    }
    public function getestado()
    {
        return $this->estado;
    }
    public function gethoraFechaEntrada()
    {
        return $this->horaFechaEntrada;
    }
    public function gethoraFechaSalida()
    {
        return $this->horaFechaSalida;
    }
    public function getTotalHoras()
    {
        return $this->TotalHoras;
    }
}
