<?php
  session_start();
  /*iniciar sesion*/

  session_unset();
  //parar sesion

  session_destroy();
  //destruir sesion 
  //redireccionar al usuario
  header('Location: /login12');
?>
