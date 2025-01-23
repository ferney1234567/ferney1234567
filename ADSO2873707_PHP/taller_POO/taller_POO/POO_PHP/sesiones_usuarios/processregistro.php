<?php
session_start();
$tipouser = $_POST['txttipouser'] ?? null;
$user = $_POST['txtuser'] ?? null;
$password = $_POST['txtpassword'] ?? null;
$direccion = $_POST['txtdireccion'] ?? null;
$telefono = $_POST['txttelefono'] ?? null;




if (!isset($_SESSION['listausuarios'])) {
    $_SESSION['listausuarios'] = [];
}
$listaUsuarios = $_SESSION['listausuarios'];
$newUser = [
    "tipouser" => $tipouser,
    "user" => $user,
    "password" => $password,
    "direccion" => $direccion,
    "telefono" => $telefono,

];
$listaUsuarios[] = $newUser; // se agrega un nuevo usuario al array 
$_SESSION['listausuarios'] = $listaUsuarios; // se actualiza la sesion con la lista  usuarios  

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <title>Document</title>
</head>
<body>
    <div class="form-container">
        <h2>Usuario registrado con exito</h2>
        <a href="index.php">Iniicar sesion</a>
    </div>
</body>
</html>
