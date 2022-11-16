<?php
  session_start();

  if (isset($_SESSION['user_id'])) {
    header('Location: /login12');
  }

  require 'database.php';

  if(!empty($_POST['email']) && !empty($_POST['password'])) {
    $records=$conn->prepare('SELECT id_administrador, email, password FROM administrador WHERE email= :email');
    $records->bindParam(':email',$_POST['email']);
    $records->execute();
    $results = $records->fetch(PDO::FETCH_ASSOC);
    $message='';

    if(count($results)>0 && password_verify($_POST['password'], $results['password'])){
     $_SESSION['user_id']=$results['id_administrador'];
     header('Location:home.php');

    }
    else{
      $message='La contraseña no coinciden';
    }

  }
?> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar sesion</title>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    
  

</head>
<body>
<?php require 'partials/header.php' ?>
<?php if(!empty($message)): ?>
      <p> <?= $message ?></p>
    <?php endif; ?>
<h1>LOGIN</h1>
<span>or <a href="singup.php">Registrarse</a></span>
    <form action="login.php" method="POST">
      <input  type="text" name="email"placeholder="Ingrese su correo">
      <input  type="password" name="password" placeholder="Ingrese su correo">
      <input type="submit" value="send">
    </form>
</html>