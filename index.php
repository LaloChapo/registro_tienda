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
    <meta name="viewport" content= "width=device-width, initial-scale=1.0">
    <title>Bienvenido a Productos Pinol Pichucalco</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://bootswatch.com/5/morph/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body>
<?php require 'partials/header.php' ?>

    <?php if(!empty($user)): ?>
      <br> Bienvenidio. <?= $user['email']; ?>
      <br>Inicio de sesion con exito
      <a href="salir.php">
        Salir
      </a>
    <?php else: ?>
      <center><div class="tit"><h2 style="color: #a200ff; ">Iniciar sesion o Registrarse </h2>
    <form action="singup.php" method="POST">
      <input type="submit" value="Registrarse">
    </form>
    <form action="login.php" method="POST">
      <input type="submit" value="Iniciar sesion">
    </form>
     </div>

    <?php endif;?>

    <script type="text/javascript" src="js/jquery.slim.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>