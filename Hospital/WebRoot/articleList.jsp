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
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/css/articleList.css"/>
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
		
		<div class="newsCenterPanel">
			<div class="title" style="margin-top:-10px;">
				<span style="margin-left:120px;">文章列表</span>
			</div>
			<div class="newsCenterPanel_inner">
		
				<div class="newContentBox odd">
					<a hidefocus="true" href="article.jsp">
						<div class="time">
							<p class="day">2</p>
							<p class="ym">2019-1</p>
						</div>
						<div class="newTitle">[精]科技网新产品“科技商城”正式上线</div>
		
						<div class="newTitleIcon"></div>
						<div class="border"></div>
						<div class="newContent">1月2日，科技网新产品“科技商城”正式上线，商家企业将能通过新产品科技商城享受更优质的在线商城建设服务，轻松打造属于自己的在线商城
						</div>
					</a>
		
				</div>
		
				<div class="newContentBox even">
					<a hidefocus="true" href="article.jsp">
						<div class="time">
							<p class="day">29</p>
							<p class="ym">2018-12</p>
						</div>
						<div class="newTitle">[精]科技网助力2018广州互联网+新经济发展论坛</div>
		
						<div class="newTitleIcon"></div>
						<div class="border"></div>
						<div class="newContent">12月27日，2018广州互联网+新经济发展论坛在广州阳光酒店隆重举行，科技网作为此次论坛技术支持单位，也受邀参会共探未来共赢之路……
						</div>
					</a>
		
				</div>
		
				<div class="newContentBox odd">
					<a hidefocus="true" href="article.jsp">
						<div class="time">
							<p class="day">8</p>
							<p class="ym">2019-1</p>
						</div>
						<div class="newTitle">20190109功能更新（1月第二周）</div>
		
						<div class="newTitleIcon"></div>
						<div class="border"></div>
						<div class="newContent">手机码验证防刷、作品分享
						</div>
					</a>
		
				</div>
		
				<div class="newContentBox even">
					<a hidefocus="true" href="article.jsp">
						<div class="time">
							<p class="day">8</p>
							<p class="ym">2019-1</p>
						</div>
						<div class="newTitle">你还在烦恼如何制作电子邀请函吗？快看这里</div>
		
						<div class="newTitleIcon"></div>
						<div class="border"></div>
						<div class="newContent">将近年尾，很多公司企业都会准备举行一些大型活动，例如年会、颁奖会等等，来激励员工一年的辛苦劳动。邀请员工出席这些大型活动，得先要准备好一个电子邀请函，那么我们又该怎样去制作电子邀请函呢？
						</div>
					</a>
		
				</div>
		
				<div class="newContentBox odd">
					<a hidefocus="true" href="article.jsp">
						<div class="time">
							<p class="day">7</p>
							<p class="ym">2019-1</p>
						</div>
						<div class="newTitle">你是否缺少一款好用的H5制作软件？</div>
		
						<div class="newTitleIcon"></div>
						<div class="border"></div>
						<div class="newContent">又进入了一年的尾声，不管是企业、公司还是商家，都可能会举办很多活动，在这种情况下，不管是做H5邀请函、H5传单等，都需要用到H5制作软件。而我们烦恼的是，如何才能够找到一款好用的制作软件来做H5呢？
						</div>
					</a>
		
				</div>
		
				<div class="newContentBox even">
					<a hidefocus="true" href="article.jsp">
						<div class="time">
							<p class="day">4</p>
							<p class="ym">2019-1</p>
						</div>
						<div class="newTitle">H5页面设计风格大盘点！</div>
		
						<div class="newTitleIcon"></div>
						<div class="border"></div>
						<div class="newContent">H5页面发展到现在，已经不像几年前那样稀有了，甚至可以说是遍地都是。只有好的H5页面才能够达到宣传推广的效果。但是设计有限，灵感缺乏该怎么办呢？下面小编来给大家盘点几个H5页面设计风格！
						</div>
					</a>
		
				</div>
		
				<div class="newContentBox odd">
					<a hidefocus="true" href="article.jsp">
						<div class="time">
							<p class="day">3</p>
							<p class="ym">2019-1</p>
						</div>
						<div class="newTitle">H5场景制作原来可以有这么多风格！</div>
		
						<div class="newTitleIcon"></div>
						<div class="border"></div>
						<div class="newContent">H5场景制作是当下比较热门的页面制作方式，然而还是有很多人对这种制作方式不太了解。今天小编就跟大家分享下H5场景制作的5种风格，看看你心仪哪种。
						</div>
					</a>
		
				</div>
		
				<div class="newContentBox even">
					<a hidefocus="true" href="article.jsp">
						<div class="time">
							<p class="day">2</p>
							<p class="ym">2019-1</p>
						</div>
						<div class="newTitle">3步制作一款酷炫的年会邀请函</div>
		
						<div class="newTitleIcon"></div>
						<div class="border"></div>
						<div class="newContent">2018年已经余额不足，各家企业也在开始筹备年会的相关事宜，全体员工齐聚一起，回顾过去，展望未来。年会通知，你还在使用通讯工具进行单调、乏味的文字通知形式吗？使用更潮流的通知方式——酷炫的H5年会邀请函，年会的喜庆气息会更浓厚，对于企业文化的发展也更有利。
						</div>
					</a>
		
				</div>
		
			</div>
		</div>
		
				

</body>
</html>