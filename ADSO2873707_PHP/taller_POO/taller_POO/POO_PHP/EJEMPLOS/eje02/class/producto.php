<?php
class producto {
    private $id;
    private $nombre;
    private $precio;
    private $descripcion;

    public function __construct($_id=null,$_nombre=null,$_precio=null,$_descripcion=null)
    {
        $this->id = $_id;
        $this->nombre = $_nombre;
        $this->precio = $_precio;
        $this->descripcion = $_descripcion;
    }
    // SETTERs Y GETTERs
    public function setId($_id) {
        $this->id = $_id;
    }
    public function getId() {
        return $this->id;
    }

    public function setnombre($_nombre) {
        $this->nombre = $_nombre;
    }

    public function getnombre() {
        return $this->nombre;
    }

    public function setprecio($_precio) {
        $this->precio = $_precio;
    }

    public function getprecio() {
        return $this->precio;
    }

    public function setdescripcion($_descripcion){
        $this->descripcion = $_descripcion;
    }

    public function getdescripcion() {
        return $this->descripcion;
    }
}