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
        <link rel="stylesheet" href="css/styles.css">
    </head>

    <body>
        <div class="form-container">
            <h2>Iniciar sesion</h2>
            <form action="processLogin.php" method="post">
                <div class="form-group">
                    <label for="tipoUsuario">Tipo Usuario</label>
                    <select name="tipoUsuario" id="tipoUsuario">
                        <option value="estudiante">Estudiante</option>
                        <option value="profesor">Profesor</option>
                        <option value="administrativo">Administrativo</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" name="nombre" id="nombre">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="text" name="password" id="password">
                </div>
                <div class="form-group">
                    <input type="submit" value="Enviar">
                </div>
                <div class="form-group">
                    <a href="registro.php">Registrarse</a>
                </div>
            </form>
        </div>
    </body>

    </html>
</body>

</html>