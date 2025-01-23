<?php
    require_once 'class/Producto.php';

    $id = 1;
    $nombre = "Coca";
    $precio = 2000;
    $descripcion = "Coca cola sabor clasico";

    //Creacion objeto producto
    $item1 = new Producto($id,$nombre,$precio,$descripcion);
    echo "Id: ".$item1->getId();
    echo "<br>Nombre: ".$item1->getNombre();
    echo "<br>Precio: ".$item1->getPrecio();
    echo "<br>Descripcion: ".$item1->getDescripcion();
?>