<?php
require_once 'class/vehiculo.php';

class Moto extends Vehiculo{
    public function __construct($_CantidaRuedas= null,$_marca = null ,$_precio = null, $_motorEnsendido= null){
        parent ::__construct($_CantidaRuedas,$_marca,$_precio , $_motorEnsendido);
    }
}