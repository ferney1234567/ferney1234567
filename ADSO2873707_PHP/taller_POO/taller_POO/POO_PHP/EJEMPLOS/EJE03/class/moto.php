<?php
require_once 'vehiculo.php';
class moto extends vehiculo{
    public function __construct($_cantidadRuedas = null, $_marca = null, $_precio = null, $_motorEncendido = null)
    {
        parent::__construct($_cantidadRuedas,$_precio,$_marca,$_motorEncendido);
    }
}