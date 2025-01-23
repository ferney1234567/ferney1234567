<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario 2</title>
    <link rel="stylesheet" href="css/estilo.css">
</head>

<body>
    <div class="form-container">
        <h2>Crear Vehiculo</h2>
        <div class="from-colum">
            <form action="procesareje03.php" method="post">
            <div class="form-group">
            <label for="txtTipoVehiculo">Tipo de Vehiculo</label>
            <label for="txtRuedas">Cantidad de ruedas</label>
            <label for="txtMarca">Marca</label>
            <label for="txtPrecio">Precio</label>
            <label for="txtPuertas">Cantidad de puertas</label>
            </div>
            <div class="form-group">
                
                <select name="txtTipoVehiculo" id="txtTipoVehiculo" class="select">
                    <option class="option" value="auto">Auto</option>
                    <option class="option" value="moto">Moto</option>
                </select>
            </div>
            <div class="form-group">
                
                <input type="text" name="txtRuedas" id="txtRuedas">
            </div>
            <div class="form-group">
                
                <input type="text" name="txtMarca" id="txtMarca">
            </div>
            <div class="form-group">
                
                <input type="text" name="txtPrecio" id="txtPrecio">
            </div>
            <div class="form-group">
                
                <input type="text" name="txtPuertas" id="txtPuertas">
            </div>
        </div>
            <div class="form-group">
                <label for="radioOperacion">Motor encendido</label>
                <a>Si</a><input type="radio" name="radioOperacion" value="1">
            </div>
            <div class="form-group">
                <a>No</a><input type="radio" name="radioOperacion" value="2">
            </div>
        
            <div class="form-group">
                <input type="submit" value="Crear">
            </div>
            </form>
    </div>
</body>
</html>