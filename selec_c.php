<!doctype html>
<body> 

<form action="n_d_venta.php" method="POST">
<SELECT NAME="cliente">
<option>Seleccione una Opción...</option>
<?php 
$host = "localhost";
$usuario = "root";
$password = "";
$basedatos = "pinol";
$con=new mysqli($host,$usuario,$password,$basedatos);
$con->query("SET NAMES 'utf8'");
$resultado=$con->query("select id_cliente, nombre from clientes");
$limite=$resultado->num_rows;
for($x = 1 ; $x <=$limite ; $x++){ 
    $fila = mysqli_fetch_assoc($resultado); 
    echo'<OPTION VALUE="'.$fila['id_cliente'].'">'.$fila['nombre'].'</OPTION>';
}
echo '$cliente';
?>
</SELECT>
<input type="submit" >
</form>
</body>
</html>