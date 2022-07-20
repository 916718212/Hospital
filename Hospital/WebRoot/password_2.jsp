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
		<link rel="icon" type="image/png" href="<%=basePath%>./WebContent/assets/img/logo.png">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/bootstrap/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/css/index.css"/>
		<link type="text/css" rel="stylesheet" href="<%=basePath%>./WebContent/css/password.css" />
		<script type="text/javascript" src="<%=basePath%>./WebContent/js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function () {
				var height=$(document).height();
				$('.main').css('height',height);
			})
		</script>
		
		<script type="text/javascript">
			function refresh(){
				Form.imgValidate.src="validate.jsp?id="+Math.random();
			}
		</script>

</head>
<body>
	<!-- 判断用户名输入状态 -->
	<%
	String status_name = (String)session.getAttribute("status_name");
	if(status_name==null){
		status_name = "0";
	}
	//输入用户名有误
	if(status_name.equals("-1")){out.println("<script type=\"text/javascript\">"); 
								  out.println("alert(\"输入用户名有误！\");"); 
								  out.println("</script>");}
	session.setAttribute("status_name","0"); %>
	<!-- 判断用户名状态 -->
	<!-- 判断验证码状态 -->
	<%
	String status_code = (String)session.getAttribute("status_code");
	if(status_code==null){
		status_code = "0";
	}
	//输入验证码有误
	if(status_code.equals("-1")){out.println("<script type=\"text/javascript\">"); 
								  out.println("alert(\"输入验证码有误！\");"); 
								  out.println("</script>");}
	session.setAttribute("status_code","0"); %>
	<!-- 判断验证码状态 -->

		<div class="main">
  <div class="main0">
     <div class="formBox">
       <h3>登录密码重置</h3>
       <ul>
          <li class="mainCol firLi">&gt;身份验证</li>
          <li class="mainCol">&gt;登录密码重置</li>
          <li class="lastLi">&gt;重置完成</li>
       </ul>
       <img src="<%=basePath%>./WebContent/images/line2.png" />
       <form action="servlet/Password_2" method="post" name="Form">
       <div class="itembox itembox_2">
         <label>用户名 &nbsp;:</label>
         <input type="text" placeholder="请输入用户名" name="name"></span>
       </div>
       <div class="itembox itembox_2">
         <label>登录密码&nbsp;:</label>
         <input type="password" placeholder="请输入新登录密码" name="password"></span>
       </div>
       <div class="itembox itembox_2">
         <label>验证码&nbsp;:</label>
         <input type="text" placeholder="请输入验证码" class="yzm" name="code"></span>
         <div class="yzmbox"><img border=0 src="validate.jsp" name="imgValidate" onclick="refresh()" style="width:84px;height:40px;"></div>
       </div>
       <div class="btnBox">
            <input type="submit" class="layui-btn layui-btn-normal" value="下一步">
       </div>
       </form>
     </div>
  </div>
</div>
</body>
</html>