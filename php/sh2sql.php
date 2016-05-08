<?php
/*
mysql API
将shell生成的数据储存进mysql
本脚本每天凌晨定时更新
*/

require_once "db_config.php";
require_once "functions.php";

$url = "http://mirror1.gamux.org:8080/gamux/clinetgame/gamelist.txt";
$content = file_get_contents( $url ) or exit("无法获取文本，请检查服务器！");
$arrsource = preg_split("/\s+/", $content);
array_splice( $arrsource, -1, 1 );
$arrchunk = array_chunk( $arrsource, 7 );
$prelength = count( $arrchunk );
$mysql_insert_value = "";
for ( $i = 0; $i < $prelength; $i++ ) {
	array_splice( $arrchunk[$i], 0, 3 );
	$arrchunk[$i][1] = $arrchunk[$i][1]." ".$arrchunk[$i][2];
	array_splice( $arrchunk[$i], 2, 1 );
	$arrchai = preg_split("/\/+/", $arrchunk[$i][2]);
	$arrchunk[$i][2] = $arrchai[1];
	$arrchunk[$i][3] = $arrchai[2];
	$arrchunk_namespace[$i] = $arrchunk[$i][2]; 
}

//链接数据库
//if_exit 为0表示游戏在服务器不存在，1表示存在，2表示存在百度网盘
//if_zh 为0表示游戏无中文，为1表示自带或整合了中文
$sql = "select * from ".$mysql_table." where if_exit=1 ";
$result = mysql_query( $sql, $conn );
$rowsnum = mysql_num_rows( $result );
if ($rowsnum != 0){
mysql_data_seek($result,0);
}

if ( $rowsnum == 0 ){
	$x = 1;
	while ( $x <= $prelength ) {
		if ( $x == 1 ){
			$sql1 = "INSERT INTO `".$mysql_table."` (`size`, `create_time`, `namespace`, `ark_name`, `if_exit`) VALUES ('".$arrchunk[0][0]."','".$arrchunk[0][1]."','".$arrchunk[0][2]."','".$arrchunk[0][3]."', 1)";
		}
		else {
			$sql1 .= ", ('".$arrchunk[$x-1][0]."','".$arrchunk[$x-1][1]."','".$arrchunk[$x-1][2]."','".$arrchunk[$x-1][3]."', 1)"; 				
		}
		$x++;
	}
	mysql_query( $sql1 );
}
else {
	$y = 0;
	while ( $row = mysql_fetch_row( $result ) ) {
		$table_row[$y] = $row;
		$table_row_namespace[$y] = $row[6];
		//namespace是第七个
		$y++;
	}
	mysql_data_seek($result,0);
	$mysql_array_diff_sh =  array_diff( $arrchunk_namespace, $table_row_namespace );
	$mysql_array_diff_sql = array_diff( $table_row_namespace, $arrchunk_namespace );
	$array_diff_length_sh = count( $mysql_array_diff_sh );
	$array_diff_length_sql = count( $mysql_array_diff_sql );
	if ( $array_diff_length_sh ==1 ) {
		foreach ( $mysql_array_diff_sh as $key=>$val ) {
			$sql2 = "INSERT INTO `".$mysql_table."` (`size`, `create_time`, `namespace`, `ark_name`, `if_exit`) VALUES ('".$arrchunk[$key][0]."','".$arrchunk[$key][1]."','".$arrchunk[$key][2]."','".$arrchunk[$key][3]."', 1)";
			mysql_query( $sql2 );
			break;
		}			
	}
	else if ( $array_diff_length_sh > 1 ) {
		$m = 0;
		while ( $m < $array_diff_length_sh ) {
			if ( $m == 0 ){
				foreach ( $mysql_array_diff_sh as $key=>$val ) {
					$sql3 = "INSERT INTO `".$mysql_table."` (`size`, `create_time`, `namespace`, `ark_name`, `if_exit`) VALUES ('".$arrchunk[$key][0]."','".$arrchunk[$key][1]."','".$arrchunk[$key][2]."','".$arrchunk[$key][3]."', 1)";
					break;
				}
			}
			else {					
				$sql3 .= ", ('".$arrchunk[$m][0]."','".$arrchunk[$m][1]."','".$arrchunk[$m][2]."','".$arrchunk[$m][3]."', 1)"; 				
			}
			$m++;
		}
		mysql_query( $sql3 );			
	}
	else {
		if ( $array_diff_length_sql == 0 ) {
			for ( $x = 0; $x < $prelength; $x++ ){
				for ( $z = 0; $z < $prelength; $z++ ){
					if ( $table_row[$z][6] == $arrchunk[$x][2] ) {
						$sql4 = "update ".$mysql_table." set size='".$arrchunk[$x][0]."', modify_time='".$arrchunk[$x][1]."', ark_name='".$arrchunk[$x][3]."' where namespace='".$arrchunk[$x][2]."'";
						mysql_query( $sql4 ); 
					}
				}
			}				
		}
		else {
			foreach ( $mysql_array_diff_sql as $key=>$val ) {
				$sql5 = "update ".$mysql_table." set if_exit = 0 where namespace= '".$val."'";
				mysql_query( $sql5 );					
			}
		}
	}
	//删除重复字段
	$sql6 = "DELETE ".$mysql_table." FROM ".$mysql_table." LEFT OUTER JOIN (SELECT MIN(id) as id, namespace FROM ".$mysql_table." GROUP BY namespace) as a ON ".$mysql_table.".id = a.id WHERE a.id IS NULL";  
	mysql_query( $sql6 );
}