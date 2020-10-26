<?php
// header("Access-Control-Allow-Origin: *");
header('content-type: application/json; charset=utf-8');

$mysqli = new \mysqli(
  'localhost',
  'root',
  'root123.',
  'dataFodase',
  '3306'
);

$mysqli->set_charset("utf8");

if ($mysqli->error) {
  trigger_error("Failed to connect to MYSQL" . $mysqli->error, E_USER_ERROR);
}
