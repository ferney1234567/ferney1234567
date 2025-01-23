<?php
class Empleado{
    private $nombre;
    private $sueldo;
    private $email;
    private $fecha_de_nacimiento;
    private $peso ;
    private $altura;

    public function __construct($nombre= null,$sueldo = null ,$email = null, $altura= null, $peso= null, $fecha_de_nacimiento= null){
        $this->nombre = $nombre;
        $this->sueldo = $sueldo;
        $this->email = $email;
        $this->fecha_de_nacimiento = $fecha_de_nacimiento;
        $this->peso = $peso;
        $this->altura = $altura;
    }
     //metodo set
     public function setNombre($nombre){
        $this->nombre = $nombre;
     }
     //metodo get
     public function GetNombre(){
        return $this->nombre;
     }
     //----------------------------------------------------
      //metodo set
      public function setSueldo($sueldo){
        $this->sueldo = $sueldo;
     }
     //metodo get
     public function GetSueldo(){
        return $this->sueldo;
    //-------------------------------------------------------
     }
      //metodo set
      public function setEmail($email){
        $this->email = $email;
     }
     //metodo get
     public function GetEmail(){
        return $this->email;
     }
     //----------------------------------------------------------
      //metodo set
      public function setFecha_de_nacimiento($fecha_de_nacimiento){
        $this->fecha_de_nacimiento = $fecha_de_nacimiento;
     }
     //metodo get
     public function GetFecha_de_nacimiento(){
        return $this->fecha_de_nacimiento;
     }
     //------------------------------------------------------------
     //metodo set
     public function setPeso($peso){
        $this->peso = $peso;
     }
     //metodo get
     public function GetPeso(){
        return $this->peso;
     }
     //------------------------------------------------------------
     //metodo set
     public function setAltura($altura){
        $this->altura = $altura;
     }
     //metodo get
     public function GetAltura(){
        return $this->altura;
     }
     //------------------------------------------------------------
     public function impuestos(){
        if ($this->sueldo > 2000000) {
            echo"<br>Nombre: $this->nombre ";
            echo"<br>Debes pagar impuestos tu Sueldo es de: $this->sueldo ";
        }else{
            echo"<br>Nombre: $this->nombre ";
            echo"<br>No debes pagar impuestos";
        }
           
        }
     }
     



