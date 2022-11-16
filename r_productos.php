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
  <a class="navbar-brand" href="">Registros de productos</a>
    </div>
  </div>
</nav>
            <div class="container mt-5">
                    <div class="row"> 
                        
                        <div class="col-md-4">
                            <h1>Registrar productos</h1>
                                <form action="insertar.php" method="POST">

                                    <input type="text" class="form-control mb-3" name="nombre" placeholder="Nombre producto">
                                    <input type="text" class="form-control mb-3" name="cantidad" placeholder="cantidad producto">
                                    <input type="text" class="form-control mb-3" name="precio" placeholder="Precio">
                                    <input type="text" class="form-control mb-3" name="descripcion" placeholder="descripcion">
                                    <input type="submit" class="btn btn-primary">
                                    </br>
                                  </form>
                        </div>

                        <div class="col-md-8">
                        <table class="table" >
                                <thead class="table-success table-striped" >
                                    <tr>
									    <th>Id producto</th>
                                        <th>Nombre</th>
                                        <th>Cantidad</th>
                                        <th>Descripcion</th>
                                        <th>Precios</th>
                                        <th>Acciones</th>
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
                                                <th><?php  echo $row['precio']?></th> 
                                                <th><a href="actualizar.php?id=<?php echo $row['id_producto'] ?>" class="btn btn-info">Editar</a></th>
                                                <th><a href="eliminar.php?id=<?php echo $row['id_producto'] ?>" class="btn btn-danger" onclick= "return confirm('¿SEGURO DE QUIERES BORARR?')">Eliminar</a></th> 
                                                
                                                
                                            </tr>
                                        <?php 
                                            }
                                        ?>
                                </tbody>
                            </table>
                            
                    <div class="col-md-3">
                    </div>
            </div>
    </body>
</html>