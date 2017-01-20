<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>showUser</title>
<script src="../js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="../js/hightChar/highcharts.js" type="text/javascript"></script>
<script src="../js/hightChar/exporting.js" type="text/javascript"></script>
<script src="../js/zzjs/z.js" type="text/javascript"></script>
<script type="text/javascript">
test.eq("asdada");
zz.$();

/* $(function () {
    $(document).ready(function () {
        Highcharts.setOptions({
            global: {
                useUTC: false
            }
        });
        $('#container').highcharts({
            chart: {
                type: 'spline',
                animation: Highcharts.svg, // don't animate in old IE
                marginRight: 10,
                events: {
                    load: function () {
                        // set up the updating of the chart each second
                        var series = this.series[0];
                        var series2 = this.series[1];
                        setInterval(function () {
                            var x = (new Date()).getTime(), // current time
                                y = Math.random();
                            series.addPoint([x, y], true, true);
                            series2.addPoint([x-0.1, y], true, true);
                        }, 1000);
                     
                    }
                }
            },
            title: {
                text: 'Live random data'
            },
            xAxis: {
                type: 'datetime',
                tickPixelInterval: 150
            },
            yAxis: {
                title: {
                    text: 'Value'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                formatter: function () {
                    return '<b>' + this.series.name + '</b><br/>' +
                        Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
                        Highcharts.numberFormat(this.y, 2);
                }
            },
            legend: {
                enabled: false
            },
            exporting: {
                enabled: true
            },
            series: [{
                name: 'Random data',
                data: (function () {
                    // generate an array of random data
                    var data = [],
                        time = (new Date()).getTime(),
                        i;
                    for (i = -19; i <= 0; i += 1) {
                        data.push({
                            x: time + i * 1000,
                            y: Math.random()
                        });
                    }
                    return data;
                }())
            },
            {
                name: 'Random2 data',
                data: (function () {
                    // generate an array of random data
                    var data = [],
                        time = (new Date()).getTime(),
                        i;
                    for (i = -19; i <= 0; i += 1) {
                        data.push({
                            x: time + i * 1000,
                            y: Math.random()
                        });
                    }
                    return data;
                }())
            }
            ]
        });
    });
}); */

/* $(function () {  
    var chart;  
    chart = new Highcharts.Chart({  
        chart: {  
            renderTo: 'container',          //放置图表的容器  
            plotBackgroundColor: null,  
            plotBorderWidth: null,  
            zoomType: 'xy' //支持图表放大缩小的范围  
        },  
        title: {  
            text: '支持放大功能的双Y轴线性柱状混合图以及自行格式化y轴刻度示例'  
        },  
        subtitle: {  
            text: '短信发送数与成功率'  
        },  
        xAxis: [{  
            categories: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],  
            labels: {  
                rotation: -45, //字体倾斜  
                align: 'right',  
                style: { font: 'normal 13px 宋体' }  
            }  
        }],  
        yAxis: [{ // Primary yAxis  
            title: {  
                text: '成功率 (%)',  
                style: {  
                    color: '#89A54E'  
                }  
            },  
            labels: {  
                format: '{value} 条',//格式化Y轴刻度  
                style: {  
                    color: '#89A54E'  
                }  
            }  
        }, { // Secondary yAxis  
            title: {  
                text: '发送数 (条)',  
                style: {  
                    color: '#4572A7'  
                }  
            },  
            labels: {  
                format: '{value} %',  
                style: {  
                    color: '#4572A7'  
                }  
            },  
            opposite: true  
        }],  
        tooltip: {  
            shared: true, //公用一个提示框  
            formatter: function() {  
                return this.x +"<br>"  
                   + "<span style='color:#4572A7'>发送数：" + this.points[0].y +" 条</span><br>"   
                   + "<span style='color:#89A54E'>成功率：" + this.points[1].y +" %</span>"  
                ;  
            }  
        },  
        //图例样式设置  
        series: [{  
            name: '发送数',  
            color: '#4572A7',  
            type: 'column',  
            yAxis: 1,  
            data: [500, 700, 1000, 1200, 1405, 1706, 135],  
            tooltip: {  
                formatter: function() {  
                    return this.y +"条";  
                }  
            }  
  
        }, {  
            name: '成功率',  
            color: '#89A54E',  
            type: 'spline',  
            yAxis: 0,  
            data: [80, 22.5, 45, 90, 99, 35, 45 ],  
            tooltip: {  
                valueSuffix: ' %'  
            }  
        }]  
    });  
});   */


/* $(function(){
	$('#hightchartcontainer').highcharts({
		lang : {
			printChart : "打印图表",
			downloadPNG : "下载PNG图片",
			downloadJPEG : "下载JPEG图片",
			downloadPDF : "下载PDF文档",
			downloadSVG : "下载SVG矢量图",
			exportButtonTitle : "导出图片"
		},
		title : {
			text : '云总机拨打统计',
			x : -20
		// center
		},
		subtitle : {
			x : -20
		},
		xAxis : {
			tickmarkPlacement : 'on',
			categories : ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
		},
		yAxis: [{ // Primary yAxis  
            title: {  
                text: '花费 (元)',  
                style: {  
                    color: '#89A54E'  
                }  
            },  
            labels: {  
                format: '{value} 元',//格式化Y轴刻度  
                style: {  
                    color: '#89A54E'  
                }  
            } ,
            min:0
        }, { // Secondary yAxis  
            title: {  
                text: '通话时长 (秒)',  
                style: {  
                    color: '#4572A7'  
                }  
            },  
            labels: {  
                format: '{value} 秒',  
                style: {  
                    color: '#4572A7'  
                }  
            },  
            opposite: true  
        }], 
        exporting : {
			filename:'大象云通信服务平台-云总机业务统计',
			url:'http://export.hcharts.cn',
			enabled : false
		}, 
        tooltip: {  
            shared: true, //公用一个提示框  
            formatter: function() {
            	if(this.points.length>1){
            		return this.x +"<br>"  
                    + "<span style='color:#4572A7'>时长：" + this.points[0].y +" 秒</span><br>"   
                    + "<span style='color:#89A54E'>花费：" + this.points[1].y +" 元</span>";  
            	}else{
            		if(this.points[0].color=="#89A54E"){
            			return this.x +"<br>"+ "<span style='color:#89A54E'>花费：" + this.points[0].y +" 元</span>" 
            		}else{
            			return this.x +"<br>"  
                		+ "<span style='color:#4572A7'>时长：" + this.points[0].y +" 秒</span><br>" ;  
            		}
            	}
            }  
        },  
        //图例样式设置  
        series: [{  
            name: '时长',  
            color: '#4572A7',  
            type: 'column',  
            yAxis: 1,  
            data: [80, 22.5, 45, 90, 99, 35, 45 ],  
            tooltip: {  
            	valueSuffix:"秒"
            }  
  
        }, {  
            name: '花费',  
            color: '#89A54E',  
            type: 'spline',  
            yAxis: 0,  
            data: [16000, 1250, 3500, 7000, 3900, 3500, 4500 ],  
            tooltip: {  
                valueSuffix: ' 元'  
            }  
        }]  
	});
	
}) */


// $(function(){
// 	$(document).ready(function() {
// 		Highcharts.setOptions({
// 			global: {
// 				useUTC: false//是否使用世界标准时间
// 			}
// 		});
// 		var chart;
// 		chart = new Highcharts.Chart({
// 			chart: {
// 				renderTo: 'container',
// 				type: 'spline',
// 				marginRight: 10,
// 				events: {
// 					load: function() {
// 						 var series = this.series;
// 						 setInterval(function() {
// 							 var result = reload();
// 							 var x = result.time;
// 							 for(var i=0; i<series.length; i++) {
// 								 var y = result.y[i];
// 								 series[i].addPoint([x, y], true, true);
// 							 }
// 						 }, 1000*5);
// 					}
// 				}
// 			},
// 			title: {
// 				text: 'ssssss'
// 			},
// 			xAxis: {
// 				type: 'datetime',
// 				tickPixelInterval: 150
// 			},
// 			yAxis: {
// 				title: {
// 					text: 'Value'
// 				},
// 				plotLines: [{
// 					value: 0,
// 					width: 1,
// 					color: '#808080'
// 				}]
// 			},
// 			tooltip: {
// 				formatter: function () {
// 					return '<b>' + this.series.name + '</b><br/>' +
// 			Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
// 			Highcharts.numberFormat(this.y, 2);
// 				}
// 			},
		  
// 			legend: {
// 				layout: 'vertical',
// 				align: 'right',
// 				verticalAlign: 'top',
// 				borderWidth: 0
// 		},
// 			exporting: {
// 				enabled: false
// 			},
// 			series: create()
// 		});
// 	});
// });
// function create() {
// 	var series = new Array();
	
// 	$.ajax({
// 		type: "POST",
// 		dataType:"json",
// 		url: "getData.do",
// 		async: false, //表示同步，如果要得到ajax处理完后台数据后的返回值，最好这样设置
// 		success: function(result){
// 			var channels = result.maps;
// 			var size = channels.length;
// 			for(var i=0; i<size; i++) {
// 				var name2 = channels[i];
// 				var name=name2[i].aa;
// 				var perTotalCnt=name2[i].bb;
// 				var data = function() {
// 					var data = [],
// 						time = result.time,
// 						i;
// 					for(i=0; i<=6; i++) {
// 						data.push({
// 							x: i,
// 							y: perTotalCnt
// 						});
// 					}
					
// 					return data;
// 				}();
// 				series.push({"name": name, "data": data});
// 			}
// 		}
// 	}, false);  //false表示“遮罩”，前台不显示“请稍后”进度提示
// 	alert(series);
// 			return series;
	
// }
</script>
</head>
<body>
<div id="hightchartcontainer" style="min-width:400px;height:400px"></div>
</body>
</html>
