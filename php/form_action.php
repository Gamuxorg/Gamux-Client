<?php
/*
 * 处理php2sql里的表单
*/
require_once "db_config.php";

$name_cn = $_GET['name_cn'];
$name_en = $_GET['name_en'];
$steam_id = $_GET['steam_id'];
$namespace = $_GET['namespace'];
$if_zh = $_GET['if_zh'];
$website = $_GET['website'];
$sql = 'update '.$mysql_table.' set name_cn = "'.$name_cn.'", name_en = "'.$name_en.'", steam_id = '.$steam_id.', if_zh = '.$if_zh.', website = "'.$website.'" where namespace="'.$namespace.'"';
mysql_query( $sql, $conn ); 
?>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="refresh" content="1; url=php2sql.php">
<meta charset="utf-8">
</head>
<body>
更新完成，即将跳转...
</body>
</html>
