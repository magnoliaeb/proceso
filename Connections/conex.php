<?php
$hostname_conex = "localhost";
$database_conex = "process";
$username_conex = "root";
$password_conex = "";
$conex = mysqli_connect($hostname_conex, $username_conex, $password_conex, $database_conex) 
or die ("No se ha podido conectar al servidor de Base de datos");; 
?>
