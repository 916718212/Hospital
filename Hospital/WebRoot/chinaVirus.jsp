<%@ page contentType="text/html;charset=UTF-8"%>  
<%@ page pageEncoding="UTF-8"%>  
<%@ page import="java.sql.*"%>
<%@ page import="entity.Customer" %>  
<html>
<head>
		<%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" +     
        request.getServerPort() + path + "/";
		%>
		<base href="<%=basePath%>">
		<title >Hospital 新冠事件</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/css/chinaVirus.css">
		<link rel="icon" type="image/png" href="<%=basePath%>./WebContent/assets/img/logo.png" >
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/layui/css/layui.css"/>
		<script type="text/javascript" src="<%=basePath%>./WebContent/js/jquery.js"></script>
		<script type="text/javascript" src="<%=basePath%>./WebContent/js/jquery.mousewheel.js"></script>
		<script type="text/javascript" src="<%=basePath%>./WebContent/js/jquery.easing.js"></script>
		<script type="text/javascript" src="<%=basePath%>./WebContent/js/chinaVirus.js"></script>
		<script type="text/javascript" src="<%=basePath%>./WebContent/layui/layui.js" charset="utf-8"></script>

</head>
<body>
	<!-- 导航栏 -->
		<div class="layui-row">
			<div class="layui-col-lg10">
					<ul class="layui-nav layui-bg-green" lay-filter="">
					  <img src="<%=basePath%>./WebContent/images/logo.png" height="60px">
					  <li class="layui-nav-item"><a href="index.jsp">首页</a></li>
					  <li class="layui-nav-item"><a href="medicalEquipment.jsp?medicalequipment=">医疗器材</a></li>
					  <li class="layui-nav-item"><a href="medicalDrugs.jsp?medicaldrugs=">医学药品</a></li>
					  <li class="layui-nav-item"><a href="emergencyRescue.jsp?emergencyrescue=">紧急救援</a></li>
					  <li class="layui-nav-item layui-this">
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
		
		
		<!-- 时间线 -->
		<div id="arrow">
			<ul>
				<li class="arrowup"></li>
				<li class="arrowdown"></li>
			</ul>
		</div>
		
		<div id="history">
			<div class="title">
				<h2>企业大事记</h2>
				<div id="circle">
					<div class="cmsk"></div>
					<div class="circlecontent">
						<div thisyear="2019" class="timeblock">
							<span class="numf"></span>
							<span class="nums"></span>
							<span class="numt"></span>
							<span class="numfo"></span>
							<div class="clear"></div>

						</div>
						<div class="timeyear">YEAR</div>
					</div>
					<a href="#" class="clock"></a>
				</div>
			</div>
			
			<div id="content">
				<ul class="list">
				
				
			
			
			<jsp:useBean id="cVDao" class="dao.ChinaVirusDao"></jsp:useBean>
			<%
			ResultSet rs = cVDao.getChinaVirus("SELECT * FROM chinavirus");
			while(rs.next()){ 
			 %>
			<!--循环体-->
			<li>
				<div class="liwrap">
					<div class="lileft">
						<div class="date">
							<span class="year"><%=rs.getString("year") %></span>
							<span class="md"><%=rs.getString("md") %></span>
						</div>
					</div>
					
					<div class="point"><b></b></div>
					
					<div class="liright">
						<div class="histt"></div>
						<div class="hisct"><%=rs.getString("detail") %></div>
					</div>
				</div>
			</li>
			<%} %>
			<!--循环体-->		
					
				</ul>
			</div>
		</div>
		<!-- 时间线 -->
</body>
</html>