<?php 
    include("conexion.php");
    $con=conectar();

$id=$_GET['id'];

$sql="SELECT * FROM productos WHERE id_producto='$id'";
$query=mysqli_query($con,$sql);

$row=mysqli_fetch_array($query);
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
      
        <title>Actualizar</title>
     
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <link rel="stylesheet" href="https://bootswatch.com/5/solar/bootstrap.min.css">
        
    </head>
    <body>
   
      <div class="container">
        <div class="row">
          <div class="col align-self-start">
          </div>
          <div class="col align-self-center">
            
          <div class="container mt-5">
            
            <form action="update.php" method="POST">
            
                        <input type="hidden" name="matricula" value="<?php echo $row['id_producto']  ?>">
                        
                        <input type="text" class="form-control mb-3" name="nombre" placeholder="CURP" value="<?php echo $row['nombre']  ?>">
                        <input type="text" class="form-control mb-3" name="cantidad" placeholder="Nombres" value="<?php echo $row['cantidad']  ?>">
                        <input type="text" class="form-control mb-3" name="descripcion" placeholder="Apellidos" value="<?php echo $row['descripcion']  ?>">
                        <input type="text" class="form-control mb-3" name="precio" placeholder="Edades" value="<?php echo $row['precio']  ?>">
                        <input type="submit" class="btn btn-primary btn-block" value="Actualizar">
            </form>
            
        </div>
               
            
          </div>
          <div class="col align-self-end">
          </div>
        </div>
      </div>
        <div class="row">
          <div class="col align-self-start">
          </div>
          <div class="col align-self-center">
          </div>
          <div class="col align-self-end">
          </div>
        </div>
      
    </div>





               
             
    </body>
</html>