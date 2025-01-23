<?php
session_start();
$listaUsuarios = $_SESSION['listaUsuarios'] ?? null;
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
            if (isset($listaUsuarios) && $listaUsuarios != null){
            foreach ($listaUsuarios as $clave => $valor) {
            ?>
            <div class="user-element">
                <p>TipoUsuario: <?php echo $valor["tipoUsuario"]?></p>
                <p>Nombre: <?php echo $valor["nombre"]?></p>
                <p>Password: <?php echo $valor["password"]?></p>
                <p>Direccion: <?php echo $valor["direccion"]?></p>
                <p>Telefono: <?php echo $valor["telefono"]?></p><br>
            </div>
            <?php } }else {
                echo "<p>No existen usuarios</p>";
                echo "<a href='index.php'>Iniciar Sesion</a>";
            }?>
            <a href="index.php">Volver</a>
            <a href="eliminate.php">Destruir Usuarios</a>
        </div>
    </body>