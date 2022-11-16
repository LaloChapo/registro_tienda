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
</nav>
            <div class="container mt-5">
                    <div class="row"> 
                        
                        <div class="col-md-4">
                            <h1>Registrar Productos</h1>
                                <form action="r_detalle_venta.php" method="POST">
                                <SELECT NAME="producto" class="form-select" aria-label="Default select example">
                                <option>Seleccione un producto...</option>
                                <?php 
                                $host = "localhost";
                                $usuario = "root";
                                $password = "";
                                $basedatos = "pinol";
                                $con=new mysqli($host,$usuario,$password,$basedatos);
                                $con->query("SET NAMES 'utf8'");
                                $resultado=$con->query("select * from productos");
                                $limite=$resultado->num_rows;
                                for($x = 1 ; $x <=$limite ; $x++){ 
                                    $fila = mysqli_fetch_assoc($resultado); 
                                    echo'<OPTION VALUE="'.$fila['id_producto'].'">'.$fila['nombre'].'</OPTION>';
                                }
                                ?>
                                </SELECT>

                                <br>
                                <SELECT NAME="venta" class="form-select" aria-label="Default select example">
                                <option>Seleccione una venta...</option>
                                <?php 
                                $host = "localhost";
                                $usuario = "root";
                                $password = "";
                                $basedatos = "pinol";
                                $con=new mysqli($host,$usuario,$password,$basedatos);
                                $con->query("SET NAMES 'utf8'");
                                $resultado=$con->query("select * from venta");
                                $limite=$resultado->num_rows;
                                for($x = 1 ; $x <=$limite ; $x++){ 
                                    $fila = mysqli_fetch_assoc($resultado); 
                                    echo'<OPTION VALUE="'.$fila['id_venta'].'">'.$fila['id_venta'].'</OPTION>';
                                }
                                ?>
                                </SELECT>

                                <p>Escriba la cantidad: <input type="text" id="can" name="can" placeholder="Cantidad del producto"></p> 

                                <input type="submit" >
                                </form>
                                                        
                                            
                            
                                 
                            
                            
                        
                       
                    </div>  
                    <div class="col-md-3">
                    </div>
            </div>
           
    </body>
</html>