<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuario Creado</title>
    <style>
        /* Estilo general del cuerpo */
        body {
            font-family: 'Arial', sans-serif; /* Fuente limpia y moderna */
            background-color: #f8f9fa; /* Fondo gris claro */
            display: flex; /* Usamos flexbox para centrar el contenido */
            justify-content: center; /* Centrado horizontal */
            align-items: center; /* Centrado vertical */
            height: 100vh; /* Ocupamos toda la altura de la ventana */
            margin: 0; /* Eliminamos los márgenes por defecto */
        }

        /* Contenedor de la información */
        .info-container {
            background-color: #ffffff; /* Fondo blanco para contraste */
            padding: 40px; /* Espaciado interno alrededor del contenido */
            border-radius: 10px; /* Bordes redondeados para suavizar el contenedor */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Sombra para darle profundidad */
            max-width: 400px; /* Limitamos el ancho máximo del contenedor */
            width: 100%; /* Ancho completo en dispositivos pequeños */
            text-align: left; /* Alineación del texto a la izquierda */
            font-size: 16px; /* Tamaño de fuente más legible */
            color: #333; /* Color de texto oscuro */
        }

        /* Estilo de los labels */
        label {
            display: block; /* Cada label se muestra en bloque */
            font-weight: bold; /* Texto en negrita para destacar */
            margin-bottom: 10px; /* Espacio debajo de cada label */
        }

        /* Estilo para los valores */
        label span {
            font-weight: normal; /* El valor en sí tendrá peso normal */
            color: #555; /* Texto en gris para los valores */
        }

        /* Estilo para el botón */
        .btn {
            display: inline-block; /* Botón en línea con otros elementos */
            
            margin-top: 20px; /* Espaciado superior para separarlo del contenido */
            padding: 10px 20px; /* Espaciado interno del botón */
            background-color: blue; /* Fondo azul */
            color: white; /* Texto blanco */
            border: none; /* Sin bordes */
            border-radius: 8px; /* Bordes redondeados */
            text-decoration: none; /* Sin subrayado para el enlace */
            font-size: 16px; /* Tamaño de fuente legible */
            cursor: pointer; /* Cambia el cursor al pasar por encima */
            transition: background-color 0.3s ease; /* Transición suave para hover */
        }

        /* Cambio de color del botón al hacer hover */
        .btn:hover {
            background-color: #0056b3; /* Azul más oscuro en hover */
        }
    </style>
</head>
<body>

<?php
// Validación de existencia con operador nulo seguro de PHP
$TipoVehiculo = $_POST['txtTipoVehiculo'] ?? 'No especificado';
$Marca = $_POST['txtMarca'] ?? 'No especificado';
$Precio = $_POST['txtPrecio'] ?? 'No especificado';
$CantidadRuedas = $_POST['txtCantidadRuedas'] ?? 'No especificado';
$CantidadPuertas = $_POST['txtCantidadPuertas'] ?? 'No especificado';
$radio = $_POST['txtRadio'] ?? 'No especificado';
?>

<div class="info-container">
    <label for="">Tipo de vehiculo: <span><?php echo htmlspecialchars($TipoVehiculo); ?></span></label>
    <label for="">Marca: <span><?php echo htmlspecialchars($Marca); ?></span></label>
    <label for="">Precio: <span><?php echo htmlspecialchars($Precio); ?></span></label>
    <label for="">Cantidad de ruedas: <span><?php echo htmlspecialchars($CantidadRuedas); ?></span></label>
    <label for="">Cantidad de puertas: <span><?php echo htmlspecialchars($CantidadPuertas); ?></span></label>
    <label for="">Motor encendido: <span><?php echo htmlspecialchars($radio); ?></span></label>
    
    <!-- Botón para regresar -->
    <a href="index2.php" class="btn">Volver</a>
</div>

</body>
</html>
