<?php
require_once'class/moto.php';
require_once'class/auto.php';

$cantidadRuedas = 2;
$marca = "yamaha";
$precio = 234545;
$motorEnsendido = true ;

$moto1 = new Moto($cantidadRuedas,$marca,$precio,$motorEnsendido);


$moto1->arrancar();
$moto1->ApagarVehiculo();
$moto1->arrancar();

//---------------------------------------------------------------------


$cantidadRuedas = 4;
$marca = "mini cooper";
$precio = 234545;
$motorEnsendido = true ;
$cantidad_puertas = 4;

 $auto1 = new Auto($cantidad_puertas,$cantidadRuedas,$marca,$precio,$motorEnsendido);
 echo "<hr>Datos vehiculo";
 echo"<br>Marca:".$auto1->GetMarca();
 echo"<br>Cantidad de Ruedas:".$auto1->GetCantidadRuedas();
 echo"<br>Precio:".$auto1->GetPrecio();
 echo"<br>Cantidad de puertas:".$auto1->GetCantidadPuertas();
 
