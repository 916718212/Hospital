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
		<title >Hospital 修改密码</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/bootstrap/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/css/index.css"/>
		<link rel="icon" type="image/png" href="<%=basePath%>./WebContent/assets/img/logo.png">
		<link type="text/css" rel="stylesheet" href="<%=basePath%>./WebContent/css/password.css" />
		<script type="text/javascript" src="<%=basePath%>./WebContent/js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function () {
				var height=$(document).height();
				$('.main').css('height',height);
			})
		</script>

</head>
<body>
		<div class="main">
  <div class="main0">
     <div class="formBox">
       <h3>登录密码重置</h3>
       <ul>
          <li class="mainCol firLi">&gt;身份验证</li>
          <li class="mainCol">&gt;登录密码重置</li>
          <li class="mainCol lastLi">&gt;重置完成</li>
       </ul>
       <img src="<%=basePath%>./WebContent/images/line3.png" />
       <p class="sub"><span>-^0^-</span>  新登录密码重置成功，请重新登录!</p>
       <div class="btnBox_2">
            <button onclick="window.location.href='login.jsp'">重新登录</button>
       </div>
     </div>
  </div>
</div>
</body>
</html>