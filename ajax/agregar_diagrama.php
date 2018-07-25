<?php require_once('../Connections/conex.php')?>

<?php


$name=$_POST['name']; 
$author=$_POST['author']; 
$code = $_POST['code'];


$query = sprintf("SELECT name FROM diagrama  WHERE name='".$name."'");
mysqli_select_db($conex, $database_conex);
$Dato=mysqli_query($conex,$query) or die(mysqli_error());
$DatoName = mysqli_num_rows($Dato);

if($DatoName==1){

    echo 3;
}

else {if ((isset($_POST["agregar"])) && ($_POST["agregar"] == "1")) {
  $insertSQL = sprintf("INSERT INTO diagrama  (name, author, code) VALUES ('$name','$author' ,'$code')");
  $Result1 = mysqli_query($conex, $insertSQL) or die(mysqli_error());

if($Result1==true){ 
  echo 1;
} else { 
  echo 0;
  }

}
}
?>