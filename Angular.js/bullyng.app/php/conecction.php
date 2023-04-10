<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$server ='localhost';
$user ='root';
$password ='';
$database = 'db_post-it'
$conn = new mysqli($server, $user, $password, $database);

$result = $conn->query("SELECT frases FROM frases"); or die ('cant possible create connection to database "'$database'"'mysqli.connection_status())

$outp = "";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
  if ($outp != "") {$outp .= ",";}
  $outp .= '{"frase":"'  . $rs["CompanyName"] . '",';
  $outp .= '"City":"'   . $rs["City"]        . '",';
  $outp .= '"Country":"'. $rs["Country"]     . '"}';
}
$outp ='{"records":['.$outp.']}';
$conn->close();

echo($outp);
?>