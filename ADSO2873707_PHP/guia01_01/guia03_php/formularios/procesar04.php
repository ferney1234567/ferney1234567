<!DOCTYPE html>
<html lang="en">
<head>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    * {
        margin: 0;
        border: 0;
        padding: 0;
        box-sizing: border-box;
        vertical-align: baseline;
    }

    body,html {
        height: 100%;
        /*centra en el eje horizontal */
        display: flex;
        justify-content: center;
        /*centra en el eje horizontal */
        align-items: center;
        /*centra en el eje vertical */

    }

    .info-container {
        border: 1px solid black;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgb(0, 0, 0);

    }

    .info-container label {
        display: block;
        margin-top: 10px;
        color: black;
    }
    html{
        background-image: linear-gradient(to right,
        black, white,
        black);
    }
    </style>
</head>
<body>
    <?php
    $numero1 = isset($_POST["txtNumero1"])?$_POST['txtNumero1']:null;
    $numero2 = isset($_POST["txtNumero2"])?$_POST['txtNumero2']:null;
    $operacion =$_POST['radioOperacion']?? null;
    $textoOperacion = ($_POST['radioOperacion'] =="sumar")?"suma":"resta";
    $resultado = null;
    if ($textoOperacion == "suma") {
        $resultado = $numero1 + $numero2;
    }else{
        $resultado = $numero1 - $numero2;
    } 
    ?>

    <div class="info-container">
        <h2>Resultado de la operación</h2>
        <?php echo $resultado; ?>

        <p>
            El resultado de la <?php echo $textoOperacion; ?> es:
            <?php echo $resultado; ?>
        </p>
        <a href="radio.php">Regresar</a>
    </div>
</body>
</html>