<?php
require_once "connection.php";

$idEdit = $_GET["id"] ?? -1;


$sqlPDO = $dbPDO->prepare("SELECT * FROM clientes WHERE id=:id ");
// Se especifica el fetch mode para obtener los datos
$sqlPDO->setFetchMode(PDO::FETCH_OBJ);

$sqlPDO->bindParam(":id",$idEdit);
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
        <h2>Lista Clientes</h2>
        <form action="updateData.php" method="POST">
        <?php
        //Ciclo para recorrer todos los clientes
        while ($row = $sqlPDO->fetch()) {
            echo "<div class='card-container'>";
                echo "<div class='form-group'>";
                    echo "<label for='nombre'>Nombre</label>";
                    echo "<input name='nombre' id='nombre' value='$row->nombre'>";
                echo "</div>";
                echo "<div class='form-group'>";
                    echo "<label for='email'>Email</label>";
                    echo "<input name='email' id='email' value='$row->email'>";
                echo "</div>";
                echo "<div class='form-group'>";
                    echo "<label for='peso'>Peso</label>";
                    echo "<input name='peso' id='peso' value='$row->peso'>";
                echo "</div>";
                echo "<div class='form-group'>";
                    echo "<label for='cantidadHijos'>Cantidad de Hijos</label>";
                    echo "<input name='cantidadHijos' id='cantidadHijos' value='$row->cantidadHijos'>";
                echo "</div>";
            echo "</div>";
        }
        ?>
            <div class="form-group">
                <input type="submit" value="Crear">
                <a href="viewData.php">Volver</a>
            </div>
        </form>
    </div>
</body>

</html>