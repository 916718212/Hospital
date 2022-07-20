<%@ page contentType="text/html;charset=UTF-8"%>  
<%@ page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
<html>
<head>
		<%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" +     
        request.getServerPort() + path + "/";
		%>
		<base href="<%=basePath%>">
		<title ></title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="icon" type="image/png" href="<%=basePath%>./WebContent/assets/i/favicon.png">
  		<link rel="apple-touch-icon-precomposed" href="<%=basePath%>./WebContent/assets/i/app-icon72x72@2x.png">
  		<link rel="stylesheet" href="<%=basePath%>./WebContent/assets/css/amazeui.min.css" />
  		<link rel="stylesheet" href="<%=basePath%>./WebContent/assets/css/admin.css">
 		 <link rel="stylesheet" href="<%=basePath%>./WebContent/assets/css/app.css">

</head>
<body>

	<!-- 判断登录状态 -->
	<%
	String status_manager_login = (String)session.getAttribute("status_manager_login");
	if(status_manager_login==null){
		status_manager_login = "0";
	}
	//登录失败
	if(status_manager_login.equals("-1")){out.println("<script type=\"text/javascript\">"); 
							  	   out.println("alert(\"用户名或密码错误！\");"); 
							   	   out.println("</script>");}
	session.setAttribute("status_manager_login","0"); 
	%>
	<!-- 判断登录状态 -->
	
	<div class="am-g myapp-login">
	<div class="myapp-login-logo-block  tpl-login-max">
		<div class="myapp-login-logo-text">
			<div class="myapp-login-logo-text">
				Hospital UI<span> Login</span> <i class="am-icon-skyatlas"></i>
				
			</div>
		</div>

		<div class="login-font">
			<i>Log In </i> or <span> Sign Up</span>
		</div>
		<div class="am-u-sm-10 login-am-center">
			<form class="am-form" method="post" action="servlet/Manager_Login">
				<fieldset>
					<div class="am-form-group">
						<input type="text" class="" id="doc-ipt-email-1" placeholder="账号" name="account">
					</div>
					<div class="am-form-group">
						<input type="password" class="" id="doc-ipt-pwd-1" placeholder="密码" name="password">
					</div>
					<p><button type="submit" class="am-btn am-btn-default">登录</button></p>
				</fieldset>
			</form>
		</div>
	</div>
</div>

  <script src="<%=basePath%>./WebContent/assets/js/jquery-2.1.1.js"></script>
  <script src="<%=basePath%>./WebContent/assets/js/amazeui.min.js"></script>
  <script src="<%=basePath%>./WebContent/assets/js/app.js"></script>
</body>
</html>