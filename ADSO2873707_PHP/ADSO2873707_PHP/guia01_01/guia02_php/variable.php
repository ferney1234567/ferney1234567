<?php
 //php
 // lenguaje del lado del servidor
 // debilmente tipado

 $nombre = "Ferney arias"; //cadena
 $peso =  54; // decimal
 $estado = false; //booleana
 $dia = 7;     //int

 //if y else  corto
 $estadoTxt = ($estado)? "Activo" : "Inactivo";

 // segunda forma de hacerse
 //if ($estado == false) {
  //  $estadoTxt = "Activo";
   // } else {
   //     $estadoTxt = "Inactivo";
 //}

 echo "Nombre:  $nombre : <br>
 peso $peso : <br>
 Estado $estadoTxt :  <br>
  Dia $dia :  <br>";

  $nombre = 123;
  echo "<br> $nombre";
   
  echo"<br>";
  $arrayFrutas = ["manzana", "pera","mango", "piña"];
  echo "<pre>";
  print_r($arrayFrutas);
  echo "<pre>";

  ?>



