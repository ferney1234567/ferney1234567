<?php
include_once 'config.php';

 try {
    $dbPDO = new PDO(DRIVER.":host=".HOST.";dbname=".DB_NAME,USER,PASSWORD);
    $dbPDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
 } catch (PDOException $ex) {
    echo $ex->getMessage();
    throw $ex;
 }
?>