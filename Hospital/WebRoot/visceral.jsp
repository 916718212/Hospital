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
		
		<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts@5/dist/extension/dataTool.min.js"></script>

        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-gl@2/dist/echarts-gl.min.js"></script>

        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-stat@latest/dist/ecStat.min.js"></script>

        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts@5/map/js/china.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts@5/map/js/world.js"></script>

        <script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=dstTGEtC4lYybsfMhdzKFs12vQWW4VA4"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts@5/dist/extension/bmap.min.js"></script>

		
   		<script type="text/javascript">
		
					
					
			var ROOT_PATH = 'https://cdn.jsdelivr.net/gh/apache/echarts-website@asf-site/examples';
		
			var chartDom = document.getElementById('main');
			var myChart = echarts.init(chartDom);
			var option;
		
			$.get(ROOT_PATH + '/data/asset/geo/Veins_Medical_Diagram_clip_art.svg',
					function(svg) {
		
						echarts.registerMap('organ_diagram', {
							svg : svg
						});
		
						option = {
							tooltip : {},
							geo : {
								left : 10,
								right : '50%',
								map : 'organ_diagram',
								selectedMode : 'multiple',
								emphasis : {
									focus : 'self',
									itemStyle : {
										color : null
									},
									label : {
										position : 'bottom',
										distance : 0,
										textBorderColor : '#fff',
										textBorderWidth : 2
									}
								},
								blur : {},
								select : {
									itemStyle : {
										color : '#b50205'
									},
									label : {
										show : false,
										textBorderColor : '#fff',
										textBorderWidth : 2
									}
								}
							},
							grid : {
								left : '60%',
								top : '20%',
								bottom : '20%'
							},
							xAxis : {},
							yAxis : {
								data : [ 'heart', 'large-intestine', 'small-intestine',
										'spleen', 'kidney', 'lung', 'liver' ]
							},
							series : [ {///////////////////////////////
								type : 'bar',
								emphasis : {
									focus : 'self'
								},
								data : [ 121, 321, 141, 52, 198, 289, 139 ]
							} ]
						};
		
						myChart.setOption(option);
		
						myChart.on('mouseover', {
							seriesIndex : 0
						}, function(event) {
							myChart.dispatchAction( {
								type : 'highlight',
								geoIndex : 0,
								name : event.name
							});
						});
						myChart.on('mouseout', {
							seriesIndex : 0
						}, function(event) {
							myChart.dispatchAction( {
								type : 'downplay',
								geoIndex : 0,
								name : event.name
							});
						});
		
					});
		
			option && myChart.setOption(option);
</script>
		
		<!--百度echarts -->

		
</body>
</html>