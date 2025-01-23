<?php
session_start();

$tipoUsuario = $_SESSION['tipoUsuario'] ?? null;
$nombre = $_SESSION['nombre'] ?? null;
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
            <?php
            if ($tipoUsuario != null && $nombre != null) {
            ?>
            <h2>Bienvenido(a) <?php echo $nombre;?></h2>
            <p>Usted tiene un rol de <?php echo $tipoUsuario;?></p>
            <?php }else {?>
            <p>Usted no tiene acceso a esta seccion</p>
            <?php } ?>
            <a href="index.php">Regresar</a>
        </div>
    </body>