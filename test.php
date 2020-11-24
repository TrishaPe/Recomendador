<?php
include(dirname(__FILE__)."/../conexion.php");


$sexo = $_POST['sexo'] ?? '';
$edad = $_POST['edad'] ?? '';
$selintereses = $_POST['selintereses'] ?? '';

$solarticulos="SELECT id, nombre, sexo, edad_in, edad_fin, imagen, enlace from articulos";
$resarticulos=mysqli_query($conexion, $solarticulos);

$solintereses="SELECT id, nombre from intereses";
$resintereses=mysqli_query($conexion, $solintereses);

$solartint="SELECT id_articulo, id_interes, interes_detalle from articulo_interes";
$resartint=mysqli_query($conexion, $solartint);
$artint=array();
while ($row=mysqli_fetch_assoc($resartint)){
  $artint[]=$row;
}

$dropdowns='[
  {"2":{"animales":"animal_tipo"}}, 
  {"9":{"cine":"generos"}}, 
  {"8":{"libros":"generos"}}, 
  {"10":{"juegos":"juego_tipos"}}
]';


?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="css/styletest.css">
<title>Test</title>
</head>
<body>
  <div class="wrapper">
    <nav class="main-header navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
      <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Christmas Crackers</a>
      <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
          <a class="nav-link" href="#">Sign out</a>
        </li>
      </ul>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
          <div class="sidebar-sticky">
            <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
              <span>Intereses</span>
            </h6>
            <div id="checklist" class="flex-column nav-link feather">
              <?php
              $intereses=array();
              while($interes=mysqli_fetch_assoc($resintereses)){
                echo "<div id='div".$interes['id']."' class='form-check'>
                <input type='checkbox' class='form-check-input interes' id='".$interes['id']."' name='int".$interes['id']."' value='".$interes['nombre']."'>
                <label class='form-check-label' for='".$interes['nombre']."'>".$interes['nombre']."</label>
                </div>";
                $intereses[]=$interes;
              }?>
            </div>

            <!--<h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
              <span>Saved reports</span>
              <a class="d-flex align-items-center text-muted" href="#">
                <span data-feather="plus-circle"></span>
              </a>
            </h6>
            <ul class="nav flex-column mb-2">
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Current month
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Last quarter
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Social engagement
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Year-end sale
                </a>
              </li>
            </ul>-->
          </div>
        </nav>
      </div>
    </div>


    <div class="content-wrapper">
      <div class="content" id="content">
        <?php
        $articulos=array();
        while ($art=mysqli_fetch_assoc($resarticulos)){
          echo "<div class='image-box' id='art".$art['id']."'>
            <a href='".$art['enlace']."'>
            <img src='imagenes/".$art['imagen']."'>
            <h4>".$art['nombre']."</h4>
            </a>
          </div>";
          $articulos[] = $art;
        }?>
      </div>
    </div>
  </div>

  <script>
    //Datos de base de datos
    var articulos= <?php echo json_encode($articulos) ?>;
    var intereses= <?php echo json_encode($intereses) ?>;
    var artint= <?php echo json_encode($artint) ?>;
    
    //Datos seleccionados en primera página
    var sexo = '<?php echo $sexo ?>';
    var edad = <?php echo $edad ?>;
    var selintereses = '<?php echo $selintereses ?>';
  </script>
  <script src="js/maintest.js"></script>


</body>
</html>