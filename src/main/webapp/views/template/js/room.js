$(function(){
	var select = '<div id="next" style="width:40px;position:relative;top:340px;left:1220px;z-index:1000;cursor: pointer;"><i class="fa fa-chevron-right fa-3x"></i></div>';
	select += '<div id="prev" style="width:40px;position:relative;top:300px;right:100px;z-index:1000;cursor: pointer;"><i class="fa fa-chevron-left fa-3x"></i></div>';
	$("#showRooms").append(select);
	showRooms();
	
});
var first = 0;
var last = 2;
function showRooms(){
	$.ajax({
		url: "/booking/room/showRooms",
		type: "GET",
		dataType: "json",
		success: function(data){
			if(data.result=="success"){
				owlCarousel(data.rooms,data.picturesSrc);
				$("#prev").show();
				$("#next").show();
				$("#prev").on("click",function(){
					first--;
					last--;
					if(first==-1){
						first = data.rooms.length-3;
						last = data.rooms.length-1;
					}
					owlCarousel(data.rooms,data.picturesSrc);
				});
				$("#next").on("click",function(){
					first++;
					last++;
					if(last%data.rooms.length==0){
						first = 0;
						last = 2;
					}
					owlCarousel(data.rooms,data.picturesSrc);
				});
			}
		}
	});
}

function owlCarousel(rooms,pictures){
	$("div[name='rooms']").empty();
	for(var i=first;i<=last;i++){
		var content = '<div name="rooms" class="col-md-4 col-sm-4 col-xs-4"><div class="offer-box">';
		content += '<i><img src="/booking/views/images/rooms/'+pictures[i]+ '"  width="353.33" height="253.6" style="width:353.33px;height:253.6px" alt="offer"></i><div class="offer-content" style="width:353.33px;height:253.6px">';
		content += '<h5>'+rooms[i].rname+'</h5>';
		content +='<p>'+rooms[i].info+'</p>';
		content +='<span>'+rooms[i].price+'￥/晚起</span>';
		content += '<a href="/booking/room/showOneRoom?rid='+rooms[i].rid+'" title="Book Now" class="book-now">马上预订</a></div></div></div>';
		$("#showRooms").append(content);
	}
}

