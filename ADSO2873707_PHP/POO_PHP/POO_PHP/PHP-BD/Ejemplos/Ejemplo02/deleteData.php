<?php
require_once 'connection.php';
$idDelete = $_GET["id"] ?? -1;

$sqlPDO = $dbPDO->prepare("DELETE FROM clientes WHERE id=:id");
$sqlPDO->bindParam(":id",$idDelete);
$sqlPDO->execute();
header("Location: viewData.php");

?>