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
		<title >Hospital 外链</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="icon" type="image/png" href="<%=basePath%>./WebContent/assets/img/logo.png">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/css/outlink.css"/>
		<script src="<%=basePath%>./WebContent/layui/layui.js" type="text/javascript" charset="utf-8"></script>

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
		
		<!-- 垂直导航栏 -->
		<div class="layui-row vertical">
			<div class="layui-col-lg2">
				<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo" style="background-color: #009688;border-radius: unset;width: 100%;">
					<li class="layui-nav-item layui-nav-itemed">
					<a href="javascript:;">外链</a>
					<dl class="layui-nav-child">
						<dd><a href="https://dxy.com/" target="outlink">丁香医生</a></dd>
						<dd><a href="https://www.mvyxws.com/" target="outlink">医学微视</a></dd>
						<dd><a href="http://drugs.dxy.cn/" target="outlink">用药助手</a></dd>
						<dd><a href="https://baike.qq.com/" target="outlink">腾讯医典</a></dd>
						<dd><a href="http://meddir.cn/" target="outlink">医学导航</a></dd>
						<dd><a href="http://www.chinesefms.com/" target="outlink">医学前沿网</a></dd>
						<dd><a href="http://www.999120.net/" target="outlink">中国导医网</a></dd>
						<dd><a href="http://www.ttys5.com/" target="outlink">天天养生网</a></dd>
						<dd><a href="http://www.med66.com/" target="outlink">医学教育网</a></dd>
						<dd><a href="https://www.jk3721.com" target="outlink">天医网</a></dd>
						
					</dl>
					</li>
				</ul>
			</div>
			<div class="layui-col-lg10">
				<iframe src="https://dxy.com/" width="100%" height="637px" id="outlink" name="outlink" border="0px"></iframe>
			</div>
		</div>
		<!-- 垂直导航栏 -->
</body>
</html>