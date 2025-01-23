<?php
require_once 'vehiculo.php';

class Auto extends Vehiculo{
    private $cantidad_puertas;

    public function __construct($_cantidad_puertas,$_CantidaRuedas = null, $_marca = null, $_precio = null, $_motorEnsendido = null){
        $this->cantidad_puertas = $_cantidad_puertas;
        parent::__construct($_CantidaRuedas , $_marca , $_precio , $_motorEnsendido);
    }
     //metodo set
     public function setCantidad_Puertas($cantidad_puertas){
        $this->cantidad_puertas = $cantidad_puertas;
     }
     //metodo get
     public function GetCantidadPuertas(){
        return $this->cantidad_puertas;
     }
}