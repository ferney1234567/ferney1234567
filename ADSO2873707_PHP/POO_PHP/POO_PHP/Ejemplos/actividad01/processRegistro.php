<?php
session_start();

$número_de_cuenta = $_POST["número_de_cuenta"]?? null;
$nombre_titular = $_POST["nombre_titular"]?? null;
$saldo = $_POST["saldo"]?? null;
$tipo_de_cuenta = $_POST["tipo_de_cuenta"]?? null;

if (!isset($_SESSION['listaUsuarios'])) {
    $_SESSION['listaUsuarios'] = [];
}
$listaUsuarios = $_SESSION['listaUsuarios'];
$newUser = [
    "número_de_cuenta" => $número_de_cuenta,
    "nombre_titular" => $nombre_titular,
    "saldo" => $saldo,
    "tipo_de_cuenta" => $tipo_de_cuenta
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
        <link rel="stylesheet" href="css/login.css">
    </head>

    <body>
        <div class="form-container">
            <h2>Cuenta registrada con exito</h2>
            <a href="processLogin.php">Iniciar Sesion</a>
        </div>
    </body>