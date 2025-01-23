<?php
    //Incluir la class Persona
    require_once 'class/persona.php';

    //Crear objeto de la class Persona
    $amongus1 = new Persona();
    //Se asignan valores a los atributos
    $amongus1->nombre = "SUS";
    $amongus1->email = "Sus@gmail.com";
    $amongus1->edad = 25;
    //Ver resultados
    echo "Nombre: ".$amongus1->nombre;
    print("<br>Email: ".$amongus1->email);
    echo <<<SUS
        <br>Edad: $amongus1->edad<br><br>
    SUS;
    $amongus1->saludar();
    unset($amongus1);

    $amongus2 = new Persona("Mox", "mox08@gmail.com", 19);
    $amongus2->saludar();
?>