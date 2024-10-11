<?php
date_default_timezone_set('America/Bogota');// cambia la zona horaria

$num = rand(0, 10);
echo "numero generado ".$num;
echo "<br>";
echo "numero generado $num";
echo "<br>";
echo 'numero generado '.$num;
echo "<br>";
if ($num <= 50) {
    echo "el numero $num es menor a 50";
}else{
    echo "el numero $num es mayor a 50";
}
    

?>