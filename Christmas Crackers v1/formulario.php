<?php
  include(dirname(__FILE__)."/../conexion.php");
  
  $solsexos = "SELECT id, nombre from sexos";
  $sexos = mysqli_query($conexion, $solsexos);

  $solintereses = "SELECT id, nombre from intereses";
  $intereses = mysqli_query($conexion, $solintereses);

?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <title>Formulario añadir artículos</title>
</head>
<body>
<div id="formulario" class="container d-flex justify-content-center">
  <div class="row d-flex justify-content-center">
    <div class="container d-flex justify-content-center"><h3>Añadir artículos</h3></div>
      <form class="col-8" method="POST" action="insertform.php">
        <div class="form-group">
          <label for="nombre">Nombre</label>
          <input type="text" class="form-control" id="nombre" name="nombre" required>
        </div>
        <div class="form-group">
          <label for="sexo">Sexo</label>
          <?php
            echo "<select class='form-control' name='sexo' required><option value=''>Seleccione</option>";
            while ($row = mysqli_fetch_array($sexos)) {
              echo "<option value='".$row['id']."'>".$row['nombre']."</option>";
            }
            echo "</select>";
          ?>
        </div>
        <div class="form-group">
          <label for="edad_in">Edad inicio</label>
          <input type="number" class="form-control" id="edad_in" name="edad_in" required>
        </div>
        <div class="form-group">
          <label for="edad_fin">Edad fin</label>
          <input type="number" class="form-control" id="edad_fin" name="edad_fin" required>
        </div>
        <div class="form-group">
          <label for="interes1">Interes 1</label>
          <?php
            mysqli_data_seek($intereses,0);
            echo "<select class='form-control' name='interes1' required><option value=''>Seleccione</option>";
            while ($row2 = mysqli_fetch_array($intereses)) {
              echo "<option value='".$row2['id']."'>".$row2['nombre']."</option>";
            }
            echo "</select>";
          ?>
        </div>
        <div class="form-group">
          <label for="interes2">Interes 2</label>
          <?php
            mysqli_data_seek($intereses,0);
            echo "<select class='form-control' name='interes2'><option value=''>Seleccione</option>";
            while ($row3 = mysqli_fetch_array($intereses)) {
              echo "<option value='".$row3['id']."'>".$row3['nombre']."</option>";
            }
            echo "</select>";
          ?>
        </div>
        <!--<div class="form-group">
          <label for="detalle1">Detalle interes 1</label>
          <?php
            /*mysqli_data_seek($intereses,0);
            echo "<select class='form-control' name='detalle1' required><option value=''>Seleccione</option>";
            while ($row3 = mysqli_fetch_array($intereses)) {
              echo "<option value='".$row3['id']."'>".$row3['nombre']."</option>";
            }
            echo "</select>";*/
          ?>
        </div>
        <div class="form-group">
          <label for="detalle2">Detalle interes 2</label>
          <?php
            /*mysqli_data_seek($intereses,0);
            echo "<select class='form-control' name='detalle2' required><option value=''>Seleccione</option>";
            while ($row3 = mysqli_fetch_array($intereses)) {
              echo "<option value='".$row3['id']."'>".$row3['nombre']."</option>";
            }
            echo "</select>";*/
          ?>
        </div>-->
        <div class="form-group">
          <label for="imagen">Nombre imagen</label>
          <input type="text" class="form-control" id="imagen" name="imagen" required>
        </div>
        <div class="form-group">
          <label for="enlace">Enlace</label>
          <input type="text" class="form-control" id="enlace" name="enlace" required>
        </div>
        <input type="submit" value="Enviar">
      </form>
    </div>

  </div>
</div>

    
</body>
</html>