<?php
class Persona {
    public $nombre;
    public $email;
    public $edad;

    //Constructor de la clase Persona
    //Este metodo ejecuta cuando se crea una instancia de la class Persona
    public function __construct($_nombre=null,$_email=null,$_edad=null){
        echo "Se creo un objeto o persona<br><br>";
        $this->nombre =$_nombre;
        $this->email =$_email;
        $this->edad =$_edad;
    }

    //Destructor de la class Perdona
    public function __destruct(){
        echo"Se elimino al objetivo💀<br><br>";
    }

    public function saludar(){
        echo <<<SALUDO
            Hola, soy $this->nombre,<br> 
            mi correo es $this->email y<br>
            tengo $this->edad años<br><br>
        SALUDO;
    }
}
?>