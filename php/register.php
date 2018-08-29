<?php
// Esto le dice a PHP que usaremos cadenas UTF-8 hasta el final
mb_internal_encoding('UTF-8');
 
// Esto le dice a PHP que generaremos cadenas UTF-8
mb_http_output('UTF-8');

//echo "Conecto";
// Variables
$time = time();
$fecha = date("d/m/Y", $time);
$datos = trim($_POST["datos"]);
$Nombres = trim($_POST["Nombres"]);
$Apellidos = trim($_POST["Apellidos"]);
$Telefono = trim($_POST["Telefono"]);
$Correo = trim($_POST["Correo"]);
$Area = trim($_POST["Area"]);

//echo $datos, $Nombres, $Apellidos, $Telefono, $Correo, $Area;

$mysqli = new mysqli("Servidor", "Usuario", "Contraseña", "Base de datos"); //En este se debe poner el Servidor "localhost" - Usuario con permisos a la BD - Contraseña del Usuario - Base de Datos
if ($mysqli->connect_errno) {
	echo "Fallo al conectar a MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}

$sql = "INSERT INTO Tabla (Autorizacion, Nombres, Apellidos, Telefono, Correo, Area) VALUES ('$datos', '$Nombres', '$Apellidos', '$Telefono', '$Correo', '$Area')"; //En Tabla se reemplaza por la tabla de la base de datos que tiene los campos
if (mysqli_query($mysqli, $sql)) {
      echo "<center><h3>SU REGISTRO SE REALIZÓ SATISFACTORIAMENTE<br></h3></center>";
      echo "<h2>";
} else {
      echo "Error: " . $sql . "<br>" . mysqli_error($mysqli);
}
mysqli_close($mysqli);


?>