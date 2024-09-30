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
    date_default_timezone_set("America/Bogota");
    $meses = array ("enero","febrero","marzo","abril","mayo","junio","julio","agosto","septiembre","octubre","noviembre","diciembre");
    echo"hoy es ";echo date("d"); echo " de "; echo $meses[date('n')-1]; echo " de "; echo date("Y"); echo " y son las ";echo date("g:ia" );
   
    ?>
   </div>

   <div>
  
</body>
</html>
