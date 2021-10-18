<?php

include('./dbcon.php');

ini_set('display_errors',1);
ini_set('display_startup_erros',1);
error_reporting(E_ALL);

$candidatos = $mysqli->query("SELECT * FROM countDown");

$dados = array();
while ($ret = $candidatos->fetch_array()) {
	array_push($dados, $ret);
}

$json = array('dados' => $dados);

echo json_encode($json);
