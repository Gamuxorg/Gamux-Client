//list.html
var pagifrom = 0;
var jsonlen = 0;
var itemonpage = 10;
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
							'<div class="list-block-a am-u-md-4">' +
								'<div class="list-block-a-namecn">'+i+data[i]['name_cn']+'</div>' +
								'<div class="list-block-a-nameen">'+data[i]['name_en']+'</div>' +
							'</div>' +
							'<div class="list-block-b am-u-md-4">' +
								'<div class="list-block-a-size">'+data[i]['size']+'</div>' +
								'<div class="list-block-a-time">'+data[i]['modify_time']+'</div>' +
							'</div>' +
							'<div class="list-block-c am-u-md-4">' +
								'<button><a href="#" class="getgame" game="'+data[i]['namespace']+'">点击进入</a></button>' +
								'<button><a href="#" class="lanchgame" game="'+data[i]['namespace']+'">lanch</a></button>' +

							'</div>' +
						'</div>' +
					'</li>'								
				);
			}

			$('.lanchgame').click(function(){
				console.log('lanch start')
				var namespace = $(this).attr('game');
				ret=lanchGame(namespace);
				console.log('lanch end'+ret)

			})

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
//page.html
function getGame() {
		$('.getgame').click( function() {
		$.ajax({
			type     : "get",
			url      : "http://api.gamux.org/template/page.php?namespace="+$(this).attr('game'),
			dataType : "html",
			async: false,
			success  : function(data) {
				alert($(this).attr('game'));
			}
		});
		});
}
function GET(name) {    
  var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");    
  var r = window.location.search.substr(1).match(reg);    
  if (r != null) 
	return unescape(r[2]); 
	return null;   
}
