$(function(){
	$("#book-now").on("click",function(){
		book();
	})
});
function book(){
	var start_time = $("#start_time").val();
	var end_time = $("#end_time").val();
	var rid = $("#rid").val();
	alert("开始时间："+start_time+",结束时间："+end_time+"，房间ID:"+rid);
	/*$.ajax({
		url: "/booking/order/",
		type: "GET",
		data: ""
	});*/
}
