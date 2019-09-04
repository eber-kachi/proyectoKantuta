<?php

class Asistencia
{
    public $idAsistencia;
    public $idEmpleado ;
    public $estado;
    public $horaFechaEntrada;
    public $horaFechaSalida;
    public $TotalHoras;

    public $dia;
    public $cargo;
    public $tipoHorario;
    public $totalSemanal;
    public $totalMensual;
    public $totalFecha;


    function __construct()
    { }
    //set
    public function setidAsistencia($idAsistencia)
    {
        $this->idAsistencia = $idAsistencia;
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
    public function setdia($dia){$this->dia = $dia;}
    public function setcargo($cargo){$this->cargo = $cargo;}
    public function settipohorario($tipoHorario){$this->tipoHorario = $tipoHorario;}
    public function settotalSemanal($totalSemanal){$this->totalSemanal = $totalSemanal;}
    public function settotalMensual($totalMensual){$this->totalMensual = $totalMensual;}
    public function settotalFecha($totalFecha){$this->totalFecha = $totalFecha;}


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
    public function getdia(){return $this->dia;}
    public function getcargo(){return $this->cargo;}
    public function gettipoHorario(){return $this->tipoHorario;}
    public function gettotalSemanal(){return $this->totalSemanal;}
    public function gettotalMensual(){return $this->totalMensual;}
    public function gettotalFecha(){return $this->totalFecha;}

}
