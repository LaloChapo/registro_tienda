
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
  <a class="navbar-brand" href="">Registros de clientes</a>
    </div>
  </div>
</nav>
            <div class="container mt-5">
                    <div class="row"> 
                        
                        <div class="col-md-4">
                            <h1>Registrar Clientes</h1>
                            <form id="form1" name="form1" method="post" action="insertar_c.php">
                            <p>
                            <label for="textfield">escribe su nombre:</label>
                            <input type="text" name="nombre" id="nombre">
                            </p>
                                            
                            <p>
                            <label for="textfield">escribe su RFC:</label>
                            <input type="text" name="rfc" id="rfc">
                            </p>
                            <p>
                            <input type="submit" name="enviar" id="enviar" value="enviar" />
                            </p>
                            </form>
                        </div>

                        
                                            
                            
                                 
                            
                            
                        
                       
                    </div>  
                    <div class="col-md-3">
                    </div>
            </div>
           
    </body>
</html>