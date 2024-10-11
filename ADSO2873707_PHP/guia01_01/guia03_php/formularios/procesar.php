<?php

//array nativos de php
// $_POST   [] -> array con los datos enviar por post
// $_GET[] -> array con los datos enviar por get
// $_REQUEST[] -> array con los datos enviados por get y post


$nombre = $_POST["txtName"];
$email = $_POST["txtEmail"];

echo "su nombre es $nombre <br>";
echo "su email es $email <br>";