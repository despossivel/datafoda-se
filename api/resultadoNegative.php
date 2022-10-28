<?php

include('./dbcon.php');

$votos = $mysqli->query("SELECT * FROM votosNegative ");
$totalVotos = $votos->num_rows;

$votos = $mysqli->query("SELECT count(votosNegative.votos) AS numeroDeVotos, candidatos.* 
							FROM votosNegative 
							RIGHT JOIN candidatos ON votosNegative.idCandidato = candidatos.id 
							WHERE candidatos.status = 1
							GROUP BY candidatos.id 
							ORDER BY candidatos.nome DESC ");

$dados = array();
while ($ret = $votos->fetch_array()) {
	array_push($dados, $ret);
}

$json = array('totalVotos' => $totalVotos, 'dados' => $dados);

echo json_encode($json);