<?php 

include("conexion.php");
$con=conectar();

$id_cliente=$_POST['cliente'];
$fecha=$_POST['calendario'];
echo "calendario".$fecha.'<br/>';



$fechaComoEntero = strtotime($fecha);
$dia= date("d", $fechaComoEntero);
$mes= date("m", $fechaComoEntero);
$anio=date("Y", $fechaComoEntero);
echo "el id cliente eleccionado es".$id_cliente.'<br/>';
echo "el día seleccionado es".$dia.'<br/>';
echo "el mes seleccionado es".$mes.'<br/>';
echo "el año seleccionado es".$anio.'<br/>';
$sql="INSERT INTO venta(id_cliente,dia,mes,año)
VALUES('$id_cliente','$dia','$mes','$anio')";
$query= mysqli_query($con,$sql);

if($query){
 Header("Location:f_r_detalle_venta.php");
}

?>



