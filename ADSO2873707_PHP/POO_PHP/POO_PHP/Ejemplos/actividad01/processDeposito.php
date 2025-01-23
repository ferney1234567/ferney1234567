<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<?php
session_start();

$número_de_cuenta = $_POST["número_de_cuenta"]?? null;
$nombre_titular = $_POST["nombre_titular"]?? null;
$saldo = $_POST["saldo"]?? null;
$tipo_de_cuenta = $_POST["tipo_de_cuenta"]?? null;
$deposito = isset($_POST["deposito"])? $_POST["deposito"] : null;

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
<?php
include 'cuenta.php';

$cuentita = new Cuenta($número_de_cuenta, $nombre_titular, $saldo, $tipo_de_cuenta);
$cuentita->deposito($deposito);

?>
</body>
</html>