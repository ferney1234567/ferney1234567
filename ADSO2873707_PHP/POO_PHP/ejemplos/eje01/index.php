<?php
//incluir la clase
require_once'class/persona.php';

//crear un objeto de la clase persona
$persona1 = new Persona();
$persona1->nombre = "Ana";
$persona1->email = "ana@gmail.com";
$persona1->edad = 20;

/*
//mostrar resultados
echo "<br>nombre".$persona1->nombre;
print("<br>email:".$persona1->email);
echo <<<TEXT
    <br>edad:$persona1->edad;
TEXT;
*/


$persona1->saludar();
$persona2 = new Persona("paco","paco@gmnail.com",20);
$persona2->saludar();
unset($persona1);

