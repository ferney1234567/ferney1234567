<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuario Creado</title>
</head>
<body>

<?php
// Validación de existencia con operador nulo seguro de PHP
$nombre = $_POST['txtName'] ?? 'No especificado';
$email = $_POST['txtCorreo'] ?? 'No especificado';
$telefono = $_POST['txtTelefono'] ?? 'No especificado';
$cedula = $_POST['txtCedula'] ?? 'No especificado';
$radio = $_POST['txtRadio'] ?? 'No especificado';
?>

<div class="info-container">
    <label for="">Nombre: <?php echo htmlspecialchars($nombre); ?></label><br>
    <label for="">Correo: <?php echo htmlspecialchars($email); ?></label><br>
    <label for="">Teléfono: <?php echo htmlspecialchars($telefono); ?></label><br>
    <label for="">Cédula: <?php echo htmlspecialchars($cedula); ?></label><br>
    <label for="">Nivel de estudios: <?php echo htmlspecialchars($radio); ?></label>
</div>

</body>
</html>
