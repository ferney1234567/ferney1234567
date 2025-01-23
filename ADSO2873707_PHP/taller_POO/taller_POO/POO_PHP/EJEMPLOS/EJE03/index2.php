<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Vehiculos</title>
</head>
<body>
<div class="form-container">
    <h1>Registro de Vehiculos</h1>
    <form action="process.php" method="POST">
        
         <div class="form-group">
         <label for="txttipovehiculo">
        <select  class= "select-css" name="txtCiudad" id="lang">
        <option value="cali">Cali</option>
        <option value="cartagena">Cartagena</option>

      </select>
            </div>

            <div class="form-group">
            <label for="txtTipovehiculo">Tipo vehiculo:</label>
            <input type="text" name="txtvehiculo" id="txtName">
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
            <label for="txtDate">Fecha de Nacimiento:</label>
            <input type="date" name="txtDate" id="txtDate">
        </div>
        <button type ="submit">Crear</button>
        </div>
      
        
    </form>
     </div>

</body>
</html>