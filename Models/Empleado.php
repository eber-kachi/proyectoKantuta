<?php



class Empleado
{
    private $idEmpleado;
    private $idCargo;
    private $idEstadoCivil;
    private $CI;
    private $primerNombre;
    private $segundoNombre;
    private $apellidoPaterno;
    private $apellidoMaterno;
    private $fechaNacimiendo;
    private $codeRFID;
    private $genero;
    private $fotografia;
    private $numeroCelular;
    private $numeroFijo;
    private $usuario;
    private $contrasenia;
    private $activo;

    function __construct()
    { }

    //set
    public function setidEmpleado($idEmpleado)
    {
        $this->idEmpleado = $idEmpleado;
    }
    public function setidCargo($idCargo)
    {
        $this->idCargo = $idCargo;
    }
    public function setidEstadoCivil($idEstadoCivil)
    {
        $this->idEstadoCivil = $idEstadoCivil;
    }
    public function setCI($CI)
    {
        $this->CI = $CI;
    }
    public function setprimerNombre($primerNombre)
    {
        $this->primerNombre = $primerNombre;
    }
    public function setsegundoNombre($segundoNombre)
    {
        $this->segundoNombre = $segundoNombre;
    }
    public function setapellidoPaterno($apellidoPaterno)
    {
        $this->apellidoPaterno = $apellidoPaterno;
    }
    public function setapellidoMaterno($apellidoMaterno)
    {
        $this->apellidoMaterno = $apellidoMaterno;
    }
    public function setfechaNacimiendo($fechaNacimiendo)
    {
        $this->fechaNacimiendo = $fechaNacimiendo;
    }
    public function setcodeRFID($codeRFID)
    {
        $this->codeRFID = $codeRFID;
    }
    public function setgenero($genero)
    {
        $this->genero = $genero;
    }
    public function setfotografia($fotografia)
    {
        $this->fotografia = $fotografia;
    }
    public function setnumeroCelular($numeroCelular)
    {
        $this->numeroCelular = $numeroCelular;
    }
    public function setnumeroFijo($numeroFijo)
    {
        $this->numeroFijo = $numeroFijo;
    }
    public function setusuario($usuario)
    {
        $this->usuario = $usuario;
    }
    public function setcontraseña($contraseña)
    {
        $this->contraseña = $contraseña;
    }
    public function setactivo($activo)
    {
        $this->activo = $activo;
    }
    //get
    public function getidEmpleado()
    {
        return $this->idEmpleado;
    }
    public function getidCargo()
    {
        return $this->idCargo;
    }
    public function getidEstadoCivil()
    {
        return $this->idEstadoCivil;
    }
    public function getCI()
    {
        return $this->CI;
    }
    public function getprimerNombre()
    {
        return $this->primerNombre;
    }
    public function getsegundoNombre()
    {
        return $this->segundoNombre;
    }
    public function getapellidoPaterno()
    {
        return $this->apellidoPaterno;
    }
    public function getapellidoMaterno()
    {
        return $this->apellidoMaterno;
    }
    public function getfechaNacimiendo()
    {
        return $this->fechaNacimiendo;
    }
    public function getcodeRFID()
    {
        return $this->codeRFID;
    }
    public function getgenero()
    {
        return $this->genero;
    }
    public function getfotografia()
    {
        return $this->fotografia;
    }
    public function getnumeroCelular()
    {
        return $this->numeroCelular;
    }
    public function getnumeroFijo()
    {
        return $this->numeroFijo;
    }
    public function getusuario()
    {
        return $this->usuario;
    }
    public function getcontrasenia()
    {
        return $this->contrasenia;
    }
    public function getactivo()
    {
        return $this->activo;
    }
}