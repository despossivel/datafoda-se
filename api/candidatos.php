<?php

include('./dbcon.php');

ini_set('display_errors',1);
ini_set('display_startup_erros',1);
error_reporting(E_ALL);

$candidatos = $mysqli->query("SELECT * FROM candidatos WHERE status = 1 ORDER BY nome DESC");

$dados = array();
while ($ret = $candidatos->fetch_array()) {
	array_push($dados, $ret);
}

$json = array('dados' => $dados);

echo json_encode($json);
