<?php
define("DRIVER","mysql");
define("HOST","localhost");
define("DB_NAME","clientesDB");
define("USER","root");
define("PASSWORD","");

 try {
    $dbPDO = new PDO(DRIVER.":host=".HOST.";dbname=".DB_NAME,USER,PASSWORD);
    $dbPDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    print_r($dbPDO);
 } catch (PDOException $ex) {
    echo $ex->getMessage();
    throw $ex;
 }

 $nombre = "Levia";
 $email = "leviatank09@gmail.com";
 $peso = 60.5;
 $cantidadHijos = 2;

 // PREPARE
 $sqlPDO = $dbPDO->prepare("INSERT INTO clientes
 (nombre,email,peso,cantidadHijos) VALUES (?, ?, ?, ?)");

 // BIND
 $sqlPDO->bindParam(1,$nombre);
 $sqlPDO->bindParam(2,$email);
 $sqlPDO->bindParam(3,$peso);
 $sqlPDO->bindParam(4,$cantidadHijos);

 // EXECUTE
 $sqlPDO->execute();
?>