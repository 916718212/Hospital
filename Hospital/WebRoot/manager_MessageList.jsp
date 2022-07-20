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
		<title >Hospital UI 消息列表</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="icon" type="image/png" href="<%=basePath%>./WebContent/assets/i/favicon.png">
    	<link rel="apple-touch-icon-precomposed" href="<%=basePath%>./WebContent/assets/i/app-icon72x72@2x.png">
    	<link rel="stylesheet" href="<%=basePath%>./WebContent/assets/css/amazeui.min.css" />
    	<link rel="stylesheet" href="<%=basePath%>./WebContent/assets/css/admin.css">
    	<link rel="stylesheet" href="<%=basePath%>./WebContent/assets/css/app.css">

</head>
<body>
	<header class="am-topbar am-topbar-inverse admin-header">
        <div class="am-topbar-brand">
                <img src="<%=basePath%>./WebContent/assets/img/logo.png"  class="tpl-logo" style="margin-top:7px;">
        </div>
        <div class="am-icon-list tpl-header-nav-hover-ico am-fl am-margin-right" style="margin-top:28px;" >

        </div>

        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only" >导航切换</span> <span  class="am-icon-bars"></span></button>
		
	<!-- 获取管理员账号 -->
	<%
	String account = (String)session.getAttribute("account");
	%>
	<!-- 获取管理员账号 -->
		
		
        <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

            <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">

                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="tpl-header-list-user-nick"><%=account %></span><span class="tpl-header-list-user-ico"> <img src="<%=basePath%>./WebContent/assets/img/user01.png"></span>
                    </a>
                    <ul class="am-dropdown-content">
                        <li><a href="servlet/Manager_Exit"><span class="am-icon-power-off"></span> 退出</a></li>
                    </ul>
                </li>
                <li><a href="servlet/Manager_Exit" class="tpl-header-list-link"><span  style="margin-top:28px;" class="am-icon-sign-out tpl-header-list-ico-out-size"></span></a></li>
            </ul>
        </div>
    </header>
    






    <div class="tpl-page-container tpl-page-header-fixed">

        <div class="tpl-left-nav tpl-left-nav-hover">
            <div class="tpl-left-nav-title">
                Hospital UI 列表
            </div>
            <div class="tpl-left-nav-list">
                 <ul class="tpl-left-nav-menu">
                    <li class="tpl-left-nav-item">
                        <a href="manager_Index.jsp" class="nav-link">
                            <i class="am-icon-home"></i>
                            <span>首页</span>
                        </a>
                    </li>
                    <li class="tpl-left-nav-item">
                        <a href="manager_Chart.jsp" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-bar-chart"></i>
                            <span>数据表</span>
                        </a>
                    </li>

                    <li class="tpl-left-nav-item">
                        <!-- 打开状态 a 标签添加 active 即可   -->
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list active">
                            <i class="am-icon-table"></i>
                            <span>表格</span>
                            <!-- 列表打开状态的i标签添加 tpl-left-nav-more-ico-rotate 图表即90°旋转  -->
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu" style="display:block">
                            <li>
                                <a href="manager_EmergencyRescue.jsp?search=">
                                    <i class="am-icon-angle-right"></i>
                                    <span>紧急救援</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                            
                                <a href="manager_MedicalEquipment.jsp?search=">
                                    <i class="am-icon-angle-right"></i>
                                    <span>医疗器材</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                            
                                    <a href="manager_MedicalDrugs.jsp?search=">
                                        <i class="am-icon-angle-right"></i>
                                        <span>医学药品</span>
                                        <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                            			
                            			<a href="manager_ExpertCommunity.jsp?search=">
                            			    <i class="am-icon-angle-right"></i>
                            			    <span>专家社区</span>
                            			    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                            			
                            			<a href="manager_ChinaVirus.jsp?search=">
                            			    <i class="am-icon-angle-right"></i>
                            			    <span>新冠事件</span>
                            			    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                            				
                            			<a href="manager_Customer.jsp?search=">
                            			    <i class="am-icon-angle-right"></i>
                            			    <span>顾客信息</span>
                            			    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                            			
                            			<a href="manager_Work.jsp?search=">
                            			    <i class="am-icon-angle-right"></i>
                            			    <span>任务列表</span>
                            			    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                            			
                            			<a href="manager_MessageList.jsp?search=">
                            			    <i class="am-icon-angle-right"></i>
                            			    <span>消息列表</span>
                            			    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                            
                                        <a href="manager_MessageBoard.jsp?search=">
                                            <i class="am-icon-angle-right"></i>
                                            <span>留言板</span>
                            				<i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                        </a>
                            </li>
                        </ul>
                    </li>

                </ul>
            </div>
        </div>




        <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                Hospital UI 消息列表
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">表格</a></li>
                <li><a href="#">消息列表</a></li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 消息列表
                    </div>


                </div>
				
                <div class="tpl-block">
                    <div class="am-g">
                        <div class="am-u-sm-12 am-u-md-6">
                            <div class="am-btn-toolbar">
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
							
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-input-group am-input-group-sm">
                                <form action="manager_MessageList.jsp" method="post">
                                <input type="text" class="am-form-field" name="search" style="width:200px;padding-left:10px;">
								<input type="submit" class="am-btn am-btn-success" style="margin-top:-38px;margin-left:200px;" value="查询"/>
								</form>
                            </div>
                        </div>
                    </div>
					<hr >
                    <ul class="tpl-task-list tpl-task-remind">
                    <jsp:useBean id="mDao" class="dao.MessageDao"></jsp:useBean>
                      <%ResultSet rs = null;
						String search = request.getParameter("search");
						if("".equals(search)){rs = mDao.getMessage("SELECT * FROM message ORDER BY time DESC");}
						else{rs = mDao.getMessage("SELECT * FROM message WHERE detail LIKE '%"+search+"%' ORDER BY time DESC");}
						while(rs.next()){ %>
                        <li>
                            <div class="cosB" style="margin-top:-12px;">
                                <%=rs.getString("time") %>
                            </div>
                            <div class="cosA">
                                <span class="cosIco">
                        <i class="am-icon-bell-o" style="margin-top:5px"></i>
                      </span>

                                <span> <%=rs.getString("detail") %><span class="tpl-label-info" style="margin-left:8px;"> <%=rs.getString("user") %>
                                                            
                                                        </span></span>
                            </div>

                        </li>
                        <%} %>
                    </ul>
                </div>

            </div>










        </div>

    </div>


    <script src="<%=basePath%>./WebContent/assets/js/jquery-2.1.1.js"></script>
    <script src="<%=basePath%>./WebContent/assets/js/amazeui.min.js"></script>
    <script src="<%=basePath%>./WebContent/assets/js/app.js"></script>
	
</body>
</html>