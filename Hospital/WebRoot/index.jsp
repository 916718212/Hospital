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
			body {
				overflow: hidden;
				background: url(<%=basePath%>./WebContent/images/bg.jpg) no-repeat;
				background-size: 100% 100%;
			}
		</style>

</head>
<body>
	<!-- 导航栏 -->
		<div class="layui-row">
			<div class="layui-col-lg10" >
					<ul class="layui-nav layui-bg-green" lay-filter="">
					  <img src="<%=basePath%>./WebContent/images/logo.png" height="60px">
					  <li class="layui-nav-item layui-this"><a href="index.jsp">首页</a></li>
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
		
		<!-- 照片墙 -->
		<div class="main">
			<div class="text">
				<img class="text text1 slide1" src="<%=basePath%>./WebContent/images/index1.png" alt="">
				<img class="text text2 slide2" src="<%=basePath%>./WebContent/images/index2.png" alt="">
				
			</div>
			<div class="ct">

			</div>
			<div class="pic-wrapper">
				<div class="close"></div>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide">Slide 1</div>
						<div class="swiper-slide">Slide 2</div>
						<div class="swiper-slide">Slide 3</div>
					</div>
				</div>
				<div class="swiper-button-prev swiper-button-white"></div>
				<div class="swiper-button-next swiper-button-white"></div>
			</div>
		</div>
		<script src="<%=basePath%>./WebContent/js/jquery.min0.js"></script>
		<script src="<%=basePath%>./WebContent/js/index.js"></script>
		<!-- 照片墙 -->
</body>
</html>