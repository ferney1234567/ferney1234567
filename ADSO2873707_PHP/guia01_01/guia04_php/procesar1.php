<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    * {
        margin: 0;
        border: 0;
        padding: 0;
        box-sizing: border-box;
        vertical-align: baseline;
    }

    body,
    html {
        height: 100%;
        /*centra en el eje horizontal */
        display: flex;
        justify-content: center;
        /*centra en el eje horizontal */
        align-items: center;
        /*centra en el eje vertical */

    }

    .info-container {
        border: 1px solid black;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgb(0, 0, 0);

    }

    .info-container label {
        display: block;
        margin-top: 10px;
        color: black;
    }

    html {
        background-image: linear-gradient(to right,
                #e9ec0e, #e92121);
    }
</style>

<body>
    <?php
    // Validación de existencia con operador nulo seguro de PHP
    $nombre = $_POST['txtNombre'] ?? null;
    $perfil = $_POST['txtPerfil'] ?? null;
    $experiencia = $_POST['txtExperiencia'] ?? null;
    $cedula = $_POST['txtCedula'] ?? null;
    $hobbies = $_POST['txtHobbies'] ?? null;

    $hobbiesLista = ''; // Inicializa una variable para almacenar los hobbies

    if (isset($_POST['txtHobbies'])) {
        $hobbies = $_POST['txtHobbies'];
        // Procesa los hobbies
        foreach ($hobbies as $hobby) {
            $hobbiesLista .= htmlspecialchars($hobby) . "<br>";
        }
    } else {
        $hobbiesLista = "No se seleccionaron hobbies.";
    }

    echo "
    <div class='info-container'>
        <label>Nombre: $nombre</label><br>
        <label>Perfil: $perfil</label><br>
        <label>Experiencia: $experiencia</label><br>
        <label>Cédula: $cedula</label><br>
        <label>Hobbies:<br>$hobbiesLista</label>
    </div>";
    ?>
</body>

</html>