<?php
include(dirname(__FILE__)."/../../conexion.php");

$solintereses="SELECT * from intereses";
$resintereses=mysqli_query($conexion, $solintereses);

?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="css/indexstyle.css">
<title>Index</title>
</head>

<body>
  <div class="wrapper">
    <nav class="main-header navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
      <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Christmas Crackers</a>
      <iframe src="https://rcm-eu.amazon-adsystem.com/e/cm?o=30&p=48&l=ur1&category=ebfd&banner=0NR66V8RFMM5XRRH8382&f=ifr&linkID=83e93a41bbe0426c7f7e004fa55c9aff&t=carlosmonzon-21&tracking_id=carlosmonzon-21" width="728" height="90" scrolling="no" marginwidth="0" style="border:none;" frameborder="0"></iframe>
      <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
          <a class="nav-link" href="#">Welcome</a>
        </li>
      </ul>
    </nav>

    <div class="content-wrapper">
      <div class="content" id="content">
        <h3>Elige género</h3>
        <div id="sexos" class="sexos">
          <div id="Masculino" class="image-stack">
            <img src="imagenes/hombre.png">
            <img src="imagenes/nino.png">
            <h4>Masculino</h4>
          </div>
          <div id="Femenino" class="image-stack">
            <img src="imagenes/mujer.png">
            <img src="imagenes/nina.png">
            <h4>Femenino</h4>
          </div>
          <div id="Indiferente" class="image-stack">
            <img src="imagenes/shrug.png">
            <h4>Indiferente</h4>
          </div>
        </div>

        <h3>Elige edad</h3>
        <div>
          <select id="edades">
            <option value="1">1-3</option>
            <option value="2">4-6</option>
            <option value="3">7-10</option>
            <option value="4">11-13</option>
            <option value="5">14-16</option>
            <option value="6">17-20</option>
            <option value="7">21-25</option>
            <option value="8">26-30</option>
            <option value="9">31-35</option>
            <option value="10">36-40</option>
            <option value="11">41-50</option>
            <option value="12">51-60</option>
            <option value="13">60+</option>
          </select>
        </div>

        <h3>Elige intereses</h3>
        <div id="intereses" class="intereses">
          <?php while($interes=mysqli_fetch_assoc($resintereses)){
            echo "<div class='image-stack'>
            <img id='".$interes['nombre']."' src='imagenes/".$interes['imagen']."'>
            <h4>".$interes['nombre']."</h4>
            </div>";
          }?>
        </div>

        <button id="gobutton" class="btn btn-primary btn-lg mx-auto" aria-pressed="true">Buscar</button>

      </div>
    </div>
  </div>

<form id="formbuscar" method="POST" action="searchpage.php">
  <input type="hidden" name="sexo" id="sexo" />
  <input type="hidden" name="edad" id="edad" />
  <input type="hidden" name="selintereses" id="selintereses" />
</form>

<script src="js/indexmain.js"></script>
</body>
</html>