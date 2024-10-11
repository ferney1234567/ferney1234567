<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>formulario 2</title>
    <link rel="stylesheet" href="css/estilos02.css">
</head>
<body>
<div class="form-container">
    <h1>Crear Usario</h1>
    <form action="procesar02.php" method="POST">
        <div class="form-group">
            <label for="txtName">Nombre:</label>
            <input type="text" name="txtName" id="txtName">
        </div>
        <div class="form-group">
            <label for="txtCorreo">correo:</label>
            <input type="email" name="txtCorreo" id="txCorreo">
        </div>
        <div class="form-group">
            <label for="txtTelefono">Telefono:</label>
            <input type="number" name="txtTelefono" id="txtTelefono">
        </div>
        <div class="form-group">
            <label for="txtFecha">Fecha De Nacimiento:</label>
            <input type="date" name="txtFecha" id="txtFecha">

          
        </div>
        <button type ="submit">Crear</button>
    </form>
     </div>

</body>
</html>