<?php
class Empleado{
    private $nombre;
    private $sueldo;
    private $email;
    private $fecha_de_nacimiento;
    private $peso ;
    private $altura;

    public function __construct($nombre= null,$sueldo = null ,$email = null, $fecha_de_nacimiento= null, $peso= null, $altura= null){
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
     public function inicializar(){
      echo "<div class='info-container'>
      <label for='' class='text'>Nombre: $this->nombre</label>
      <label for='' class='text'>Sueldo: $this->sueldo</label>
      <label for='' class='text'>Email: $this->email</label>
      <label for='' class='text'>Fecha de nacimiento: $this->fecha_de_nacimiento</label>
      <label for='' class='text'>Peso: $this->peso</label>
      <label for='' class='text'>Altura: $this->altura</label>
      <div class='form-group'>
         <a href='processLogin.php'>Volver</a>
      </div>
      </div>";
     }
     //------------------------------------------------------------
     public function impuestos(){
        if ($this->sueldo > 2000000) {
            echo "<div class='info-container'>
      <label for='' class='text'>Nombre: $this->nombre </label>
      <label for='' class='text'>Debes pagar impuestos tu Sueldo es de: $this->sueldo </label>
      </div>";
        }else{
            echo "<div class='info-container'>
      <label for='' class='text'>Nombre: $this->nombre </label>
      <label for='' class='text'>No debes pagar impuestos</label>
      </div>";
        }
           
        }
     }
     



