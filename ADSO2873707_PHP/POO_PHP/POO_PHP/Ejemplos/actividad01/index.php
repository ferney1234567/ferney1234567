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
            <h2>Iniciar sesion</h2>
            <form action="processLogin.php" method="post">
            <div class="form-group">
                    <label for="número_de_cuenta">número de cuenta</label>
                    <input type="text" name="número_de_cuenta" id="número_de_cuenta">
                </div>
                <div class="form-group">
                    <label for="nombre_titular">nombre titular</label>
                    <input type="text" name="nombre_titular" id="nombre_titular">
                </div>
                <div class="form-group">
                    <label for="saldo">saldo</label>
                    <input type="text" name="saldo" id="saldo">
                </div>
                <div class="form-group">
                    <label for="tipo_de_cuenta">tipo de cuenta</label>
                    <select name="tipo_de_cuenta" id="tipo_de_cuenta">
                        <option value="admin">Admin</option>
                        <option value="estudiante">Estudiante</option>
                        <option value="Profesor">Profesor</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" value="Inicio">
                    <a href="registro.php">Registrarse</a>
                </div>
            </form>
        </div>
    </body>

    </html>
</body>

</html>