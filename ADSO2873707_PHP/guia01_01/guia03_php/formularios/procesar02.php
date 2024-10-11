<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    *{
    margin: 0;
    border: 0;
    padding: 0;
    box-sizing: border-box;
    vertical-align: baseline;
}
body , html{
    height: 100%;/*centra en el eje horizontal */
    display: flex;
    justify-content: center;/*centra en el eje horizontal */
    align-items: center;/*centra en el eje vertical */

}
.info-container{
    border: 1px solid #ccc;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgb(0, 0, 0);
    
}
.info-container label{
    display: block;
    margin-top: 10px;
}
</style>
<body>
    <?php
    //validacion de existenciacon metodo issst()y operador ternario
    $nombre = isset($_POST['txtName'])? $_POST ['txtName']: null;
    $email = isset($_POST['txtCorreo'])? $_POST ['txtCorreo']: null;

    //validacion de existencia con operador nulo seguro de php
    $telefono = $_POST['txtTelefono']?? null ;
    $fechaNacimiento  = $_POST['txtFecha']?? "";
    ?>
    <div class="info-container">
        <label for="">Nombre <?php echo $nombre; ?></label>
        <label for="">Email <?php echo $email; ?></label>
        <label for="">Telefono <?php echo $telefono; ?></label>
        <label for="">Fecha de Nacimiento <?php echo $fechaNacimiento; ?></label>
    </div>

</body>
</html>