<?php
class Vehiculo{
    protected $CantidaRuedas;
    protected $marca;
    protected $precio;
    protected $motorEnsendido;

    public function __construct($_CantidaRuedas= null,$_marca = null ,$_precio = null, $_motorEnsendido= null){
        $this->CantidaRuedas = $_CantidaRuedas;
        $this->marca = $_marca;
        $this->precio = $_precio;
        $this->motorEnsendido = $_motorEnsendido;
    }
     //metodo set
     public function setCantidadRuedas($_CantidaRuedas){
        $this->CantidaRuedas = $_CantidaRuedas;
     }
     //metodo get
     public function GetCantidadRuedas(){
        return $this->CantidaRuedas;
     }
     //----------------------------------------------------
      //metodo set
      public function setMarca($_marca){
        $this->marca = $_marca;
     }
     //metodo get
     public function GetMarca(){
        return $this->marca;
    //-------------------------------------------------------
     }
      //metodo set
      public function setPrecio($_precio){
        $this->precio = $_precio;
     }
     //metodo get
     public function GetPrecio(){
        return $this->precio;
     }
     //----------------------------------------------------------
      //metodo set
      public function setMotorEncendido($_motorEnsendido){
        $this->motorEnsendido = $_motorEnsendido;
     }
     //metodo get
     public function GetMotorEnsendido(){
        return $this->motorEnsendido;
     }
     //------------------------------------------------------------
     public function encenderVehiculo(){
        $this->motorEnsendido = true;
     }
     public function ApagarVehiculo(){
        $this->motorEnsendido = false;
     }
     public function arrancar(){
        if ($this->motorEnsendido) {
            echo"<br>el vehiculo debe arrancar";
        }else{
            echo"<br>primero debe de encender el vehiculo";
        }
           
        }
     }
     



