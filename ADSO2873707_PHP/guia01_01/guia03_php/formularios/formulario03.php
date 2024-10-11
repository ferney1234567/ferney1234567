<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>formulario 3</title>
 
<style>
    html{
        background-image: linear-gradient(to right,
        black, white,
        black);
    }
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
    

</style>
</head>
<body>
<div class="form-container">
    <h1>Crear Usario</h1>
    <form action="procesar03.php" method="POST">
        <div class="form-group">
            <label for="txtName">Nombre:</label>
            <input type="text" name="txtName" id="txtName">
        </div>
        <div class="form-group">
            <label for="txtCorreo">correo:</label>
            <input type="email" name="txtCorreo" id="txCorreo">
        </div>
        <div class="form-group">
            <label for="txtTelefono">Telefono:</label>
            <input type="number" name="txtTelefono" id="txtTelefono">
        </div>
         <div class="form-group">
         <label for="ciudad"type="ciudad" name="txtCiudad">Cuidad</label>
        <select  class= "select-css" name="txtCiudad" id="lang">
        <option value="cali">Cali</option>
        <option value="cartagena">Cartagena</option>
        <option value="bucaramanga">Bucaramanga</option>
        <option value="pasto">Pasto</option>
        <option value="bogota">Bogota</option>
        <option value="medellin">Medellin</option>
        <option value="risaralda">Risaralda</option>
        <option value="manizales">Manizales</option>
      </select>
            </div>
            <div class="form-group">
            <label for="txtDate">Fecha de Nacimiento:</label>
            <input type="date" name="txtDate" id="txtDate">
        </div>
        <button type ="submit">Crear</button>
        </div>
      
        
    </form>
     </div>

</body>
</html>


