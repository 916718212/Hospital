<%@ page contentType="text/html;charset=UTF-8"%>  
<%@ page pageEncoding="UTF-8"%>  
<%@ page import="entity.Customer" %>
<%@ page import="java.sql.*" %>
<html>
<head>
		<%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" +     
        request.getServerPort() + path + "/";
		%>
		<base href="<%=basePath%>">
		<title >Hospital 留言板</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="icon" type="image/png" href="<%=basePath%>./WebContent/assets/img/logo.png">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/layui/css/layui.css"/>
		<link type="text/css" href="<%=basePath%>./WebContent/css/messageBoard.css" rel="stylesheet" />

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
	
	<!-- 判断留言板状态 -->
	<%
	String status_send = (String)session.getAttribute("status_send");
	if(status_send==null){
		status_send = "0";
	}
	//发送成功
	if(status_send.equals("1")){out.println("<script type=\"text/javascript\">"); 
								  out.println("alert(\"发送成功！\");"); 
								  out.println("</script>");}
	session.setAttribute("status_send","0"); %>
	<!-- 判断留言板状态 -->
	
	
	<!-- 留言板 -->
	<div id="wrap">
		<h1>Send a message</h1>
		<div id='form_wrap'>
			<form action="servlet/MessageBoard" method="post">
				<p>Hello <%=customer.getName() %>,</p>
				<label for="message">Your Message : </label>
				<textarea  name="message" value="Your Message" id="message" ></textarea>
				<p>Best,</p>	
				<label for="phone">Your Phone: </label>
				<input type="text" name="phone" value="" id="phone" />
				<label for="email">Your Email: </label>
				<input type="text" name="email" value="" id="email" />
				<input type="submit" name ="submit" value="Now, I send, thanks!" />
			</form>
		</div>
	</div>
	<!-- 留言板 -->
</body>
</html>