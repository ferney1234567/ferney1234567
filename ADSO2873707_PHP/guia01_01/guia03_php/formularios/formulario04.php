<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Usuario</title>
</head>
<body>
<div class="form-container">
    <h1>Crear Usuario</h1>
    <form action="procesar05.php" method="POST">
        <div class="form-group">
            <label for="txtName">Nombre:</label>
            <input type="text" name="txtName" id="txtName">
        </div>

        <div class="form-group">
            <label for="txtCedula">Cédula:</label>
            <select class="select-css" name="txtCedula" id="txtCedula">
                <option value="C.C">Cédula de Ciudadanía</option>
                <option value="C.I">Tarjeta de Identidad</option>
                <option value="T.E">Tarjeta Extranjera</option>
            </select>
        </div>

        <div class="form-group">
            <label for="txtTelefono">Teléfono:</label>
            <input type="number" name="txtTelefono" id="txtTelefono">
        </div>

        <div class="form-group">
            <label for="txtCorreo">Correo:</label>
            <input type="email" name="txtCorreo" id="txtCorreo">
        </div>

        <div class="form-group">
            <label>Estudios:</label>
            <div>
                <input type="radio" name="txtRadio" value="No Tiene Estudios" id="noEstudios">
                <label for="noEstudios">No Tiene Estudios</label>
            </div>
            <div>
                <input type="radio" name="txtRadio" value="Estudios Primarios" id="primarios">
                <label for="primarios">Estudios Primarios</label>
            </div>
            <div>
                <input type="radio" name="txtRadio" value="Estudios Secundarios" id="secundarios">
                <label for="secundarios">Estudios Secundarios</label>
            </div>
        </div>

        <button type="submit">Crear</button>
    </form>
</div>
</body>
</html>
