<?php
require_once 'connection.php';

echo "Inserte datos";
 $nombre = "kofi";
 $email = "kofi@gmail.com";
 $peso = 60.5;
 $cantidadHijos = 2;

 // PREPARE
 $sqlPDO = $dbPDO->prepare("INSERT INTO clientes
 (nombre,email,peso,cantidadHijos) VALUES (:nombre, :email, :peso, :cantidadHijos)");

 // BIND
 $sqlPDO->bindParam(":nombre",$nombre);
 $sqlPDO->bindParam(":email",$email);
 $sqlPDO->bindParam(":peso",$peso);
 $sqlPDO->bindParam(":cantidadHijos",$cantidadHijos);

 // EXECUTE
 $sqlPDO->execute();
?>