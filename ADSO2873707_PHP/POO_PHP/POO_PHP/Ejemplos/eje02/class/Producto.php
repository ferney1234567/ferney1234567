<?php
    class Producto{
        private $id;
        private $nombre;
        private $precio;
        private $descripcion;

        public function __construct($_id=null,$_nombre=null,$_precio=null,$_descripcion=null){
            $this->id = $_id;
            $this->nombre = $_nombre;
            $this->precio = $_precio;
            $this->descripcion = $_descripcion;
        }

        public function setId($_id){
            $this->id = $_id;
        }
        public function getId(){
            return $this->id;
        }
        public function setNombre($_nombre){
            $this->nombre = $_nombre;
        }
        public function getNombre(){
            return $this->nombre;
        }
        public function setPrecio($_precio){
            $this->precio = $_precio;
        }
        public function getPrecio(){
            return $this->precio;
        }
        public function setDescripcion($_descripcion){
            $this->descripcion = $_descripcion;
        }
        public function getDescripcion(){
            return $this->descripcion;
        }
    }
?>