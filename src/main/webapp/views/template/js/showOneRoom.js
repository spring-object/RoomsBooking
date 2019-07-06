$(function(){
	$("#book-now").on("click",function(){
		book();
	})
});

function book(){
	var start_time = $("#start_time").val();
	var end_time = $("#end_time").val();
	var rid = $("#rid").val();
//	var data = {rid: rid, startTime: start_time, endTime: end_time};
//	data.append("rid", rid);
//	data.append("startTime", start_time);
//	data.append("endTime", end_time);
	
	if(start_time == '' || end_time == '')
		return alert("请选择时间");
	
	window.location.href = "/booking/order/checkout?rid=" + rid + "&startTime=" + start_time + "&endTime=" + end_time;
	
//	$.ajax({
//		url: "/booking/order/checkout?rid=" + rid + "&startTime=" + start_time + "&endTime=" + end_time,
//		type: "GET",
////		data: JSON.stringify(data),
////		contentType: "application/json",
//		success: function(data){
//			if(data.result == "NOT_LOGIN") {
//				alert("请登录");
//			}else {
//				alert("对对对对对");
//			}
//		}
//	});
}
