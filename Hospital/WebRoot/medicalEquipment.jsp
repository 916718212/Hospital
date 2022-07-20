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
		<title >Hospital 医疗器材</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="icon" type="image/png" href="<%=basePath%>./WebContent/assets/img/logo.png">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/css/medicalEquipment.css"/>
		<script src="<%=basePath%>./WebContent/layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=basePath%>./WebContent/js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>

</head>
<body>&nbsp; 
		<!-- 导航栏 -->
		<div class="layui-row">
			<div class="layui-col-lg10">
					<ul class="layui-nav layui-bg-green" lay-filter="">
					  <img src="<%=basePath%>./WebContent/images/logo.png" height="60px">
					  <li class="layui-nav-item"><a href="index.jsp">首页</a></li>
					  <li class="layui-nav-item layui-this"><a href="medicalEquipment.jsp?medicalequipment=">医疗器材</a></li>
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
		
		<!-- 查询框 -->
		<div class="button_line">
			<form action="medicalEquipment.jsp" method="post">
				<input type="text" name="medicalequipment" > 
				<input type="submit" class="btn" value="搜索" />
			</form>
		</div>
		<!-- 查询框 -->
		
		<!-- 医疗器材 -->
		<div class="section">
			<div class="container">
				<div class="case-list">
				
				<!-- 使用medicalEquipmentDao-->
				<jsp:useBean id="mEDao" class="dao.MedicalEquipmentDao"></jsp:useBean>
					<ul>
						<!-- 循环体-->
						<%  String medicalequipment = (String)request.getParameter("medicalequipment");
							ResultSet rs = null;
							if(medicalequipment.equals("")){rs = mEDao.getMedicalEquipment("SELECT * FROM medicalequipment");}
							else{rs = mEDao.getMedicalEquipment("SELECT * FROM medicalequipment WHERE name LIKE '%"+medicalequipment+"%'");}
							while(rs.next()){
						 %>
						<li>
							<div class="case-show">
								<div class="show-text">
									<div class="case-logo"><img src="<%=basePath%>./WebContent/images/logo.png"></div>
									<div class="case-intro"><%=rs.getString("detail") %></div>
									<div class="case-url"><%=rs.getString("name") %></div>
								</div>		
							</div>
							<div class="case-show-img">
								<div class="case-type">
									<p class="fl">All For Life</p>
									
								</div>
								<div class="case-img"><img src=<%=rs.getString("imgSrc") %>></div>
								<div class="case-logo"><img src="<%=basePath%>./WebContent/images/logo.png"></div>
							</div>
						</li>
						<%} %>
						<!-- 循环体-->
						
					</ul>
				</div>
			</div>
		</div>
		
		<script type="text/javascript">
			//鼠标悬浮显示介绍
			$(".case-list li").hover(function() {
				$(this).find('.case-show-img').hide();
				$(this).find('.case-show').stop().fadeIn();
			}, function() {
				$(".case-list li .case-show").hide();
				$(this).find('.case-show-img').stop().fadeIn();
			});
			
		</script>
		<!-- 医疗器材 -->
		
</body>
</html>