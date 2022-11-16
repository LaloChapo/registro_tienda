<?php
ob_start();
?>

<!DOCTYPE html>
<html lang="es">
    <head>
        <title> Productos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

    </head>
    <body>
    <?php

            include("conexion.php");
            $con=conectar();

            $sql="SELECT * FROM venta";
            $query=mysqli_query($con,$sql);

            $row=mysqli_fetch_array($query);
            ?>
            <div class="container mt-5">
                    <div class="row"> 
                        <div class="col-md-8">
                            <table class="table" >
                                <thead class="table-success table-striped" >
                                    <tr>
									    <th>id_venta</th>
                                        <th>id_cliente</th>
                                        <th>Dia</th>
                                        <th>Mes</th>
                                        <th>AÑO</th>
                                        <th>Importe</th>
                                        <th>Iva</th>
                                        <th>Total</th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>

                                <tbody>
                                        <?php
                                            while($row=mysqli_fetch_array($query)){
                                        ?>
                                            <tr>
                                                <th><?php  echo $row['id_venta']?></th>
												<th><?php  echo $row['id_cliente']?></th>
                                                <th><?php  echo $row['dia']?></th>
                                                <th><?php  echo $row['mes']?></th>   
                                                <th><?php  echo $row['año']?></th>
												<th><?php  echo $row['importe']?></th>
                                                <th><?php  echo $row['IVA']?></th>
                                                <th><?php  echo $row['total']?></th> 
                                                                           
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
<?php
$html= ob_get_clean();
//echo $html;

require_once ('librerias/dompdf/autoload.inc.php');
use Dompdf\Dompdf;
$dompdf= new Dompdf();

$options= $dompdf->getOptions();
$options->set(array('isRemoteEnabled'=>true));
$dompdf->setOptions($options);


$dompdf->loadHtml("$html");
$dompdf->setPaper('letter');


$dompdf->render();

$dompdf->stream("archivo.pdf",array("Attachment" => false));

?>