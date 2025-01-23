<?php
require_once 'connection.php';
$nombre = $_POST['nombre'] ?? null;
$email = $_POST['email'] ?? null;
$peso = $_POST['peso'] ?? null;
$cantidadHijos = $_POST['cantidadHijos'] ?? null;

$sqlPDO = $dbPDO->prepare("UPDATE clientes SET nombre=:nombre, email=:email, peso=:peso, cantidadHijos=:cantidadHijos");

$sqlPDO->bindParam(":nombre",$nombre);
$sqlPDO->bindParam(":email",$email);
$sqlPDO->bindParam(":peso",$peso);
$sqlPDO->bindParam(":cantidadHijos",$cantidadHijos);

$sqlPDO->execute();
header("Location: viewData.php");
?>