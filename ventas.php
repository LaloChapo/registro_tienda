<?php 
    include("conexion.php");
    $con=conectar();

    $sql="SELECT * FROM venta";
    $query=mysqli_query($con,$sql);

    $row=mysqli_fetch_array($query);
?>
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
  <a class="navbar-brand" href="">Ventas Totales</a>
    </div>
  </div>
</nav>
            <div class="container mt-5">
                    <div class="row"> 
                        <div class="col-md-8">
                            <table class="table" >
                                <thead class="table-success table-striped" >
                                    <tr>
									    <th>id_venta</th>
                                        <th>id_cliente</th>
                                        <th>Dia</th>
                                        <th>Mes</th>
                                        <th>AÑO</th>
                                        <th>Importe</th>
                                        <th>Iva</th>
                                        <th>Total</th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>

                                <tbody>
                                        <?php
                                            while($row=mysqli_fetch_array($query)){
                                        ?>
                                            <tr>
                                                <th><?php  echo $row['id_venta']?></th>
												<th><?php  echo $row['id_cliente']?></th>
                                                <th><?php  echo $row['dia']?></th>
                                                <th><?php  echo $row['mes']?></th>   
                                                <th><?php  echo $row['año']?></th>
												<th><?php  echo $row['importe']?></th>
                                                <th><?php  echo $row['IVA']?></th>
                                                <th><?php  echo $row['total']?></th> 
                                                <th><a href="reporte.php?id=<?php echo $row['id_venta'] ?>" class="btn btn-danger">Imprimir</a></th>                                                                               
                                            </tr>
                                            
                                        <?php 
                                            }
                                            
                                        ?>
                                 
                                </tbody>
                            </table>
                        </div>
                       
                    </div>  
                    <div class="col-md-3">
                    </div>
            </div>
    </body>
</html>