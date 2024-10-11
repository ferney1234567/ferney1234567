<!DOCTYPE html>
<html lang="en">
<head>
<style>
   
    *{
    margin: 0;
    border: 0;
    padding: 0;
    box-sizing: border-box;
    vertical-align: baseline;
}
body , html{
    height: 100%;/*centra en el eje horizontal */
    display: flex;
    justify-content: center;/*centra en el eje horizontal */
    align-items: center;/*centra en el eje vertical */

}
.form-container{
    border: 1px solid #ccc;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgb(0, 0, 0);
    
}
.form-container label{
    display: block;
    margin-top: 10px;
}
.form-container h2{
    text-align: center;
    margin-bottom: 10px;
}
.form-container input{
    padding: 5px;
    border:  1px solid #ccc;
}
.form-container button{
    margin-top: 10px;
    padding: 10px;
    background-color:gray;
    color: rgb(5, 5, 12);
    text-align: center;
    width: 100%;
}
.form-container input[type="date"]{
    width: 100%;
    text-align: center;
    
}
.form-group select{
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-bottom: 10px;
    width: 100%;
    text-align: center;
    padding: 5px;
}
.radio label{
    display: block;
    margin-top: 5px;
}

</style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<div class="form-container">
    <h1>Sumar Numeros</h1>
    <form action="procesar04.php" method="POST">
        <div class="form-group">
            <label for="txtNumero1">Numero 1:</label>
            <input type="number" name="txtNumero1" id="txtNumero1">
        </div>
        <div class="form-group">
            <label for="txtNumero2"">Numero 2:</label>
            <input type="number" name="txtNumero2" id="txtNumero2">
        </div>
        <div class="form-group">
            <label for="radioOperacion">Sumar</label>
            <input type="radio" name="radioOperacion"value="sumar">
        </div>
        <div class="form-group">
            <label for="radioOperacion">Restar</label>
            <input type="radio" name="radioOperacion"value="restar">
        </div>

        <div class="form-group">
        <button type ="submit">Realizar Operacion</button>
        </div>
</body>
</html>