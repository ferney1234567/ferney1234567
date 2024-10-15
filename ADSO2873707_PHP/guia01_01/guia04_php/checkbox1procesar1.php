<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/estilos1.css">
</head>

<body>
    <div class="form-container">
     <?php
     $num1 = $_POST['txtNumero1'] ?? 0;
     $num2   =  $_POST['txtNumero2'] ?? 0;

     if (empty($num1) || empty($num2)) {
        echo "<p>Debes ingresar un número</p>";
     }

     //operador ternario
      $num2 = isset($_POST['txtNumero2']) ? $_POST['txtNumero2'] : 0;
     echo <<< HRD
     <label>numero 1 : $num1 </label>
     <label>numero 2 : $num2 </label>
     HRD;

     if (isset(($_POST['operacion1']))) {
        $resultado = $num1 + $num2;             //suma
        print(" <label> la suma es $resultado </label>");        
     }
     if (isset(($_POST['operacion2']))) {
        $resultado = $num1 - $num2;             //resta
        print(" <label> la resta es $resultado </label>");        
     }

     if (isset(($_POST['operacion3']))) {
        $resultado = $num1 * $num2;             //multiplicar
        print(" <label> la multiplicacion  es $resultado </label>");        
     }

      $resultado = 0;


     if (isset(($_POST['operacion4']))) {
        try {
            $resultado = $num1 / $num2; 
        } catch (Error $er) {
            $html = " <label>Errorcito : ".$er -> getMessage()."</label> ";
            $html .= " <label>Linea : ".$er -> getLine()."</label> ";
            $html .= " <label>Archivito : ".$er -> getFile()."</label> ";
            echo <<< out
            <div class= "Error-container">
            <h4> error al realizar la operacion </h4>
            $html
            </div>
            
            out;
            
         

           // echo"No se puede resalizar la operacion"; //division
           // echo"<pre>";
           // print_r($er);//Imprime los elementos de un array o un objeto
          //  echo"<pre>";
        } 
        print(" <label> la division   es $resultado </label>");

     }
     ?>
    </div>

</body>
</html>