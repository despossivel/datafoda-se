<?php

include('./dbcon.php');

$macAddress = $_GET['macAddress'];
$phoneNumber = $_GET['phoneNumber'];

$votos = $mysqli->query("SELECT * FROM votos ");
$totalVotos = $votos->num_rows;

$votos = $mysqli->query("SELECT count(votos.votos) AS numeroDeVotos, candidatos.* 
							FROM votos 
							RIGHT JOIN candidatos ON votos.idCandidato = candidatos.id 
							WHERE votos.macAddress = '".$macAddress."' AND votos.phoneNumber = '".trim($phoneNumber)."'  GROUP BY candidatos.id 
							ORDER BY candidatos.nome DESC");


$user = $mysqli->query("SELECT * FROM candidatos WHERE  phoneNumber = '".trim($phoneNumber)."' ");
							

$dados = array();
$userSession = array();


while ($ret = $user->fetch_array()) {
	array_push($userSession, $ret);
}

while ($ret = $votos->fetch_array()) {
	array_push($dados, $ret);
}

$json = array('totalVotos' => $totalVotos, 'dados' => $dados, 'user' => $userSession);

echo json_encode($json);