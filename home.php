<?php
  session_start();

  require 'database.php';

  if (isset($_SESSION['user_id'])) {
    $records = $conn->prepare('SELECT id_administrador, email, password FROM administrador WHERE id_administrador = :id_administrador');
    $records->bindParam(':id_administrador', $_SESSION['user_id']);
    $records->execute();
    $results = $records->fetch(PDO::FETCH_ASSOC);

    $user = null;

    if (count($results) > 0) {
      $user = $results;
    }
  }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <link rel="stylesheet" href="https://bootswatch.com/5/solar/bootstrap.min.css">
    
  
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
    <?php if(!empty($user)): ?>
      <br> Bienvenidio. <?= $user['email']; ?>
      <a href="salir.php">
        Salir
      </a>
    <?php else: ?>
        <?php endif;?>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link active" href="home.php">Principal
            <span class="visually-hidden">(current)</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="r_productos.php">Productos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="cliente_r.php">Clientes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="existencia.php">Existencia de producto</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Ventas.php">Ventas Totales</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="mi_grafica.php">Grafica de ventas</a>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-sm-2" type="text" placeholder="Search">
        <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav> 
      <div class="container">
        <div class="row">
          <div class="col align-self-start">
          <img src="imagen/1.png" class="img-thumbnail" alt="">
          </div>
          <div class="col align-self-center md-4"> 
           
          <div class="container -md">
                <!-- Carousel -->
          <div id="demo" class="carousel slide" data-bs-ride="carousel">
          
            <!-- Indicators/dots -->
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
              <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
              <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
            </div>
            
            <!-- The slideshow/carousel -->
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="imagen/1.jpg" alt="Avena " class="d-block" style="width:65%">
              </div>
              <div class="carousel-item">
                <img src="imagen/2.jpg" alt="Ovni" class="d-block" style="width:65%">
              </div>
              <div class="carousel-item">
                <img src="imagen/3.jpg" alt="Binario" class="d-block" style="width:65%">
              </div>
            </div>
            <div class="carousel-item">
                <img src="imagen/4.jpg" alt="Binario" class="d-block" style="width:65 %">
              </div>
            </div>
            
            <!-- Left and right controls/icons -->
            
           
          </div>
             
        </div>
          <div class="col align-self-end">
                <form action="r_venta.php" method="POST">
                  <h3>Registros de ventas </h3>
                <SELECT NAME="cliente" class="form-select" aria-label="Default select example">
                <option>Seleccione una Opción...</option>
                <?php 
                $host = "localhost";
                $usuario = "root";
                $password = "";
                $basedatos = "pinol";
                $con=new mysqli($host,$usuario,$password,$basedatos);
                $con->query("SET NAMES 'utf8'");
                $resultado=$con->query("select * from clientes");
                $limite=$resultado->num_rows;
                for($x = 1 ; $x <=$limite ; $x++){ 
                    $fila = mysqli_fetch_assoc($resultado); 
                    echo'<OPTION VALUE="'.$fila['id_cliente'].'">'.$fila['nombre'].'</OPTION>';
                }
                echo '$limite';
                ?>
                </SELECT>
                <br>
                <input type="date" name="calendario">
                <br>
                <button type="submit" class="btn btn-outline-primary">Vender</button>
                
                <br>
                
                </form>
               
          </div>
        </div>
      </div>

      <div class="container">
        <div class="row">
          <div class="col align-self-start">
            
          </div>
          <div class="col align-self-center">
          </div>
          <div class="col align-self-end">
           
          </div>
        </div>
      </div>
    </div>


    <script type="text/javascript" src="js/jquery.slim.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>