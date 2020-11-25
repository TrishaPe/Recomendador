<?php
include(dirname(__FILE__)."/../conexion.php");

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
  <div class="container justify-content-center">
    
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

    <button id="gobutton">Buscar</button>

  </div>
</div>

<form id="formbuscar" method="POST" action="test.php">
  <input type="hidden" name="sexo" id="sexo" />
  <input type="hidden" name="edad" id="edad" />
  <input type="hidden" name="selintereses" id="selintereses" />
</form>

<script src="js/indexmain.js"></script>
</body>
</html>