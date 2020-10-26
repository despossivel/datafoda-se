<?php

include('./dbcon.php');

$votos = $mysqli->query("SELECT * FROM votos ");
$totalVotos = $votos->num_rows;

$votos = $mysqli->query("SELECT count(votos.votos) AS numeroDeVotos, candidatos.* 
							FROM votos 
							RIGHT JOIN candidatos ON votos.idCandidato = candidatos.id 
							GROUP BY candidatos.id 
							ORDER BY candidatos.nome DESC");

$dados = array();
while ($ret = $votos->fetch_array()) {
	array_push($dados, $ret);
}

$json = array('totalVotos' => $totalVotos, 'dados' => $dados);

echo json_encode($json);