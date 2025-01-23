<?php
session_start();
session_destroy();//destruye la sesion
header("Location:index.php");
?>