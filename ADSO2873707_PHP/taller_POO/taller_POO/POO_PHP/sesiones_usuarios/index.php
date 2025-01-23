<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <title>Document</title>
</head>
<style>
    /* General body styles */
body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f7fa;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

/* Form container styles */
.form-container {
    background-color: #fff;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 400px;
    text-align: center;
}

/* Header styles */
h2 {
    color: #333;
    font-size: 24px;
    margin-bottom: 20px;
}

/* Form group styles */
.form-group {
    margin-bottom: 20px;
    text-align: left;
}

/* Label styles */
label {
    font-size: 14px;
    color: #555;
    margin-bottom: 5px;
    display: block;
}

/* Input and select styles */
input[type="text"], input[type="password"], select {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 14px;
    color: #333;
}

input[type="text"]:focus, input[type="password"]:focus, select:focus {
    border-color: #007BFF;
    outline: none;
}

/* Button styles */
button {
    width: 100%;
    padding: 12px;
    background-color: #007BFF;
    color: #fff;
    font-size: 16px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}

/* Link styles */
a {
    color: #007BFF;
    font-size: 14px;
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

/* Responsive adjustments */
@media (max-width: 600px) {
    .form-container {
        padding: 20px;
    }
    
    h2 {
        font-size: 20px;
    }
    
    button {
        font-size: 14px;
    }
}

</style>
<body>
    <div class="form-container">
        <h2>Iniciar Sesion</h2>
        <form action="processlogin.php" method="post">
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
                <a href="registro.php">Registrarme</a>
            </div>
            <div class="form-group">
                <button type="submit">Iniciar sesion</button>
            </div>
        </form>
    </div>
</body>
</html>