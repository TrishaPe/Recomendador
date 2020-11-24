<?php
include(dirname(__FILE__)."/../conexion.php");

//Check conexion
if ($conexion->connect_error) {
    die("Connection failed: " . $conexion->connect_error);
}

//recoger datos
$nombre = $_POST['nombre'] ?? '';
$sexo = $_POST['sexo'] ?? '';
$edad_in = $_POST['edad_in'] ?? '';
$edad_fin = $_POST['edad_fin'] ?? '';
$interes1 = $_POST['interes1'] ?? '';
$interes2 = $_POST['interes2'] ?? '';
$imagen = $_POST['imagen'] ?? '';
$enlace = $_POST['enlace'] ?? '';

echo "nombre: ".$nombre."<br>";
echo "sexo: ".$sexo."<br>";
echo "edad_in: ".$edad_in."<br>";
echo "edad_fin: ".$edad_fin."<br>";
echo "interes2: ".$interes2."<br>";
echo "imagen: ".$imagen."<br>";
echo "enlace: ".$enlace."<br>";


//id, nombre, sexo, edad_in, edad_fin, imagen, enlace
//id_articulo, id_interes, interes_detalle

//insertar datos
$insertreq = "INSERT INTO articulos (nombre, sexo, edad_in, edad_fin, imagen, enlace) VALUES ('$nombre', $sexo, $edad_in, $edad_fin, '$imagen', '$enlace')";
$resultado = mysqli_query($conexion, $insertreq);
echo 'resultado = ' .$resultado;

//Sacar datos para tabla artículo_interes
$solid = "SELECT id from articulos where imagen='".$imagen."'";
$reqid = mysqli_query($conexion, $solid);
$reqrow = mysqli_fetch_assoc($reqid);
$artid = $reqrow['id'];

$insertinteres = "INSERT INTO articulo_interes (id_articulo, id_interes, interes_detalle) VALUES ($artid, $interes1, NULL)";
$resultado2 = mysqli_query($conexion, $insertinteres);
echo 'resultado2 = ' .$resultado2;

?>


<!--<form id="volver" method="POST" action="formulario.php">
    <input name="idempleado" value="<?php /*echo htmlentities($_POST['empleado']);*/ ?>">
    <input type="submit">
</form>

<script type="text/javascript">
    document.getElementById('volver').submit(); // SUBMIT FORM
</script>-->
