<?php
/*
 * API file of Gamux.org
 * 这是游戏页面文件
*/
$getnamespace = $_GET['namespace'];
require_once "../db_config.php";
$sql = "select * from ".$mysql_table." where if_exit=1 and namespace = '".$getnamespace."'";
$result = mysql_query( $sql );
$game = mysql_fetch_assoc($result);
?>
<!DOCTYPE HTML>
<html>
  <head>
    <meta charset="utf-8" />
	<link rel="stylesheet" href="http://cdn.amazeui.org/amazeui/2.6.2/css/amazeui.min.css">
	<link rel="stylesheet" href="../style/page.css">
	<script src="http://libs.useso.com/js/jquery/1.11.1/jquery.min.js"></script>	
	<script src="http://cdn.amazeui.org/amazeui/2.6.2/js/amazeui.min.js"></script>
  </head>
  
  <body>
    <div class="top-breadcrumb">
      <ol class="am-breadcrumb">
        <li><a href="../index.php">首页</a></li>
        <li><a href="list.php?archive=all">分类</a></li>
        <li class="am-active"><?php echo $game['name_cn']; ?></li>
      </ol>
	</div>
	
    <div class="mid">
      <div class="cnname"><?php echo $game['name_cn']; ?></div>
	  <div class="enname"><?php echo $game['name_en']; ?></div>
	  <div class="gameinfo">
	    <span class="version">本站版本: <?php echo explode("_", $game['ark_name'])[1]; ?></span>
		<span class="size">大小: <?php echo $game['size']; ?></span>
		<span class="update">更新: <?php echo $game['modify_time']; ?></span>
	  </div>
    </div>
	
	<div class="bottom">
		<div>下载游戏</div>
		<div>
			<div><a href="#">镜像1</a></div>
			<div><a href="#">镜像2</a></div>
		</div>
	</div>

    <div>软件介绍</div>	
	<div>
	<?php 
		if ( $game['steam_id'] == 0 ) {
			echo "本游戏暂未添加软件介绍";
		}
		else if ( $game['steam_id'] == 1 ) {
			echo "本游戏为开源游戏，本站暂不支持开源游戏的介绍模块。";
		}
		else if ( $game['steam_id'] == 2 ) {
			echo "本游戏为非开源游戏，但未登陆Steam，本站暂不支持开源游戏的介绍模块。";
		}
		else {
			echo "功能暂未开放";
		}
	?>
	</div>
  </body>
</html>
