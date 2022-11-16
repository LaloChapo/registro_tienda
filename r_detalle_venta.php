<?php 
$host = "localhost";
$usuario = "root";
$password = "";
$basedatos = "pinol";
$con=new mysqli($host,$usuario,$password,$basedatos);

$id_producto=$_POST['producto'];
$id_venta=$_POST['venta'];
$cant=$_POST['can'];


$con->query("SET NAMES 'utf8'");
$resultado=$con->query("select * from productos where id_producto=$id_producto");
$limite=$resultado->num_rows;
for($x = 1 ; $x <=$limite ; $x++){ 
    $fila = mysqli_fetch_assoc($resultado); 
    $precio=$fila['precio'];
}
$con->query("SET NAMES 'utf8'");
$resultado=$con->query("select * from productos where id_producto=$id_producto");
$limite=$resultado->num_rows;
for($x = 1 ; $x <=$limite ; $x++){ 
    $fila = mysqli_fetch_assoc($resultado); 
    $existencia=$fila['cantidad'];
}

if($existencia>=$cant){
$importe=$precio*$cant;

$sql="INSERT INTO detalle_venta(id_venta,id_producto,cantidad,precio,importe)
VALUES('$id_venta','$id_producto','$cant','$precio','$importe')";
$query= mysqli_query($con,$sql);

$sql="UPDATE productos 
set cantidad=cantidad-'$cant'
where id_producto='$id_producto'";
$query= mysqli_query($con,$sql);

$sql="UPDATE venta
set importe=importe+'$importe'
where id_venta='$id_venta'";
$query= mysqli_query($con,$sql);

$sql="UPDATE venta
set iva=importe*0.16
where id_venta='$id_venta'";
$query= mysqli_query($con,$sql);

$sql="UPDATE venta
set total=importe+iva
where id_venta='$id_venta'";
$query= mysqli_query($con,$sql);


if($query){
 Header("Location:f_r_detalle_venta.php");
}



}
else{echo "no se puede vender mas de la existencia";}
?>


