<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Usuario</title>
    <style>
     
        body {
            font-family: 'Arial', sans-serif;
            background-color: #e9ecef;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        html{
        background-image: linear-gradient(to right,
        black, white,
        black);
    }

        .form-container {
            background-color: #ffffff;
            padding: 40px; /* Aumentar padding */
            border-radius: 15px; /* Aumentar bordes redondeados */
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Sombra más pronunciada */
            max-width: 600px; /* Aumentar ancho máximo del formulario */
            width: 100%;
        }

        h1 {
            text-align: center;
            color: #333;
            font-size: 28px; /* Aumentar tamaño de fuente */
            margin-bottom: 30px; /* Más espacio debajo del título */
        }

        .form-group {
            margin-bottom: 25px; /* Más espacio entre campos */
        }

        label {
            display: block;
            margin-bottom: 8px; /* Aumentar espacio debajo del label */
            font-size: 16px; /* Tamaño de fuente más grande */
            color: #555;
        }

        input[type="text"],
        input[type="number"],
        input[type="email"],
        .select-css {
            width: 100%;
            padding: 12px; /* Aumentar padding */
            border: 1px solid #ccc;
            border-radius: 10px; /* Bordes redondeados mayores */
            font-size: 16px; /* Texto más grande */
            transition: border-color 0.3s ease;
            box-sizing: border-box;
        }

        input:focus,
        .select-css:focus {
            border-color: #007bff;
            outline: none;
        }

        .select-css {
            appearance: none;
            background-color: #f8f9fa;
            cursor: pointer;
        }

        input[type="radio"] {
            margin-right: 10px;
            transform: scale(1.2); /* Aumentar tamaño de radio buttons */
        }

        button {
            width: 100%;
            padding: 15px; /* Aumentar padding */
            background-color: blue;
            color: white;
            border: none;
            border-radius: 10px; /* Bordes redondeados más pronunciados */
            font-size: 18px; /* Texto más grande */
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: darkblue; /* Color de hover ajustado */
        }

        input::placeholder {
            color: #999;
            font-style: italic;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h1>Registro de Vehículos</h1>
    <form action="process.php" method="POST">
        <div class="form-group">
            <label for="txtTipoVehiculo">Tipo de vehículo:</label>
            <select class="select-css" name="txtTipoVehiculo" id="txtTipoVehiculo">
                <option value="auto">Auto</option>
                <option value="moto">Moto</option>
            </select>
        </div>

        <div class="form-group">
            <label for="txtMarca">Marca:</label>
            <input type="text" name="txtMarca" id="txtMarca">
        </div>

        <div class="form-group">
            <label for="txtPrecio">Precio:</label>
            <input type="number" name="txtPrecio" id="txtPrecio">
        </div>

        <div class="form-group">
            <label for="txtCantidadRuedas">Cantidad de Ruedas:</label>
            <input type="number" name="txtCantidadRuedas" id="txtCantidadRuedas">
        </div>

        <div class="form-group">
            <label for="txtCantidadPuertas">Cantidad de Puertas:</label>
            <input type="number" name="txtCantidadPuertas" id="txtCantidadPuertas">
        </div>

        <div class="form-group">
            <label>Motor Encendido</label>
            <div style="display: inline-block; margin-right: 10px;">
                <input type="radio" name="txtRadio" value="Si" id="primarios">
                <label for="primarios">Sí</label>
            </div>
            <div style="display: inline-block;">
                <input type="radio" name="txtRadio" value="No" id="secundarios">
                <label for="secundarios">No</label>
            </div>
        </div>

        <button type="submit">Crear</button>
    </form>
</div>
</body>
</html>
