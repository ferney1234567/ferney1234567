<?php
require_once 'vehiculo.php';

class auto extends vehiculo {
    private $cantPuertas;
    public function __construct($_cantPuertas=null,$_cantidadRuedas = null, $_marca = null, $_precio = null, $_motorEncendido = null)
    {
        $this->cantPuertas = $_cantPuertas;
        parent::__construct($_cantidadRuedas,$_precio,$_marca,$_motorEncendido);
    }

    public function setcantidadPuertas($_cantPuertas) {
        $this->cantPuertas = $_cantPuertas;
    }
    public function getcantidadPuertas(){
        return $this->cantPuertas;
    }

}










