<?php
require_once 'class/auto.php';
require_once 'class/moto.php';
$marca = "Yamaha";
$cantRuedas = 2;
$motorEnc = true;
$precio = 2500000;


$moto1 = new moto($cantRuedas,$marca,$precio,$motorEnc);
$moto1->arrancar();
$moto1->apagarVehiculo();
$moto1->arrancar();

/***************** */

$marca = "mini cooper";
$cantRuedas = 4;
$motorEnc = true;
$cantPuertas = 2;

$auto1 = new auto($cantPuertas, $cantRuedas, $marca, $precio, $motorEnc);
echo "<hr>datos vehiculo";
echo "<br>marca: $marca: ".$auto1->getmarca();
echo "<br>precio: $precio: ".$auto1->getprecio();
echo "<br>cantPuertas: $: ".$auto1->getcantidadPuertas();
