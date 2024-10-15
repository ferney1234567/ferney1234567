<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Operar Números</title>
    <link rel="stylesheet" href="css/estilos1.css">
</head>
<body>
    <div class="form-container">
        <h1>Operar Números</h1>
        <form action="checkbox1procesar1.php" method="POST">
            <div class="form-group">
                <label for="txtNumero1">Número 1:</label>
                <input type="text" name="txtNumero1" id="txtNumero1" >
            </div>
            <div class="form-group">
                <label for="txtNumero2">Número 2:</label>
                <input type="text" name="txtNumero2" id="txtNumero2">
            </div>
            <div class="form-group">
                <fieldset>
                    <legend>Seleccionar una operación</legend>
                    <label>
                        <input type="checkbox" name="operacion1" value="sumar"> Sumar
                    </label>
                    <label>
                        <input type="checkbox" name="operacion2" value="restar"> Restar
                    </label>      
                    <label>
                        <input type="checkbox" name="operacion3" value="multiplicar"> Multiplicar
                    </label>    
                    <label>
                        <input type="checkbox" name="operacion4" value="dividir"> Dividir
                    </label>
                    <div class="form-group">
                    <button type="submit">Crear</button>
                    </div>
                </fieldset>
            </div>
        </form>
    </div>
</body>
</html>
