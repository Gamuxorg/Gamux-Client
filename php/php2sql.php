<?php
/*
mysql API
从php API生成，或用户手动输入的数据储存进mysql
*/
 
require_once "db_config.php";
$sql0 = "select * from ".$mysql_table." where if_exit=1"; 
$result0 = mysql_query( $sql0, $conn );
$prelength = mysql_num_rows( $result0 );
while ( $row = mysql_fetch_assoc($result0) ) {
	$rows[] = $row;
}
?>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8" />
<title>Gamux API 添加信息</title>
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="http://cdn.amazeui.org/amazeui/2.6.1/js/amazeui.min.js"></script>
<link rel="stylesheet" href="http://cdn.amazeui.org/amazeui/2.6.1/css/amazeui.min.css">
<link rel="stylesheet" href="./php2sql.css">
</head>
<body>
	暂不支持批量更新，一次只能更新一行。
  <div id="gamux">
	<table class="am-table" id="table">
		<thead>
			<tr id="title">
				<th class="id">ID</th>
				<th class="namespace">数据库命名</th>
				<th class="name_cn">中文名</th>
				<th class="name_en">英文名</th>
				<th class="steam_id">steam ID<div>0-等待添加</div><div>1-开源游戏</div><div>2-未登陆steam且非开源作品</div></th>
				<th class="if_zh">中文<div>0:无中文</div><div>1:有中文</div></th>
				<th class="size">容量</th>
				<th class="cat">分类</th>
				<th class="version">当前版本</th>
				<th class="website">官方网站<div>若有官网，则不要填steam、desura、HIB或</div><div>github等地址,若没有则可填</div></th>
				<th class="update">更新</th>
			</tr>
		</thead>
		<tbody>
<?php
foreach( $rows as $key=>$value ) {
//		fix_dump($value);
?>		 
			<tr>
			  <form action="form_action.php" method="get">
				<td class="id"><?php echo $value['id']; ?></td>
				<td class="namespace"><input type="text" readonly="readonly" name="namespace" value="<?php echo $value['namespace']; ?>" /></td>
				<td class="name_cn"><input type="text" name="name_cn" value="<?php echo $value['name_cn']; ?>" /></td>
				<td class="name_en"><input type="text" name="name_en" value="<?php echo $value['name_en']; ?>" /></td>
				<td class="steam_id"><input type="number" name="steam_id" value="<?php echo $value['steam_id']; ?>" /></td>
				<td class="if_zh">
					<input type="number" name="if_zh" max="1" min="0" value="<?php echo $value['if_zh']; ?>" />
				<td class="size"><?php echo $value['size']; ?></td>				
				<td class="cat"><?php echo $value['cat']; ?></td>				
				<td class="version"><?php echo explode("_", $value['ark_name'])[1]; ?></td>				
				<td class="website"><input type="text" name="website" value="<?php echo $value['website']; ?>" /></td>
				<td class="update"><input type="submit" value="更新" /></td>
			  </form>
			</tr>
<?php		
}
?> 
		</tbody>

	</table>
  </div>
</body>
</html>

		






