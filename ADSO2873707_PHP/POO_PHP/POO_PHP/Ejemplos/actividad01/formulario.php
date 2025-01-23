<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Checkbox 1</title>
        <link rel="stylesheet" href="css/estilos.css">
    </head>

    <body>
        <div class="form-container">
            <h2>Rellenar Formulario</h2>
            <form action="procesardatos.php" method="post">
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" name="nombre" id="nombre">
                </div>
                <div class="form-group">
                    <label for="sueldo">Sueldo</label>
                    <input type="text" name="sueldo" id="sueldo">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email">
                </div>
                <div class="form-group">
                    <label for="fecha_de_nacimiento">fecha de nacimiento</label>
                    <input type="date" name="fecha_de_nacimiento" id="fecha_de_nacimiento">
                </div>
                <div class="form-group">
                    <label for="peso">Peso</label>
                    <input type="text" name="peso" id="peso">
                </div>
                <div class="form-group">
                    <label for="altura">Altura</label>
                    <input type="text" name="altura" id="altura">
                </div>
                <div class="form-group">
                    <input type="submit" value="Enviar">
                </div>
                <div class="form-group">
                    <a href="processLogin.php">volver</a>
                </div>
            </form>
        </div>
    </body>

    </html>
</body>

</html>