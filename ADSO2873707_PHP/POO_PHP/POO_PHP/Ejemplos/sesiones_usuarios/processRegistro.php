<?php
session_start();

$tipoUsuario = $_POST["tipoUsuario"]?? null;
$nombre = $_POST["nombre"]?? null;
$password = $_POST["password"]?? null;
$direccion = $_POST["direccion"]?? null;
$telefono = $_POST["telefono"]?? null;

if (!isset($_SESSION['listaUsuarios'])) {
    $_SESSION['listaUsuarios'] = [];
}
$listaUsuarios = $_SESSION['listaUsuarios'];
$newUser = [
    "tipoUsuario" => $tipoUsuario,
    "nombre" => $nombre,
    "password" => $password,
    "direccion" => $direccion,
    "telefono" => $telefono
];
$listaUsuarios[] = $newUser;//Se agrega un nuevu user al array
$_SESSION['listaUsuarios'] = $listaUsuarios;
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
            <h2>Usuario registrados con exito</h2>
            <a href="index.php">Iniciar Sesion</a>
        </div>
    </body>