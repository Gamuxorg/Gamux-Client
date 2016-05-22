/*
	主要用于网页特效，逻辑交互请参见node.js
*/
var pagifrom = 0;
var jsonlen = 0;
var itemonpage = 9;
//获取数组数量
function Jsonlen() {
	$.ajax({
		type     : "get",
		url      : "http://api.gamux.org/api_list.php",
		contentType: "application/json; charset=utf-8",
		dataType : "json",
		async: true,
		success  : function(data) {
			for(var i in data) {
				jsonlen++;
			}						
		}
	});
}
//获取游戏列表和游戏页面
function Gapi(ifsync=false) {
	$(document).ready( function() {
	$.ajax({
		type     : "get",
		url      : "http://api.gamux.org/api_list.php",
		contentType: "application/json; charset=utf-8",
		dataType : "json",
		async: ifsync,
		success  : function(data) {
			for (var i=pagifrom; i<pagifrom+itemonpage; i++){
				$('.game-list').append(
					'<li class="gamelist-'+i+'">' +
						'<div class="list-block am-g">' +
							'<div class="list-block-d am-u-md-2">' +
								'<div class="list-block-a-namecn"><img src="http://cdn.steamstatic.com.8686c.com/steam/apps/'+data[i]['steam_id']+'/capsule_184x69.jpg" /></div>' +
							'</div>' +
							'<div class="list-block-a am-u-md-5">' +
								'<div class="list-block-a-namecn">'+data[i]['name_cn']+'</div>' +
								'<div class="list-block-a-nameen">'+data[i]['name_en']+'</div>' +
							'</div>' +
							'<div class="list-block-b am-u-md-3">' +
								'<div class="list-block-a-size">'+data[i]['size']+'</div>' +
								'<div class="list-block-a-time">'+data[i]['modify_time']+'</div>' +
							'</div>' +
							'<div class="list-block-c am-u-md-2">' +
								'<button type="button" class="am-btn am-btn-primary"><a href="#" class="getgame" game="'+data[i]['namespace']+'">点击进入</a></button>' +
							'</div>' +
							'<div class="clean"></div>' +
						'</div>' +
					'</li>'								
				);
			}
			//获取游戏页面
			$('.getgame').click( function() {
				var namespace = $(this).attr('game');
				$.ajax({
					type     : "get",
					url      : "http://api.gamux.org/template/page.php?namespace="+namespace,
					dataType : "html",
					async: true,
					success  : function(data) {
						$('.g-main-bottom').html(data);
					}
				});
			});
		
		}
	});
	});
}
//分页
function Pagination() {
	$(document).ready(function() {
		$('.pda').click( function() {
			$('.game-list').html('');
			$('.pua').css('display', 'block');
			pagifrom += itemonpage;
			Gapi(true);
			if ( pagifrom == Math.floor(jsonlen/itemonpage)*itemonpage ) {
				$('.pda').css('display', 'none');
			}
		});
		$('.pua').click( function() {
			$('.game-list').html('');
			$('.pda').css('display', 'block');
			pagifrom -= itemonpage;
			Gapi(true);
			if(pagifrom == 0 ){
				$('.pua').css('display', 'none');
			}
		});
		$('.pfa').click( function() {
			$('.game-list').html('');
			pagifrom = 0;
			Gapi(true);
			$('.pua').css('display', 'none');
			$('.pda').css('display', 'block');
		});
		$('.pla').click( function() {
			$('.game-list').html('');
			pagifrom = Math.floor(jsonlen/itemonpage)*itemonpage;
			Gapi(true);
			$('.pda').css('display', 'none');
			$('.pua').css('display', 'block');
		});		
	});
}
