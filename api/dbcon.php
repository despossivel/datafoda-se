<?php
// header("Access-Control-Allow-Origin: *");
header('content-type: application/json; charset=utf-8');


// 216.238.68.14
$mysqli = new \mysqli(
  '192.168.0.106',
  'root',
  'MySql2019!',
  'testedb',
  '3306'
);

$mysqli->set_charset("utf8");

if ($mysqli->error) {
  trigger_error("Failed to connect to MYSQL" . $mysqli->error, E_USER_ERROR);
}

// http:///