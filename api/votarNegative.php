<?php

include('./dbcon.php');

$candidato = $_GET['candidato'];
$categoria = $_GET['categoria'];
$macAddress = $_GET['macAddress'];
$phoneNumber = $_GET['phoneNumber'];

$mysqli->query("INSERT INTO votosNegative (idCandidato, categoria,macAddress,phoneNumber,  votos) 
VALUES ('" . $candidato . "', '".$categoria ."', '".$macAddress ."', '".$phoneNumber ."', 1)");

if ($mysqli->affected_rows == 1) {
	//$mysqli->query("INSERT INTO ip (userip)VALUES ('" . $ip . "')");
	$json = array("mensage" => 1);
} else {
	$json = array("mensage" => 0);
}

echo json_encode($json);