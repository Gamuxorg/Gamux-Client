<?php
/*
 *本页面根据数据库内容生成json数据供外部调用
*/
require_once "db_config.php";
$sql = "select * from ".$mysql_table." where if_exit=1 ";
$result = mysql_query( $sql, $conn );
while ( $row = mysql_fetch_assoc( $result ) ) {
	$rows[] = $row; 
}
print_r( json_encode( $rows ) );