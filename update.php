<?php

include("conexion.php");
$con=conectar();

$nombre_p=$_POST['nombre'];
$cantidad_p=$_POST['cantidad'];
$descripcion_p=$_POST['descripcion'];
$precio_p=$_POST['precio'];

$sql="UPDATE productos SET  nombre='$nombre_p',cantidad='$cantidad_p',descripcion='$descripcion_p',precio='$precio_p' WHERE nombre='$nombre_p'";
$query=mysqli_query($con,$sql);

    if($query){
        Header("Location: r_productos.php");
    }
?>