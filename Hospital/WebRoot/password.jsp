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
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/layui/css/layui.css"/>
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
		<!-- 判断输入账号状态 -->
	<%
	String status_account = (String)session.getAttribute("status_account");
	if(status_account==null){
		status_account = "0";
	}
	//输入账号有误
	if(status_account.equals("-1")){out.println("<script type=\"text/javascript\">"); 
								  out.println("alert(\"输入账号有误！\");"); 
								  out.println("</script>");}
	session.setAttribute("status_account","0"); %>
	<!-- 判断输入账号状态 -->

		<div class="main">
  <div class="main0">
     <div class="formBox">
       <h3>登录密码重置</h3>
       <ul>
          <li class="mainCol firLi">&gt;身份验证</li>
          <li>&gt;登录密码重置</li>
          <li class="lastLi">&gt;重置完成</li>
       </ul>
       <img src="<%=basePath%>./WebContent/images/line.png" />
       <form action="servlet/Password" method="post">
       <div class="itembox">
         <label>账号&nbsp;:</label>
         <input type="text" placeholder="请输入注册账号" name="account"></span>
       </div>
       <div class="btnBox">
            <input type="submit" value="下一步" class="layui-btn layui-btn-normal">
       </div>
       </form>
     </div>
  </div>
</div>
		
</body>
</html>