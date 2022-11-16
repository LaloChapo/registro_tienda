<?php
include("conexion.php");
$con=conectar();

$nombre=$_POST['nombre'];
$rfc=$_POST['rfc'];



$sql="INSERT INTO clientes(nombre,rfc)
VALUES('$nombre','$rfc')";
$query= mysqli_query($con,$sql);

if($query){
    Header("Location:cliente_r.php");
    
}else {
}
?>