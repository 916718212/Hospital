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
		<title >Hospital 我的留言</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="icon" type="image/png" href="<%=basePath%>./WebContent/assets/img/logo.png">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/layui/css/layui.css"/>

</head>
<body>
<jsp:useBean id="mBDao" class="dao.MessageBoardDao"></jsp:useBean>
<%Customer customer = (Customer)session.getAttribute("customer"); %>
	<table class="layui-table">
		   <thead>
		     <tr>
		       <th>内容</th>
		       <th>发件人姓名</th>
		       <th>发件人手机号</th>
		       <th>发件人账号</th>
		       <th>发件人邮箱</th>
		       <th>发件时间</th>
		     </tr>
		     <%ResultSet rs = mBDao.getMessageBoard("SELECT * FROM messageboard WHERE account="+customer.getAccount()); 
		     while(rs.next()){%>
			 <tr>
				 <td><%=rs.getString("message") %></td>
				 <td><%=rs.getString("name") %></td>
				 <td><%=rs.getString("phone") %></td>
				 <td><%=rs.getString("account") %></td>
				 <td><%=rs.getString("email") %></td>
				 <td><%=rs.getString("time") %></td>
			 </tr>
			 <%} %>
		   </thead>
		 </table>
</body>
</html>