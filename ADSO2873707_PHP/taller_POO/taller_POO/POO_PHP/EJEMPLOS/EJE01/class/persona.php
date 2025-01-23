<?php
class persona{
    public $nombre;
    public $email;
    public $edad;
    
    //constructor de la clase persona
    // este metodo se ejecuta cuando se crea una instancia de la clase persona
    public function __construct($_nombre=null,$_email=null,$_edad=null)
    {
        echo "se creo un objeto persona";
        $this->nombre = $_nombre;
        $this->email = $_email;
        $this->edad = $_edad;
    }
    //destructor de la clase persona
    public function __destruct()
    {
        echo "<br>se aniquilo la persona";
    }

    public function saludar() {
        echo <<<TEXT
        <br>hola, soy $this->nombre, mi correo es 
        $this->email y tengo $this->edad años
        TEXT;
    }

}