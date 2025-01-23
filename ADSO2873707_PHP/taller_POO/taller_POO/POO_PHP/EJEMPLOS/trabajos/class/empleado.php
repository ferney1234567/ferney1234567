<?php
class empleado {
    private $nombre;
    private $sueldo;
    private $email;
    private $fecha_nacimiemnto;
    private $peso;
    private $altura;
    public function __construct($nombre,$sueldo,$email,$fecha_nacimiento,$peso,$altura) {
        $this->nombre = $nombre;
        $this->sueldo = $sueldo;
        $this->email = $email;
        $this->fecha_nacimiemnto = $fecha_nacimiento;
        $this->peso = $peso;
        $this->altura = $altura;
    }
    public function setnombre($_nombre) {
        $this->nombre = $_nombre;
    }
    public function getnombre() {
        return $this->nombre;
    }

    public function setsueldo($_sueldo) {
        $this->sueldo = $_sueldo;
    }

    public function getsueldo() {
        return $this->sueldo;
    }

    public function setemail($_email) {
        $this->email = $_email;
    }

    public function getemail() {
        return $this->email;
    }

    public function setfecha_nacimiento($_fecha_nacimiento){
        $this->fecha_nacimiemnto = $_fecha_nacimiento;
    }

    public function getfecha_nacimiento() {
        return $this->fecha_nacimiemnto;
    }

    public function setpeso($_peso){
        $this->peso = $_peso;
    }

    public function getpeso() {
        return $this->peso;
    }

    public function setaltura($_altura){
        $this->altura = $_altura;
    }

    public function getaltura() {
        return $this->altura;
    }
}

