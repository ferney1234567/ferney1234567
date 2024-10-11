<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    * {
        margin: 0;
        border: 0;
        padding: 0;
        box-sizing: border-box;
        vertical-align: baseline;
    }

    body,html {
        height: 100%;
        /*centra en el eje horizontal */
        display: flex;
        justify-content: center;
        /*centra en el eje horizontal */
        align-items: center;
        /*centra en el eje vertical */

    }

    .info-container {
        border: 1px solid black;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgb(0, 0, 0);

    }

    .info-container label {
        display: block;
        margin-top: 10px;
        color: black;
    }
    html{
        background-image: linear-gradient(to right,
        black, white,
        black);
    }
    
</style>

<body>
<?php
// Validación de existencia con operador nulo seguro de PHP
$nombre = $_POST['txtName'] ?? null;
$email = $_POST['txtCorreo'] ?? null;
$telefono = $_POST['txtTelefono'] ?? null;
$fechaNacimiento = $_POST['txtDate'] ?? null;
$ciudad = $_POST['txtCiudad'] ?? null;

// Calcular la edad
if ($fechaNacimiento) {
    $date = new DateTime($fechaNacimiento);
    $now = new DateTime();
    $age = $now->diff($date)->y; // Obtiene la diferencia en años

    if ($age >= 18) {
        echo "
        <div class='info-container'>
            <label>Nombre: $nombre</label>
            <label>Email: $email</label>
            <label>Telefono: $telefono</label>
            <label>Fecha de Nacimiento: $fechaNacimiento</label>
            <label>Ciudad: $ciudad</label>
            <label>Edad: $age</label>
            <br>
            <p>Usted es mayor de edad.</p>
        </div>";
    } else {
        echo "
        <div class='info-container'>
            <label>Nombre: $nombre</label>
            <label>Email: $email</label>
            <label>Telefono: $telefono</label>
            <label>Fecha de Nacimiento: $fechaNacimiento</label>
            <label>Ciudad: $ciudad</label>
            <label>Edad: $age</label>
            <br>
            <p>Usted es menor de edad.</p>
            
        </div>";
    }
} else {
    echo "<div class='info-container'>No se proporcionó una fecha de nacimiento.</div>";
}
?>

    </div>
    




</body>

</html>