<?php
session_start();
$tipouser = $_POST['txttipouser'] ?? null;
$user = $_POST['txtuser'] ?? null;
$password = $_POST['txtpassword'] ?? null;

$listaUsuarios = $_SESSION['listausuarios'] ?? null;

$existe = false;
if (isset($listaUsuarios)&& count($listaUsuarios)>0) {
    foreach ($listaUsuarios as $clave => $valor) {
        if ($valor["user"]==$user && $valor["password"] ==$password && $valor['tipouser']==$tipouser) {
            $existe = true;
            $_SESSION['user'] = $user;
            $_SESSION['tipouser'] = $tipouser;
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro usuario</title>
    <style>
        /* Estilos generales para el cuerpo */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f7fc;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Contenedor del mensaje */
.form-container {
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 400px;
    text-align: center;
}

/* Título */
h2 {
    font-size: 24px;
    margin-bottom: 20px;
    color: #333;
}

/* Mensajes de error o éxito */
p {
    font-size: 16px;
    margin-bottom: 20px;
    color: #555;
}

/* Estilo de los enlaces */
a {
    font-size: 14px;
    color: #3498db;
    text-decoration: none;
    margin-top: 15px;
    display: inline-block;
}

a:hover {
    text-decoration: underline;
}

/* Botón de cerrar sesión */
a {
    padding: 10px 15px;
    background-color: #3498db;
    color: white;
    border-radius: 5px;
    font-size: 16px;
    display: inline-block;
    margin-top: 20px;
    text-align: center;
}

a:hover {
    background-color: #2980b9;
}

    </style>
</head>
<body>
    <div class="form-container">
        <?php if($existe) { ?>
            <h2>Bienvenido(a) <?php echo $user; ?> </h2>
            <p>Usted es un <?php echo $tipouser; ?></p>
            <?php if ($tipouser == "administrador") { ?>
                <a href="visualizarusuarios.php">Ver usuarios</a>
            <?php } ?>
            <a href="cerrarsesion.php">Cerrar sesión</a>
        <?php } else { ?>
            <h2>Usuario y/o contraseña incorrectos</h2>
            <a href="index.php">Iniciar sesión</a>
        <?php } ?>
    </div>
</body>
</html>
