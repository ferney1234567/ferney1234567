<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
   <div class="container">
    <?php
    $dia = date("d");
    if ($dia <= 10) {
        echo "sitio activo";
        } else {
            echo "sitio  fuera del servidor";
            echo "<br>";
            echo "<p> hola </p>";
        }   
    ?>
   </div>

   <div>
   <?php
   echo date("d-M-y");
   ?>
   </div>
</body>
</html>
