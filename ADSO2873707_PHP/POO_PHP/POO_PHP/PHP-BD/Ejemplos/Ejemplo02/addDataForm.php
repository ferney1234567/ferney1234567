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
        <h2>Operar numeros</h2>
        <form action="addData.php" method="POST">
            <div class="form-group">
                <label for="nombre">Nombre</label>
                <input type="text" name="nombre" id="nombre">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" id="email">
            </div>
            <div class="form-group">
                <label for="peso">Peso</label>
                <input type="number" name="peso" id="peso">
            </div>
            <div class="form-group">
                <label for="cantidadHijos">Cantidad de Hijos</label>
                <input type="number" name="cantidadHijos" id="cantidadHijos">
            </div>
            <div class="form-group">
                <input type="submit" value="Crear">
                <a href="viewData.php">Volver</a>
            </div>
        </form>
    </div>
</body>
</html>