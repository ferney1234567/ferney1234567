<?php
session_start();

$tipouser = $_POST['txttipouser'] ?? null;
$user = $_POST['txtuser'] ?? null;
$password = $_POST['txtpassword'] ?? null;

//creamos las sesiones en nuestro servidor 
$_SESSION['tipouser'] = $tipouser;
$_SESSION['user'] = $user;
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styles.css">
    <title>Document</title>
</head>
<body>
    <div class="form-container">
        <h2>sesion creada con exito</h2>
        <a href="visualizarsesion.php">visualizar sesion</a>
    </div>
</body>
</html>
