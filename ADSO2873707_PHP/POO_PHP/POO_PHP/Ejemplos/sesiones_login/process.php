<?php
session_start();

$tipoUsuario = $_POST["tipoUsuario"]?? null;
$nombre = $_POST["nombre"]?? null;
$password = $_POST["password"]?? null;

//Creasion sessiones en el servidor
$_SESSION['tipoUsuario'] = $tipoUsuario;
$_SESSION['nombre'] = $nombre;
?>
<!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Checkbox 1</title>
        <link rel="stylesheet" href="css/styles.css">
    </head>

    <body>
        <div class="form-container">
            <h2>Sesion creada con exito</h2>
            <a href="visualizarSesion.php">visualizar Sesion</a>
        </div>
    </body>