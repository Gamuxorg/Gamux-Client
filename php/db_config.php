<?php
/*
info of mysql
*/
$mysql_server_name = "localhost";
$mysql_username = "gamux";
$mysql_password = "123456";
$mysql_database = "gamux";
$mysql_table = "meta";
$conn = mysql_connect($mysql_server_name, $mysql_username, $mysql_password);
mysql_select_db($mysql_database, $conn);
mysql_query("set names utf8");
