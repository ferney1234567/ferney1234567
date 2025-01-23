<?php
session_start();

$tipoUsuario = $_POST["tipoUsuario"]?? null;
$nombre = $_POST["nombre"]?? null;
$password = $_POST["password"]?? null;

$listaUsuarios = $_SESSION['listaUsuarios']?? null;

$existe = false;
if (isset($listaUsuarios) && count($listaUsuarios)>0) {
    foreach ($listaUsuarios as $clave => $valor){
        if ($valor["nombre"]==$nombre && $valor["password"]==$password && $valor['tipoUsuario']==$tipoUsuario) {
            $existe = true;
            $_SESSION['nombre'] = $nombre;
            $_SESSION['tipoUsuario'] = $tipoUsuario;
        }
    }
}
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
            <?php if ($existe) {?>
            <h2>Bienvenido(a)! <?php echo $nombre;?></h2>
            <p>Usted es un <?php echo $tipoUsuario;?></p>
            <?php if ($tipoUsuario == "administrativo") {
                echo '<a href="visualisarUsuario.php">Ver Usuarios</a>';
            }?>
            <a href="cerrarSesion.php">Cerrar Sesion</a>
            <?php }else{ ?>
                <h2>Usuario y/o contraseña incorrectos</h2>
                <a href="index.php">volver</a>
            <?php } ?>
        </div>
    </body>