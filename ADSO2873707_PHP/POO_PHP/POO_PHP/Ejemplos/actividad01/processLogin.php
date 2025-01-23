<?php
session_start();

$número_de_cuenta = $_POST["número_de_cuenta"]?? null;
$nombre_titular = $_POST["nombre_titular"]?? null;
$saldo = $_POST["saldo"]?? null;
$tipo_de_cuenta = $_POST["tipo_de_cuenta"]?? null;

$listaUsuarios = $_SESSION['listaUsuarios']?? null;

$existe = false;
if (isset($listaUsuarios) && count($listaUsuarios)>0) {
    foreach ($listaUsuarios as $clave => $valor){
        if ($valor["nombre_titular"]==$nombre_titular && $valor["saldo"]==$saldo && $valor['número_de_cuenta']==$número_de_cuenta && $valor['tipo_de_cuenta']==$tipo_de_cuenta) {
            $existe = true;
            $_SESSION['nombre_titular'] = $nombre_titular;
            $_SESSION['número_de_cuenta'] = $número_de_cuenta;
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
    <link rel="stylesheet" href="css/login.css">
    <style>
  
    </style>
</head>

<body>
    <div class="form-container">
        <?php if ($existe) { ?>
            <h2>Bienvenido(a), <?php echo $nombre_titular; ?>!</h2>
            <p>Usted es un <?php echo $tipo_de_cuenta; ?></p>
            <?php if ($tipo_de_cuenta == "admin") {
                echo '<a href="Secreto.php" class="menu-item">Secreto</a>';
            } ?>
            <nav class="menu">
                <a href="index.php" class="menu-item">Cerrar Sesión</a>
                <a href="formulario.php" class="menu-item">Formularios</a>
                <a href="deposito.php" class="menu-item">Depósito</a>
                <a href="retirar.php" class="menu-item">Retiro</a>
                <a href="factura.php" class="menu-item">Factura</a>
                <a href="transferencia.php" class="menu-item">Transferencia</a>
            </nav>
        <?php } else { ?>
            <h2>Usuario y/o contraseña incorrectos</h2>
            <a href="index.php" class="menu-item">Volver</a>
        <?php } ?>
    </div>
</body>

</html>
