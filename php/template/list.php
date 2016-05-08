<?php
/*
 * API file of Gamux.org
 * 这是游戏页面文件
*/
require_once "../db_config.php";
$archive = $_GET["archive"];
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
      </ol>
	</div>
	
    <div class="mid">
	  <ul class="am-list">
	  <?php 
	  if ($archive == "all" ) {
		$sql = "select * from ".$mysql_table." where if_exit=1 ";
		$result = mysql_query( $sql, $conn );
		$i=0;
		while ( $row = mysql_fetch_assoc( $result ) ) {
	  ?>
	  <li class="list-<?php echo $i; ?>">
	    <div class="list-block am-g">
		  <div class="list-block-a am-u-md-4">
		    <div class="list-block-a-namecn"><?php echo isset( $row['name_cn'] ) ? $row['name_cn'] : '暂缺数据'; ?></div>
		    <div class="list-block-a-nameen"><?php echo isset( $row['name_en'] ) ? $row['name_en'] : '暂缺数据'; ?></div>
		  </div>
		  <div class="list-block-b am-u-md-4">
		    <div class="list-block-a-size"><?php echo $row['size']; ?></div>
		    <div class="list-block-a-time"><?php echo $row['modify_time']; ?></div>
		  </div>
		  <div class="list-block-c am-u-md-4">
		    <button><a href="page.php?namespace=<?php echo $row['namespace']; ?>">下载游戏</a></button>
		  </div>
		</div>
	  </li>
	  <?php		  
			$i++;
		}
	  }
	  ?>
	  </ul>
    </div>
  </body>
</html>
