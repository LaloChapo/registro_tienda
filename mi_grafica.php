
<!DOCTYPE html>
<html lang="es">
    <head>
        <title> Productos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <link rel="stylesheet" href="https://bootswatch.com/5/solar/bootstrap.min.css">
       
    </head>
    <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="home.php">Inicio</a>
    </div>
    </div>
  <a class="navbar-brand" href="">Mis graficas</a>
    </div>
  </div>
</nav>
<div style="width: 730px; margin: 20px auto; font-family:sans-serif;">
<?php
/** Include class */
include( 'GoogChartClass.php');

/** Create chart */
$chart = new GoogChart();
$host = "localhost";
$usuario = "root";
$password = "";
$basedatos = "pinol";
$con=new mysqli($host,$usuario,$password,$basedatos);
$con->query("SET NAMES 'utf8'");

$T_C_1=$con->query("Select count(id_D_venta) FROM detalle_venta WHERE id_producto=1");

while($row=mysqli_fetch_array($T_C_1)){
   echo "Total de avena entera vendida = :".$row[ 0].'</br>';
    $tc1=$row[0];
    
}

$T_C_2=$con->query("Select count(id_D_venta) FROM detalle_venta WHERE id_producto=2");

while($row=mysqli_fetch_array($T_C_2)){
   echo "Total de choco avena vendida = :".$row[ 0].'</br>';
    $tc2=$row[0];
    
}

$T_C_3=$con->query("Select count(id_D_venta) FROM detalle_venta WHERE id_producto=3");

while($row=mysqli_fetch_array($T_C_3)){
   echo "Total de pewi vendida = :".$row[ 0].'</br>';
    $tc3=$row[0];
    
}

$T_C_4=$con->query("Select count(id_D_venta) FROM detalle_venta WHERE id_producto=4");

while($row=mysqli_fetch_array($T_C_4)){
   echo "Total de avena blanca vendida = :".$row[ 0].'</br>';
    $tc4=$row[0];
    
}

$T_C_5=$con->query("Select count(id_D_venta) FROM detalle_venta WHERE id_producto=5");

while($row=mysqli_fetch_array($T_C_5)){
   echo "Total de avena con cacao vendida = :".$row[ 0].'</br>';
    $tc5=$row[0];
    
}

/*

		Example 1
		Pie chart

*/

$data = array(
			'Avena Entera' => $tc1,
			'Choco Avena' => $tc2,
			'Pewi' => $tc3,
			'Avena Blanca' => $tc4,
			'Avena con Cacao' => $tc5,
		);

$color = array(
			'#5F5EC2',
			'#5EC28E',
			'#999999',
		);


echo '<h2>Ventas de productos</h2>';
$chart->setChartAttrs( array(
	'type' => 'pie',
	'title' => 'Ventas de todos los productos ',
	'data' => $data,
	'size' => array( 600, 400 ),
	'color' => $color,
    'labelsXY' => true,
	));

// Print chart
echo $chart;
?>



</div>

</nav> 
  
</body>


<!DOCTYPE html>
<html lang="es">
<?php
$host = "localhost";
$usuario = "root";
$password = "";
$basedatos = "pinol";
$con=new mysqli($host,$usuario,$password,$basedatos);
$con->query("SET NAMES 'utf8'");

$T_C_1=$con->query("Select count(id_D_venta) FROM detalle_venta WHERE id_producto=1");

while($row=mysqli_fetch_array($T_C_1)){
   echo "Total de avena entera vendida = :".$row[ 0].'</br>';
    $tc1=$row[0];
    
}

$T_C_2=$con->query("Select count(id_D_venta) FROM detalle_venta WHERE id_producto=2");

while($row=mysqli_fetch_array($T_C_2)){
   echo "Total de choco avena vendida = :".$row[ 0].'</br>';
    $tc2=$row[0];
    
}

$T_C_3=$con->query("Select count(id_D_venta) FROM detalle_venta WHERE id_producto=3");

while($row=mysqli_fetch_array($T_C_3)){
   echo "Total de pewi vendida = :".$row[ 0].'</br>';
    $tc3=$row[0];
    
}

$T_C_4=$con->query("Select count(id_D_venta) FROM detalle_venta WHERE id_producto=4");

while($row=mysqli_fetch_array($T_C_4)){
   echo "Total de avena blanca vendida = :".$row[ 0].'</br>';
    $tc4=$row[0];
    
}

$T_C_5=$con->query("Select count(id_D_venta) FROM detalle_venta WHERE id_producto=5");

while($row=mysqli_fetch_array($T_C_5)){
   echo "Total de avena con cacao vendida = :".$row[ 0].'</br>';
    $tc5=$row[0];
    
}

// Valores con PHP. Estos podrían venir de una base de datos o de cualquier lugar del servidor
$etiquetas = ["Avena Entera", "Choco Avena", "Pewi", "Avena Blanca","Avena con Cacao"];
$datosVentas = [$tc1, $tc2, $tc3, $tc4,$tc5];
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gráficas con chart.js y PHP | By Parzibyte</title>
    <!-- Importar chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
</head>

<body>
<div class="container">
  <div class="row">
    <div class="col align-self-start">
    
    </div>
    <div class="col align-self-center">
    <h1>Gráfica de productos vendidos</h1>
    <a href="https://parzibyte.me/blog">By Parzibyte</a>
    <canvas id="grafica"></canvas>
    <script type="text/javascript">
       
        const $grafica = document.querySelector("#grafica");
        
        const etiquetas = <?php echo json_encode($etiquetas) ?>;
      
        const datosVentas2020 = {
            label: "Ventas del prodcutos por categoria",
           
            data: <?php echo json_encode($datosVentas) ?>,
            backgroundColor: 'rgba(54, 162, 23, 0.3)',
            borderColor: 'rgba(54, 162, 23, 1)',
            borderWidth: 1, // Ancho del borde
        };
        new Chart($grafica, {
            type: 'line', // Tipo de gráfica
            data: {
                labels: etiquetas,
                datasets: [
                    datosVentas2020,
                    // Aquí más datos...
                ]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }],
                },
            }
        });
    </script>
    </div>
    <div class="col align-self-end">
     
    </div>
  </div>
</div>
    
    
</body>

</html>