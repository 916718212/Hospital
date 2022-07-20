<%@ page contentType="text/html;charset=UTF-8"%>  
<%@ page pageEncoding="UTF-8"%>
<%@ page import="entity.Customer" %>  
<html>
<head>
		<%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" +     
        request.getServerPort() + path + "/";
		%>
		<base href="<%=basePath%>">
		<title >Hospital 首页</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="icon" type="image/png" href="<%=basePath%>./WebContent/assets/img/logo.png">
		<link rel="stylesheet" href="<%=basePath%>./WebContent/css/swiper-bundle.min.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/css/index.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/layui/css/layui.css"/>
		<script src="<%=basePath%>./WebContent/layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=basePath%>./WebContent/js/swiper-bundle.min.js"></script>
		<style>
			
		</style>

</head>
<body>
	<!-- 导航栏 -->
		<div class="layui-row">
			<div class="layui-col-lg10">
					<ul class="layui-nav layui-bg-green" lay-filter="">
					  <img src="<%=basePath%>./WebContent/images/logo.png" height="60px">
					  <li class="layui-nav-item "><a href="index.jsp">首页</a></li>
					  <li class="layui-nav-item"><a href="medicalEquipment.jsp?medicalequipment=">医疗器材</a></li>
					  <li class="layui-nav-item"><a href="medicalDrugs.jsp?medicaldrugs=">医学药品</a></li>
					  <li class="layui-nav-item"><a href="emergencyRescue.jsp?emergencyrescue=">紧急救援</a></li>
					  <li class="layui-nav-item">
					    <a href="chinaVirus.jsp">新冠病毒</a>
					    <dl class="layui-nav-child"> <!-- 二级菜单 -->
					      <dd><a href="chinaVirus.jsp">新冠事件</a></dd>
					      <dd><a href="virusKnowledge.jsp">新冠防控知识</a></dd>
					      <dd><a href="virusNews.jsp">新冠消息</a></dd>
					    </dl>
					  </li>
					  <li class="layui-nav-item">
					    <a href="visceral.jsp">科普数据</a>
					    <dl class="layui-nav-child"> <!-- 二级菜单 -->
					      <dd><a href="visceral.jsp">内脏数据</a></dd>
					      <dd><a href="water.jsp">人体含水量</a></dd>
					      <dd><a href="map.jsp">电子地图</a></dd>
					      <dd><a href="gdp.jsp">人均寿命与GDP</a></dd>
					    </dl>
					  </li>
					  <li class="layui-nav-item"><a href="expertCommunity.jsp">专家社区</a></li>
					  <li class="layui-nav-item"><a href="book.jsp">电子书</a></li>
					  <li class="layui-nav-item">
						<%Customer customer = (Customer)session.getAttribute("customer");
				 		 if(customer!=null){ %>
				 		 <a href="messageBoard.jsp">留言板</a>
				 		 <%}else{ %>
						  <a href="login.jsp">留言板</a>
						  <%} %>
					  </li>
					  <li class="layui-nav-item"><a href="articleList.jsp">文章</a></li>
					  <li class="layui-nav-item"><a href="question.jsp">答题</a></li>
					  <li class="layui-nav-item"><a href="rumor.jsp">避谣</a></li>
					  <li class="layui-nav-item"><a href="outLink.jsp">外链</a></li>
					</ul>
					<script>
					//注意：导航 依赖 element 模块，否则无法进行功能性操作
					layui.use('element', function(){
					  var element = layui.element;
					  
					  //…
					});
					</script>
			</div>
			<div class="layui-col-lg2">
					<ul class="layui-nav layui-bg-green">
					 <%
					//session判断存在用户登录
					 if(customer == null){
	 				%>
						 <li class="layui-nav-item">
						  <a href="login.jsp">注册/登录<span class="layui-badge-dot"></span></a>
						</li> 
						<%}else{ %>
						<li class="layui-nav-item">
							<a href="person.jsp">个人中心</a>
						</li>
						<li class="layui-nav-item">
							<a href="servlet/Exit">退出</a>
						</li>
						<%} %>
					</ul>
			</div>
		</div>
		<!-- 导航栏 -->
		
		
		<!--百度echarts -->
		<div id="main" style="width: 1400px;height:500px;margin-left:70px;margin-top:100px;"></div>
		<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts@5.0.1/dist/echarts.min.js"></script>
		<script src="<%=basePath%>./WebContent/js/jquery.min.js"></script>
   		<script type="text/javascript">		
			var ROOT_PATH = 'https://cdn.jsdelivr.net/gh/apache/echarts-website@asf-site/examples';
		
			var chartDom = document.getElementById('main');
			var myChart = echarts.init(chartDom);
			var option;
		
			myChart.showLoading();
		
			$.get(ROOT_PATH + '/data/asset/data/life-expectancy.json', function(data) {
				myChart.hideLoading();
		
				var itemStyle = {
					opacity : 0.8
				};
		
				var sizeFunction = function(x) {
					var y = Math.sqrt(x / 5e8) + 0.1;
					return y * 80;
				};
				// Schema:
					var schema = [ {
						name : 'Income',
						index : 0,
						text : '人均收入',
						unit : '美元'
					}, {
						name : 'LifeExpectancy',
						index : 1,
						text : '人均寿命',
						unit : '岁'
					}, {
						name : 'Population',
						index : 2,
						text : '总人口',
						unit : ''
					}, {
						name : 'Country',
						index : 3,
						text : '国家',
						unit : ''
					} ];
		
					option = {
						baseOption : {
							timeline : {
								axisType : 'category',
								orient : 'vertical',
								autoPlay : true,
								inverse : true,
								playInterval : 1000,
								left : null,
								right : 0,
								top : 20,
								bottom : 20,
								width : 55,
								height : null,
								symbol : 'none',
								checkpointStyle : {
									borderWidth : 2
								},
								controlStyle : {
									showNextBtn : false,
									showPrevBtn : false
								},
								data : []
							},
							title : [ {
								text : data.timeline[0],
								textAlign : 'center',
								left : '63%',
								top : '55%',
								textStyle : {
									fontSize : 100
								}
							}, {
								text : '各国人均寿命与GDP关系演变',
								left : 'center',
								top : 10,
								textStyle : {
									fontWeight : 'normal',
									fontSize : 20
								}
							} ],
							tooltip : {
								padding : 5,
								borderWidth : 1,
								formatter : function(obj) {
									var value = obj.value;
									return schema[3].text + '：' + value[3]
											+ '__tag_171$62_' + schema[1].text + '：'
											+ value[1] + schema[1].unit
											+ '__tag_172$82_' + schema[0].text + '：'
											+ value[0] + schema[0].unit
											+ '__tag_173$82_' + schema[2].text + '：'
											+ value[2] + '__tag_174$65_';
								}
							},
							grid : {
								top : 100,
								containLabel : true,
								left : 30,
								right : '110'
							},
							xAxis : {
								type : 'log',
								name : '人均收入',
								max : 100000,
								min : 300,
								nameGap : 25,
								nameLocation : 'middle',
								nameTextStyle : {
									fontSize : 18
								},
								splitLine : {
									show : false
								},
								axisLabel : {
									formatter : '{value} $'
								}
							},
							yAxis : {
								type : 'value',
								name : '平均寿命',
								max : 100,
								nameTextStyle : {
									fontSize : 18
								},
								splitLine : {
									show : false
								},
								axisLabel : {
									formatter : '{value} 岁'
								}
							},
							visualMap : [ {
								show : false,
								dimension : 3,
								categories : data.counties,
								inRange : {
									color : (function() {
										var colors = [ '#51689b', '#ce5c5c', '#fbc357',
												'#8fbf8f', '#659d84', '#fb8e6a',
												'#c77288', '#786090', '#91c4c5',
												'#6890ba' ];
										return colors.concat(colors);
									})()
								}
							} ],
							series : [ {
								type : 'scatter',
								itemStyle : itemStyle,
								data : data.series[0],
								symbolSize : function(val) {
									return sizeFunction(val[2]);
								}
							} ],
							animationDurationUpdate : 1000,
							animationEasingUpdate : 'quinticInOut'
						},
						options : []
					};
		
					for ( var n = 0; n < data.timeline.length; n++) {
						option.baseOption.timeline.data.push(data.timeline[n]);
						option.options.push( {
							title : {
								show : true,
								'text' : data.timeline[n] + ''
							},
							series : {
								name : data.timeline[n],
								type : 'scatter',
								itemStyle : itemStyle,
								data : data.series[n],
								symbolSize : function(val) {
									return sizeFunction(val[2]);
								}
							}
						});
					}
		
					myChart.setOption(option);
		
				});
		
			option && myChart.setOption(option);
</script>
		
		<!--百度echarts -->

		
</body>
</html>