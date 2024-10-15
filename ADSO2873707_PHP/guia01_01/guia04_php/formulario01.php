<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Curriculum</title>
    <link rel="stylesheet" href="css/estilosformulario1.css">
</head>


<body>
    <div class="form-container">
        <h1>Curriculum Vitae</h1>
        <form action="procesar1.php" method="POST">
            <div class="form-group">
                <label for="txtNombre">Nombre:</label>
                <input type="text" name="txtNombre" id="txtNombre">
            </div>
            <div class="form-group">
                <label for="txtPerfil">Perfil:</label>
                <textarea name="txtPerfil" id="txtPerfil" cols="30" rows="10"></textarea>
            </div>
            <div class="form-group">
                <label for="txtExperiencia">Experiencia:</label>
                <textarea name="txtExperiencia" id="txtExperiencia" cols="30" rows="10"></textarea>
            </div>
            <div class="form-group">
                <label for="txtCedula">Cedula:</label>
                <input type="file" name="txtCedula" id="txtCedula">

                <div class="hobby-group">
                    <label for="txtHobbies">Hobbies:</label>
                    <div class="checkbox-group">
                        <input type="checkbox" name="txtHobbies[]" value="Leer"> Leer
                        <input type="checkbox" name="txtHobbies[]" value="Programar"> Programar
                    </div>
                    <div class="checkbox-group">
                        <input type="checkbox" name="txtHobbies[]" value="Gimnasio"> Gimnasio
                        <input type="checkbox" name="txtHobbies[]" value="Comer"> Comer
                    </div>
                    <div class="checkbox-group">
                        <input type="checkbox" name="txtHobbies[]" value="Cocinar"> Cocinar
                        <input type="checkbox" name="txtHobbies[]" value="Dibujar"> Dibujar
                    </div>
                    <div class="checkbox-group">
                        <input type="checkbox" name="txtHobbies[]" value="Correr"> Correr
                        <input type="checkbox" name="txtHobbies[]" value="Deporte"> Deporte
                    </div>
                </div>
        </form>
        
        <div class="form-group">
            <button type="submit">Crear</button>
        </div>

        </form>
    </div>
</body>

</html>