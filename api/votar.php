<?php

include('./dbcon.php');

$candidato = $_GET['candidato'];

$mysqli->query("INSERT INTO votos (idCandidato, votos)VALUES ('" . $candidato . "', 1)");
if ($mysqli->affected_rows == 1) {
	//$mysqli->query("INSERT INTO ip (userip)VALUES ('" . $ip . "')");
	$json = array("mensage" => 1);
} else {
	$json = array("mensage" => 0);
}

echo json_encode($json);