<?php
require_once 'class/producto.php';
//VARIABLES CON DATOS
$id = 1;
$nombre = "portátil";
$precio = 2000000;
$descripcion = "equipo de computo";
// creacion del objeto producto
$prod1 = new producto($id,$nombre,$precio,$descripcion);
   echo "<br>Id: ".$prod1->getId();
   echo "<br>nombre: ".$prod1->getnombre();
   echo "<br>precio: ".$prod1->getprecio();
   echo "<br>descripcion: ".$prod1->getdescripcion();


