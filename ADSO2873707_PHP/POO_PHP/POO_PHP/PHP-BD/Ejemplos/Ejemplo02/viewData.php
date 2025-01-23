<?php
require_once "connection.php";

$sqlPDO = $dbPDO->prepare("SELECT * FROM clientes");
// Se especifica el fetch mode para obtener los datos
$sqlPDO->setFetchMode(PDO::FETCH_OBJ);
// Ejecuta la consulta
$sqlPDO->execute();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/styles01.css">
</head>

<body>
    <div class="form-container">
        <a href="addDataForm.php">Insertar Cliente</a>
        <h2>Lista Clientes</h2>
        <?php
        //Ciclo para recorrer todos los clientes
        while ($row = $sqlPDO->fetch()) {
            echo "<div class='card-container'>";
                echo "<div class='item-card'>Nombre: $row->nombre</div>";
                echo "<div class='item-card'>Email: $row->email</div>";
                echo "<div class='item-card'>Peso: $row->peso</div>";
                echo "<div class='item-card'>Cantidad de Hijos: $row->cantidadHijos</div>";
                echo "<div class='btn-container'>";
                    echo "<a href='editData.php?id=$row->id'>Editar</a>";
                    echo "<a href='deleteData.php?id=$row->id'>Eliminar</a>";
                echo "</div>";
            echo "</div>";
        }
        ?>
    </div>
</body>

</html>