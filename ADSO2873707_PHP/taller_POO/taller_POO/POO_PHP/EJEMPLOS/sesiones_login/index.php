<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styles.css">
    <title>Document</title>
</head>
<body>
    <div class="form-container">
        <h2>Iniciar Sesion</h2>
        <form action="process.php" method="post">
        <div class="form-group">
                <label for="txtuser">usuario</label>
                <select name="txttipouser" id="txttipouser">
                    <option value="estudiante">estudiante</option>
                    <option value="profesor">profesor</option>
                    <option value="administrador">administrador</option>
                </select>
            </div>
            <div class="form-group">
                <label for="txtuser">usuario</label>
                <input type="text" name="txtuser" id="txtuser">
            </div>
            <div class="form-group">
                <label for="txtuser">contraseña</label>
                <input type="password" name="txtcontraseña" id="txtcontraseña">
            </div>
            <div class="form-group">
                <button type="submit">Iniciar sesion</button>
            </div>
        </form>
    </div>
</body>
</html>