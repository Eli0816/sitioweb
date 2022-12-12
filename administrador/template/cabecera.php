<?php 
session_start();
  if(!isset($_SESSION['usuario'])){
    header("Location:../index.php");
  }else{

      if($_SESSION['usuario']=="ok"){
        $nombreUsuario=$_SESSION["nombreUsuario"];

      }

  }

?>
<!doctype html>
<html lang="en">
  <head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="./css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link href="https://unpkg.com/vanilla-datatables@latest/dist/vanilla-dataTables.min.css" rel="stylesheet" type="text/css">
<script src="https://unpkg.com/vanilla-datatables@latest/dist/vanilla-dataTables.min.js" type="text/javascript"></script>



  </head>
  <body>
    
    <?php  $url="http://".$_SERVER['HTTP_HOST']."/sitioweb" ?>

    <nav class="navbar navbar-expand navbar-light bg-light">
        <div class="nav navbar-nav">
            <a class="nav-item nav-link active" href="#">Administrador del sitio web <span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link" href="<?php echo $url;?>/administrador/inicio.php">inicio</a>
           
            <a class="nav-item nav-link" href="<?php echo $url;?>/administrador/seccion/productos.php">Cursos</a>
            <a class="nav-item nav-link" href="<?php echo $url;?>/administrador/seccion/cerrar.php">Cerrar Sesion</a>

            <a class="nav-item nav-link" href="<?php echo $url;?>"> Ver sitio web </a>
        </div>
    </nav>
  <div class="container">
  <br/>
          <div class="row">