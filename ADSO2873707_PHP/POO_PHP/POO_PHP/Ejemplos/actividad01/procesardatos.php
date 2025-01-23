<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
      
    </style>
</head>
<body>
<?php
    $nombre = isset($_POST["nombre"])? $_POST["nombre"] : null;
    $sueldo = isset($_POST["sueldo"])? $_POST["sueldo"] : null;
    $email = isset($_POST["email"])? $_POST["email"] : null;
    $fecha_de_nacimiento = isset($_POST["fecha_de_nacimiento"])? $_POST["fecha_de_nacimiento"] : null;
    $peso = isset($_POST["peso"])? $_POST["peso"] : null;
    $altura = isset($_POST["altura"])? $_POST["altura"] : null;
?>
<?php
include 'EmpleadoClass.php';

$empleadito = new Empleado($nombre, $sueldo, $email, $fecha_de_nacimiento, $peso, $altura);
$empleadito->impuestos();
$empleadito->inicializar();

?>
</body>
</html>