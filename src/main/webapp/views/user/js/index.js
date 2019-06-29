$(document).ready(load);
function load(){
	"use strict";
	$("#myOrderActions").trigger("click");
	$("#changePasswdActions").trigger("click");
	$("#changeInfoActions").trigger("click");
	$("#changeAvatarActions").trigger("click");
	$("#orderStaActions").trigger("click");
	$("#paersonal_info_inputAvatar").change(changeAvatar);
	showSta();
}
function changeAvatar(){
	"use strict";
	$("#change_paersonal_info_avatar").attr("src",URL.createObjectURL($(event.target)[0].files[0]));
}
function deleteOrder(oid){
	"use strict";
	alert(oid);
}
function getSta(){
	"use strict";

}
//统计
function showSta(){
	"use strict";
	
	var month=new Array(12);
	month[0]="一月";month[1]="二月";month[2]="三月";month[3]="四月";month[4]="五月";month[5]="六月";
	month[6]="七月";month[7]="八月";month[8]="九月";month[9]="十月";month[10]="十一月";month[11]="十二月";
	
	var title = {text: '近一年内每个月预订客房数量'};//标题
    var subtitle = {text: ''};//副标题
   var xAxis = {categories: month};//横坐标
   var yAxis = {//纵坐标
      title: {text: 'Temperature (\xB0C)'},//标题
      plotLines: [{value: 0, width: 1,color: '#808080'}]
   };   

   var tooltip = {valueSuffix: '\xB0C'};//提示信息
   var legend = {layout: 'vertical',align: 'right',verticalAlign: 'middle',borderWidth: 0};//展示方式:配置图表向右对齐

   var series =  [//数据:配置图表要展示的数据。每个系列是个数组，每一项在图片中都会生成一条曲线
      {
         name: 'Tokyo',
         data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
      }, 
      {
         name: 'New York',
         data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]
      }, 
      {
         name: 'Berlin',
         data: [-0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]
      }, 
      {
         name: 'London',
         data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
      }
   ];

   var json = {};

   json.title = title;
   json.subtitle = subtitle;
   json.xAxis = xAxis;
   json.yAxis = yAxis;
   json.tooltip = tooltip;
   json.legend = legend;
   json.series = series;

   $('#staBox').highcharts(json);

}

