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
		<title >Hospital 个人信息</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="icon" type="image/png" href="<%=basePath%>./WebContent/assets/img/logo.png">
		<link rel="stylesheet" href="<%=basePath%>./WebContent/css/personInformation.css" />
</head>
<body>
<%Customer customer = (Customer)session.getAttribute("customer");%>
<section class="mainbady">
  <!--基本信息-->
  <div class="info">
    <div class="info_top">
      <p>用户名：<%=customer.getName() %></p>
      <p>账号：<%=customer.getAccount() %></p>
      <p>密码：<%=customer.getPassword() %></p>
    </div>
    <img src="<%=basePath%>./WebContent/images/logo.png">
  </div>
</section>
</body>
</html>