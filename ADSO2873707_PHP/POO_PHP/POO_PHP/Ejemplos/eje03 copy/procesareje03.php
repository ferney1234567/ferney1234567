<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<?php
    $tipoVehiculo = isset($_POST["txtTipoVehiculo"])? $_POST["txtTipoVehiculo"] : null;
    $ruedas = isset($_POST["txtRuedas"])? $_POST["txtRuedas"] : null;
    $marca = isset($_POST["txtMarca"])? $_POST["txtMarca"] : null;
    $precio = isset($_POST["txtPrecio"])? $_POST["txtPrecio"] : null;
    $puertas = isset($_POST["txtPuertas"])? $_POST["txtPuertas"] : null;
    $operacion = $_POST["radioOperacion"] ?? null;
?>
<?php
if ($tipoVehiculo == "moto") {
    if ($operacion == 1) {
        echo "
        <div class='info-container'>
        <label for='' class='text'>Tipo de vehiculo: ".$tipoVehiculo."</label>
        <label for='' class='text'>Numero de ruedas: ".$ruedas."</label>
        <label for='' class='text'>Marca: ".$marca."</label>
        <label for='' class='text'>Precio: ".$precio."</label>
        <label for='' class='text'>Motor encendido: SI</label>
        </div>
        ";
    }else{
        echo "
        <div class='info-container'>
        <label for='' class='text'>Tipo de vehiculo: ".$tipoVehiculo."</label>
        <label for='' class='text'>Numero de ruedas: ".$ruedas."</label>
        <label for='' class='text'>Marca: ".$marca."</label>
        <label for='' class='text'>Precio: ".$precio."</label>
        <label for='' class='text'>Motor encendido: NO</label>
        </div>
        ";
    }
}else{
    if ($operacion == 1) {
        echo "
        <div class='info-container'>
        <label for='' class='text'>Tipo de vehiculo: ".$tipoVehiculo."</label>
        <label for='' class='text'>Numero de ruedas: ".$ruedas."</label>
        <label for='' class='text'>Marca: ".$marca."</label>
        <label for='' class='text'>Precio: ".$precio."</label>
        <label for='' class='text'>Numero de puertas: ".$puertas."</label>
        <label for='' class='text'>Motor encendido: SI</label>
        </div>
        ";
    }else{
        echo "
        <div class='info-container'>
        <label for='' class='text'>Tipo de vehiculo: ".$tipoVehiculo."</label>
        <label for='' class='text'>Numero de ruedas: ".$ruedas."</label>
        <label for='' class='text'>Marca: ".$marca."</label>
        <label for='' class='text'>Precio: ".$precio."</label>
        <label for='' class='text'>Numero de puertas: ".$puertas."</label>
        <label for='' class='text'>Motor encendido: NO</label>
        </div>
        ";
    }
}
?>
</body>
</html>