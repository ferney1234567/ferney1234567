<?php
class vehiculo{
    protected $cantidadRuedas;
    protected $marca;
    protected $precio;
    protected $motorEncendido;

    public function __construct($_cantidadRuedas=null,$_marca=null,$_precio=null,$_motorEncendido=null)
    {
        $this->cantidadRuedas = $_cantidadRuedas;
        $this->marca = $_marca;
        $this->precio = $_precio;
        $this->motorEncendido = $_motorEncendido;
    }
    // setters y getters
    public function setcantidadRuedas($_cantidadRuedas) {
        $this->cantidadRuedas = $_cantidadRuedas;
    }
    public function getcantidadRuedas() {
        return $this->cantidadRuedas;
    }

    public function setmarca($_marca) {
        $this->marca = $_marca;
    }

    public function getmarca() {
        return $this->marca;
    }

    public function setprecio($_precio) {
        $this->precio = $_precio;
    }

    public function getprecio() {
        return $this->precio;
    }

    public function setmotorEncendido($_motorEncendido){
        $this->motorEncendido = $_motorEncendido;
    }

    public function getmotorEncendido() {
        return $this->motorEncendido;
    }

    public function encenderVehiculo() {
        $this->motorEncendido = true;
    }
    public function apagarVehiculo() {
        $this->motorEncendido = false;
    }
    public function arrancar() {
        if ($this->motorEncendido) {
            echo "<br>el vehiculo arranca";
        }else{
            echo "<br>primero debe encender el vehiculo";
        }
    }
}