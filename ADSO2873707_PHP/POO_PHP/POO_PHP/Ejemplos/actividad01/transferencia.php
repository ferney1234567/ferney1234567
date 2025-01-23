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
        <a href="processLogin.php">Iniciar Sesion</a>
        <link rel="stylesheet" href="css/estilos.css">

    </head>

    <body>
        <div class="form-container">
            <h2>Transferencia</h2>
            <form action="processTransferencia.php" method="post">
            <div class="form-group">
                    <label for="número_de_cuenta">Número de cuenta envia</label>
                    <input type="text" name="número_de_cuenta" id="número_de_cuenta">
                </div>
                <div class="form-group">
                    <label for="nombre_titular">nombre titular envia</label>
                    <input type="text" name="nombre_titular" id="nombre_titular">
                </div>
                <div class="form-group">
                    <label for="transferir">saldo envia</label>
                    <input type="text" name="transferir" id="transferir">
                </div>
                <div class="form-group">
                    <label for="tipo_de_cuenta">tipo de cuenta envia</label>
                    <select name="tipo_de_cuenta" id="tipo_de_cuenta">
                    <option value="admin">Admin</option>
                        <option value="estudiante">Estudiante</option>
                        <option value="Profesor">Profesor</option>
                    </select>
                </div>
                <h2>Transferencia</h2>
            <div class="form-group">
                    <label for="número_de_cuenta1">Número de cuenta resive</label>
                    <input type="text" name="número_de_cuenta1" id="número_de_cuenta1">
                </div>
                <div class="form-group">
                    <label for="nombre_titular1">nombre titular resive</label>
                    <input type="text" name="nombre_titular1" id="nombre_titular1">
                </div>
                <div class="form-group">
                    <label for="saldo1">saldo resive</label>
                    <input type="text" name="saldo1" id="saldo1">
                </div>
                <div class="form-group">
                    <label for="tipo_de_cuenta1">tipo de cuenta resive</label>
                    <select name="tipo_de_cuenta1" id="tipo_de_cuenta1">
                        <option value="admin">Admin</option>
                        <option value="estudiante">Estudiante</option>
                        <option value="Profesor">Profesor</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" value="Enviar">
                    <a href="processLogin.php">Volver</a>
                </div>
            </form>
        </div>
    </body>

    </html>
</body>

</html>