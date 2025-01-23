<?php
// Incluir la clase persona
require_once 'class/persona.php';

//crear un objeto de la clase persona
$person1 = new persona();
$person1->nombre = "Ana";
$person1->email = "ana@gmail.com";
$person1 ->edad = 25;
//mostrar resultados 
/*
echo "<br>Nombre: ".$person1->nombre;
print("<br>email: ".$person1->email);
echo <<<TEXT
    <br>Edad: $person1->edad 
TEXT; */
$person1->saludar();

/********************* */
unset($person1);
$person2 = new persona("Paco","paco@gmail.com",23);
$person2->saludar();