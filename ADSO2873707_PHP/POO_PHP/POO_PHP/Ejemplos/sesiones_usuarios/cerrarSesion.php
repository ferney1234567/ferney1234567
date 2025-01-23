<?php
session_start();
unset($_SESSION['nombre']);
unset($_SESSION['tipoUsuario']);
header("Location:index.php");
?>