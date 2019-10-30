<?php
  header("Access-Control-Allow-Origin: *");
  header('content-type: application/json; charset=utf-8');
  
//  $mysqli = new mysqli("143.208.11.38", "root", "Hannibalshaw123.", "datafodase","3306"); //,"13306"
// $mysqli = new mysqli("localhost", "root", "root", "dataFodase","13306"); //,"13306"
$mysqli = new \mysqli(
  '192.168.3.19',
  'root',
  'root',
  'dataFodase',
  '13306'
);
 
$mysqli->set_charset("utf8");


if ($mysqli->error) {

  trigger_error("Failed to connect to MYSQL" . $mysqli->error, E_USER_ERROR);

}