<%@ page contentType="text/html;charset=UTF-8"%>  
<%@ page pageEncoding="UTF-8"%>  
<html>
<head>
		<%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" +     
        request.getServerPort() + path + "/";
		%>
		<base href="<%=basePath%>">
		<title>Hospital 登录</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="icon" type="image/png" href="<%=basePath%>./WebContent/assets/img/logo.png">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/css/login.css"/>

</head>
<body>
	<div class="container right-panel-active">
	
	<!-- 判断注册状态 -->
	<%
	String status_regist = (String)session.getAttribute("status_regist");
	if(status_regist==null){
		status_regist = "0";
	}
	//注册成功
	if(status_regist.equals("1")){out.println("<script type=\"text/javascript\">"); 
								  out.println("alert(\"注册成功！\");"); 
								  out.println("</script>");}
	if(status_regist.equals("-1")){out.println("<script type=\"text/javascript\">"); 
							  	   out.println("alert(\"注册失败！\");"); 
							   	   out.println("</script>");}
	session.setAttribute("status_regist","0"); 
	%>
	<!-- 判断注册状态 -->
	
	<!-- Sign Up -->
	<div class="container__form container--signup">
		<form action="servlet/Regist" method="post" class="form">
			<h2 class="form__title">注册</h2>
			<input type="text" placeholder="用户名" class="input" name="name_regist"/>
			<input type="text" placeholder="账号" class="input" name="account_regist"/>
			<input type="password" placeholder="密码" class="input" name="password_regist"/>
			<input type="submit" class="btn" value="注册" />
		</form>
	</div>
	
	<!-- 判断登录状态 -->
	<%
	String status_login = (String)session.getAttribute("status_login");
	if(status_login==null){
		status_login = "0";
	}
	//登录失败
	if(status_login.equals("-1")){out.println("<script type=\"text/javascript\">"); 
								  out.println("alert(\"用户名或密码错误！\");"); 
								  out.println("</script>");}
	session.setAttribute("status_login","0"); %>
	<!-- 判断登录状态 -->
	
	<!-- Sign In -->
	<div class="container__form container--signin">
		<form action="servlet/Login" method="post" class="form">
			<h2 class="form__title">登录</h2>
			<input type="text" placeholder="账号" class="input" name="account_login"/>
			<input type="password" placeholder="密码" class="input" name="password_login"/>
			<a href="password.jsp" class="link">忘记密码?</a>
			<input type="submit" class="btn" value="登录" />
		</form>
	</div>
	
	

	<!-- Overlay -->
	<div class="container__overlay">
		<div class="overlay">
			<div class="overlay__panel overlay--left">
				<button class="btn" id="signIn">登录</button>
			</div>
			<div class="overlay__panel overlay--right">
				<button class="btn" id="signUp">注册</button>
			</div>
		</div>
	</div>
</div>

<script  src="<%=basePath%>./WebContent/js/login.js"></script>
</body>
</html>