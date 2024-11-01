<?php
require_once'class/producto.php';

//crear el objeto producto
$id = 1;
$nombre = "Portatil";
$precio = 200000;
$descripcion = "equipo de compotu";

//crear el objeto producto
$producto1 = new Producto($id,$nombre,$precio,$descripcion);
echo "<br> Id: ".$producto1->getId();
echo "<br> Nombre: ".$producto1->GetNombre();
echo "<br> Precio: ".$producto1->GetPrecio();
echo "<br> Descripcion: ".$producto1->GetDescripcion();
