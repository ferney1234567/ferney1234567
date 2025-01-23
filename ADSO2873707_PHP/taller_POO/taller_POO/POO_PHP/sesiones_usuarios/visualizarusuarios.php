<?php
session_start();
$listaUsuarios = $_SESSION['listausuarios'] ?? null;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
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

/* Contenedor principal del formulario */
.form-container {
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 600px;
    text-align: center;
}

/* Título y encabezados */
h2 {
    font-size: 24px;
    margin-bottom: 20px;
    color: #333;
}

p {
    font-size: 16px;
    color: #555;
    margin: 10px 0;
}

/* Estilo para cada usuario */
.user-element {
    background-color: #f9f9f9;
    padding: 15px;
    margin-bottom: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

/* Enlaces de acción */
a {
    font-size: 16px;
    color: #3498db;
    text-decoration: none;
    margin-top: 15px;
    display: inline-block;
}

a:hover {
    text-decoration: underline;
}

/* Estilos para los botones de cerrar y eliminar sesión */
.form-group a {
    padding: 10px 15px;
    background-color: #3498db;
    color: white;
    border-radius: 5px;
    font-size: 16px;
    display: inline-block;
    margin-top: 10px;
    text-align: center;
}

.form-group a:hover {
    background-color: #2980b9;
}

</style>
<body>
    <div class="form-container">
        <?php
        if (isset($listaUsuarios) && $listaUsuarios != null) {
            foreach ($listaUsuarios as $clave => $valor) { ?>
            <div class="user-element">
                <p>Tipo de usuario: <?php echo $valor["tipouser"]; ?></p>
                <p>Usuario: <?php echo $valor["user"]; ?></p>
                <p>Contraseña: <?php echo $valor["password"]; ?></p>
                <p>Dirección: <?php echo $valor["direccion"]; ?></p>
                <p>Teléfono: <?php echo $valor["telefono"]; ?></p>
            </div>
            <?php } ?>
            <div class="form-group">
                <a href="cerrarsesion.php">Cerrar sesión</a>
                <a href="eliminarsesion.php">Eliminar sesión</a>
            </div>
        <?php 
        } else {
            echo "<p>No existen usuarios</p>";
            echo '<a href="index.php">Iniciar sesión</a>';
        }
        ?>
    </div>
</body>
</html>
