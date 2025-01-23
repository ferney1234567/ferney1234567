<?php
session_start();
session_destroy(); // destruye la sesion 
// funcion que redirige a una página específica 
// en este caso añl index.php
header("location:index.php");