<?php 
    include("conexion.php");
    $con=conectar();

    $sql="SELECT * FROM productos";
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
  <a class="navbar-brand" href="">Existencias de los productos</a>
    </div>
  </div>
</nav>
            <div class="container mt-5">
                    <div class="row"> 
                        <div class="col-md-8">
                            <table class="table" >
                                <thead class="table-success table-striped" >
                                    <tr>
									    <th>id_producto</th>
                                        <th>Nombre</th>
                                        <th>Existencia</th>
                                        <th>Descripcion</th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>

                                <tbody>
                                        <?php
                                            while($row=mysqli_fetch_array($query)){
                                        ?>
                                            <tr>
                                                <th><?php  echo $row['id_producto']?></th>
												<th><?php  echo $row['nombre']?></th>
                                                <th><?php  echo $row['cantidad']?></th>
                                                <th><?php  echo $row['descripcion']?></th>                                                                                  
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