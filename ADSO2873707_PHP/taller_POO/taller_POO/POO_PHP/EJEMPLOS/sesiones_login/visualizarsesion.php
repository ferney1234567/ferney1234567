<?php
session_start();
$tipouser = $_SESSION['tipouser'] ?? null;
$user = $_SESSION['user'] ?? null;
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styles.css">
    <title>Document</title>
</head>
<body>
    <div class="form-container">
        <?php if($tipouser!= null && $user!=null){?>
        <h2>Bienvenido <?php echo $user;?></h2>
        <p>Usted tiene un rol de <?php echo $tipouser ?></p>
        <?php }else{ ?>
        <?php } ?>
        <a href="index.php">Regresar</a>
    </div>
</body>
</html>