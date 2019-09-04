<?php
<<<<<<< HEAD

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
    private $fechaNacimiento;
    private $codeRFID;
    private $genero;
    private $fotografia;
    private $numeroCelular;
    private $numeroFijo;
    private $usuario;
    private $contrasenia;
    private $activo;
=======
class Empleado
{
    public $idEmpleado;
    public $idCargo;
    public $idEstadoCivil;
    public $CI;
    public $primerNombre;
    public $segundoNombre;
    public $apellidoPaterno;
    public $apellidoMaterno;
    public $fechaNacimiendo;
    public $codeRFID;
    public $genero;
    public $fotografia;
    public $numeroCelular;
    public $numeroFijo;
    public $usuario;
    public $contrasenia;
    public $activo;
>>>>>>> 8909503424d0100d71e759c99cd0cd7a2e8f48f2

    public $nombreFlexible;
    public $nombre;
    public $nombreCompleto;
    
    function __construct()
    { }

    //set
    public function setidEmpleado($idEmpleado){ $this->idEmpleado = $idEmpleado;}
    public function setidCargo($idCargo){$this->idCargo = $idCargo;}
    public function setidEstadoCivil($idEstadoCivil){$this->idEstadoCivil = $idEstadoCivil;}
    public function setci($CI){$this->CI = $CI;}
    public function setEmpleado($Empleado){$this->Empleado=$Empleado;}
    public function setprimerNombre($primerNombre){$this->primerNombre = $primerNombre;}
    public function setsegundoNombre($segundoNombre){$this->segundoNombre = $segundoNombre;}
    public function setapellidoPaterno($apellidoPaterno){$this->apellidoPaterno = $apellidoPaterno;}
    public function setapellidoMaterno($apellidoMaterno){$this->apellidoMaterno = $apellidoMaterno;}
    public function setfechaNacimiento($fechaNacimiento){$this->fechaNacimiento = $fechaNacimiento;}
    public function setcodeRFID($codeRFID){ $this->codeRFID = $codeRFID;}
    public function setgenero($genero){$this->genero = $genero;}
    public function setfotografia($fotografia){$this->fotografia = $fotografia;}
    public function setnumeroCelular($numeroCelular){$this->numeroCelular = $numeroCelular;}
    public function setnumeroFijo($numeroFijo){$this->numeroFijo = $numeroFijo;}
    public function setusuario($usuario){$this->usuario = $usuario;}
    public function setcontrasenia($contraseña){$this->contrasenia = $contraseña;}
    public function setactivo($activo){$this->activo = $activo;}

    public function setnombreFlexible($nombreFlexible){$this->nombreFlexible = $nombreFlexible;}
    public function setnombreCompleto($nombreCompleto){$this->nombreCompleto = $nombreCompleto;}
    public function setnombre($nombre){$this->nombre = $nombre;}

    //get
    public function getidEmpleado(){return $this->idEmpleado;}
    public function getidCargo(){return $this->idCargo;}
    public function getidEstadoCivil(){return $this->idEstadoCivil;}
    public function getCI(){return $this->CI;}
    public function getEmpleado(){return $this->Empleado;}
    public function getprimerNombre(){return $this->primerNombre;}
    public function getsegundoNombre(){return $this->segundoNombre;} 
    public function getapellidoPaterno(){return $this->apellidoPaterno;}
    public function getapellidoMaterno(){return $this->apellidoMaterno;}
    public function getfechaNacimiento(){return $this->fechaNacimiento;}
    public function getcodeRFID(){return $this->codeRFID;}
    public function getgenero(){return $this->genero;}
    public function getfotografia(){return $this->fotografia;}
    public function getnumeroCelular(){return $this->numeroCelular;}
    public function getnumeroFijo(){return $this->numeroFijo;}
    public function getusuario(){return $this->usuario;}
    public function getcontrasenia(){return $this->contrasenia;}
    public function getactivo(){return $this->activo;}

    public function getnombreFlexible(){return $this->nombreFlexible;}
    public function getnombreCompleto(){return $this->nombreCompleto;}
    public function getnombre(){return $this->nombre;}

}
