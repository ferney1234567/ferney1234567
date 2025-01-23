<?php
class Cuenta{
    private $número_de_cuenta;
    private $nombre_titular;
    private $saldo;
    private $tipo_de_cuenta;

    public function __construct($número_de_cuenta= null,$nombre_titular = null ,$saldo = null, $tipo_de_cuenta= null){
        $this->número_de_cuenta = $número_de_cuenta;
        $this->nombre_titular = $nombre_titular;
        $this->saldo = $saldo;
        $this->tipo_de_cuenta = $tipo_de_cuenta;
    }
     //metodo set
     public function setnúmero_de_cuenta($número_de_cuenta){
        $this->número_de_cuenta = $número_de_cuenta;
     }
     //metodo get
     public function Getnúmero_de_cuenta(){
        return $this->número_de_cuenta;
     }
     //----------------------------------------------------
      //metodo set
      public function setnombre_titular($nombre_titular){
        $this->nombre_titular = $nombre_titular;
     }
     //metodo get
     public function Getnombre_titular(){
        return $this->suelnombre_titulardo;
    //-------------------------------------------------------
     }
      //metodo set
      public function setsaldo($saldo){
        $this->saldo = $saldo;
     }
     //metodo get
     public function Getsaldo(){
        return $this->saldo;
     }
     //----------------------------------------------------------
      //metodo set
      public function settipo_de_cuenta($tipo_de_cuenta){
        $this->tipo_de_cuenta = $tipo_de_cuenta;
     }
     //metodo get
     public function Gettipo_de_cuenta(){
        return $this->tipo_de_cuenta;
     }
     //------------------------------------------------------------
     public function deposito($deposito){
      $this->saldo += $deposito;
      if ($deposito > 0) {
        echo "<div class='info-container'>
      <label for='' class='text'>saldo: $this->saldo </label>
      <label for='' class='text'>mas $deposito</label>
      <div class='form-group'>
         <a href='processLogin.php'>Volver</a>
      </div>
      </div>";
    }else{
        echo "<div class='info-container'>
      <label for='' class='text'>saldo: $this->saldo </label>
      <label for='' class='text'>no $deposito</label>
      <div class='form-group'>
         <a href='processLogin.php'>Volver</a>
      </div>
      </div>";
    }
      
     }
     //------------------------------------------------------------
     public function retirar($retirar){
      $this->saldo -= $retirar;
        if ($retirar > 0) {
          echo "<div class='info-container'>
      <label for='' class='text'>saldo: $this->saldo </label>
      <label for='' class='text'>menos $retirar</label>
      <div class='form-group'>
         <a href='processLogin.php'>Volver</a>
      </div>
      </div>";
      }else{
          echo "<div class='info-container'>
      <label for='' class='text'>saldo: $this->saldo </label>
      <label for='' class='text'>no: $retirar</label>
      <div class='form-group'>
         <a href='processLogin.php'>Volver</a>
      </div>
      </div>";
      }
        
       }
     //------------------------------------------------------------
     public function factura(){
      $factura = 1000000;
      $restante = $factura - $this->saldo;
        if ($restante > 0) {
          echo "<div class='info-container'>
      <label for='' class='text'>saldo pagado: $this->saldo </label>
      <label for='' class='text'>precio restante $restante</label>
      <div class='form-group'>
         <a href='processLogin.php'>Volver</a>
      </div>
      </div>";
      }else{
          echo "<div class='info-container'>
      <label for='' class='text'>saldo pagado: $this->saldo </label>
      <label for='' class='text'>factura pagada</label>
      <div class='form-group'>
         <a href='processLogin.php'>Volver</a>
      </div>
      </div>";
      }
        
       }
       //------------------------------------------------------------
       public function transferir($transferir){
         $this->saldo += $transferir;
           if ($transferir > 0) {
             echo "<div class='info-container'>
         <label for='' class='text'>saldo: $this->saldo </label>
         <label for='' class='text'>transferido $transferir</label>
         <div class='form-group'>
            <a href='processLogin.php'>Volver</a>
         </div>
         </div>";
         }else{
             echo "<div class='info-container'>
         <label for='' class='text'>saldo: $this->saldo </label>
         <label for='' class='text'>No se a transferido nada</label>
         <div class='form-group'>
            <a href='processLogin.php'>Volver</a>
         </div>
         </div>";
         }
           
          }
     }
     



