<?php 
  require 'database.php';

  $message = '';

  if (!empty($_POST['nombre']) && !empty($_POST['precio'])&& !empty($_POST['cantidad'])&& !empty($_POST['descripcion'])) {
    $sql = "INSERT INTO productos (nombre,cantidad,descripcion,precio) VALUES (:nombre, :cantidad,:descripcion,:precio)";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':nombre', $_POST['nombre']);
    $stmt->bindParam(':cantidad', $_POST['cantidad']);
    $stmt->bindParam(':descripcion', $_POST['descripcion']);
    $stmt->bindParam(':precio', $_POST['precio']);

    if ($stmt->execute()) {
    
            Header("Location: r_productos.php");

    } else {
     
    }
  }
?>

