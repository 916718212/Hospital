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
		<title >Hospital UI 首页</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="icon" type="image/png" href="<%=basePath%>./WebContent/assets/i/favicon.png">
    	<link rel="apple-touch-icon-precomposed" href="<%=basePath%>./WebContent/assets/i/app-icon72x72@2x.png">
    	<link rel="stylesheet" href="<%=basePath%>./WebContent/assets/css/amazeui.min.css" />
    	<link rel="stylesheet" href="<%=basePath%>./WebContent/assets/css/admin.css">
    	<link rel="stylesheet" href="<%=basePath%>./WebContent/assets/css/app.css">
    	<script src="<%=basePath%>./WebContent/assets/js/echarts.min.js"></script>

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
                        <a href="manager_Index.jsp" class="nav-link active">
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
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
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
                Hospital UI 首页
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
            </ol>
            <div class="tpl-content-scope">
                <div class="note note-info">
                    <h3>Hospital UI For Life
                        <span class="close" data-close="note"></span>
                    </h3>
                    <p> Hospital UI 包含医疗器材、医学药品、紧急救援。。。。</p>
                    <p><span class="label label-danger">提示:</span> Hopsital UI 
                    </p>
                </div>
            </div>

            <div class="row">
				
                <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                    <div class="dashboard-stat blue">
                        <div class="visual">
                            <i class="am-icon-comments-o"></i>
                        </div>
                        <div class="details">
                        <jsp:useBean id="eRDao" class="dao.EmergencyRescueDao"></jsp:useBean>
                            <div class="number"> <%=eRDao.getEmergencyRescueCount() %> </div>
                            <div class="desc"> 紧急救援 </div>
                        </div>
                        <a class="more" href="manager_EmergencyRescue.jsp?search="> 查看更多
                    <i class="m-icon-swapright m-icon-white"></i>
                </a>
                    </div>
                </div>
				
                <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                    <div class="dashboard-stat red">
                        <div class="visual">
                            <i class="am-icon-bar-chart-o"></i>
                        </div>
                        <div class="details">
                        <jsp:useBean id="mEDao" class="dao.MedicalEquipmentDao"></jsp:useBean>
                            <div class="number"> <%=mEDao.getMedicalEquipmentCount() %> </div>
                            <div class="desc"> 医疗器材 </div>
                        </div>
                        <a class="more" href="manager_MedicalEquipment.jsp?search="> 查看更多
                    <i class="m-icon-swapright m-icon-white"></i>
                </a>
                    </div>
                </div>
				
                <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                    <div class="dashboard-stat green">
                        <div class="visual">
                            <i class="am-icon-apple"></i>
                        </div>
                        <div class="details">
                        <jsp:useBean id="mDDao" class="dao.MedicalDrugsDao"></jsp:useBean>
                            <div class="number"> <%=mDDao.getMedicalDrugsCount() %> </div>
                            <div class="desc"> 医学药品 </div>
                        </div>
                        <a class="more" href="manager_MedicalDrugs.jsp?search="> 查看更多
                    <i class="m-icon-swapright m-icon-white"></i>
                </a>
                    </div>
                </div>
				
                <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                    <div class="dashboard-stat purple">
                        <div class="visual">
                            <i class="am-icon-android"></i>
                        </div>
                        <div class="details">
                        <jsp:useBean id="eCDao" class="dao.ExpertCommunityDao"></jsp:useBean>
                            <div class="number"> <%=eCDao.getExpertCommunityCount() %> </div>
                            <div class="desc"> 专家社区 </div>
                        </div>
                        <a class="more" href="manager_ExpertCommunity.jsp?search="> 查看更多
                    <i class="m-icon-swapright m-icon-white"></i>
                </a>
                    </div>
                </div>
                
				<div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                    <div class="dashboard-stat purple">
                        <div class="visual">
                            <i class="am-icon-comments-o"></i>
                        </div>
                        <div class="details">
                        <jsp:useBean id="cVDao" class="dao.ChinaVirusDao"></jsp:useBean>
                            <div class="number"> <%=cVDao.getChinaVirusCount() %> </div>
                            <div class="desc"> 新冠事件 </div>
                        </div>
                        <a class="more" href="manager_ChinaVirus.jsp?search="> 查看更多
                    <i class="m-icon-swapright m-icon-white"></i>
                </a>
                    </div>
                </div>
				
                <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                    <div class="dashboard-stat green">
                        <div class="visual">
                            <i class="am-icon-bar-chart-o"></i>
                        </div>
                        <div class="details">
                        <jsp:useBean id="uDao" class="dao.UserDao"></jsp:useBean>
                            <div class="number"> <%=uDao.getCustomerCount() %> </div>
                            <div class="desc"> 顾客列表 </div>
                        </div>
                        <a class="more" href="manager_Customer.jsp?search="> 查看更多
                    <i class="m-icon-swapright m-icon-white"></i>
                </a>
                    </div>
                </div>
				
                <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                    <div class="dashboard-stat red">
                        <div class="visual">
                            <i class="am-icon-apple"></i>
                        </div>
                        <div class="details">
                        <jsp:useBean id="WDao" class="dao.WorkDao"></jsp:useBean>
                            <div class="number"> <%=WDao.getWorkCount() %> </div>
                            <div class="desc"> 任务列表 </div>
                        </div>
                        <a class="more" href="manager_Work.jsp?search="> 查看更多
                    <i class="m-icon-swapright m-icon-white"></i>
                </a>
                    </div>
                </div>
            	
                <div class="am-u-lg-3 am-u-md-6 am-u-sm-12">
                    <div class="dashboard-stat blue">
                        <div class="visual">
                            <i class="am-icon-android"></i>
                        </div>
                        <div class="details">
                        <jsp:useBean id="mBDao" class="dao.MessageBoardDao"></jsp:useBean>
                            <div class="number"> <%=mBDao.getMessageBoardCount() %> </div>
                            <div class="desc"> 留言板 </div>
                        </div>
                        <a class="more" href="manager_MessageBoard.jsp?search="> 查看更多
                    <i class="m-icon-swapright m-icon-white"></i>
                </a>
                    </div>
                </div>
                

            



            </div>

			

            <div class="row">
				
				
                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-green ">
                                <i class="am-icon-cloud-download"></i>
                                <span> Cloud 数据统计</span>
                            </div>
                        </div>

                        <!--百度echarts-->
                        <div id="container" class="tpl-echarts"></div>
                        
                                <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts@5.0.1/dist/echarts.min.js"></script>
                        
                                <script type="text/javascript">
                        var dom = document.getElementById("container");
                        var myChart = echarts.init(dom);
                        var app = {};
                        
                        var option;
                        
                        option = {
                            xAxis: {
                                type: 'category',
                                data: ['紧急救援', '医疗器材', '医学药品', '专家社区', '新冠事件', '顾客列表', '任务列表', '留言板']
                            },
                            yAxis: {
                                type: 'value'
                            },
                            series: [{
                                data: [
                                {
                                    value: <%=eRDao.getEmergencyRescueCount() %>,
                                    itemStyle: {
                                        color: '#3598DC'
                                    }
                                },
                                {
                                    value: <%=mEDao.getMedicalEquipmentCount() %>,
                                    itemStyle: {
                                        color: '#E7505A'
                                    }
                                },
                                {
                                    value: <%=mDDao.getMedicalDrugsCount() %>,
                                    itemStyle: {
                                        color: '#32C5D2'
                                    }
                                },
                                {
                                    value: <%=eCDao.getExpertCommunityCount() %>,
                                    itemStyle: {
                                        color: '#8E44AD'
                                    }
                                },
                                {
                                    value: <%=cVDao.getChinaVirusCount() %>,
                                    itemStyle: {
                                        color: '#8E44AD'
                                    }
                                },
                                {
                                    value: <%=uDao.getCustomerCount() %>,
                                    itemStyle: {
                                        color: '#32C5D2'
                                    }
                                },
                                {
                                    value: <%=WDao.getWorkCount() %>,
                                    itemStyle: {
                                        color: '#E7505A'
                                    }
                                },
                                {
                                    value: <%=mBDao.getMessageBoardCount() %>,
                                    itemStyle: {
                                        color: '#3598DC'
                                    }
                                }
                                	   ],
                                type: 'bar'
                            }]
                        };
                        
                        
                        
                        if (option && typeof option === 'object') {
                            myChart.setOption(option);
                        }
                        
                                </script>
						<!--百度echarts-->
                    </div>
                </div>
				
				
                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-red ">
                                <i class="am-icon-bar-chart"></i>
                                <span> Cloud 顾客资料</span>
                            </div>
                        </div>
                        <div class="tpl-scrollable">
                            <div class="number-stats">
                                <div class="stat-number am-fl am-u-md-6">
                                    <div class="title am-text-right"> Total </div>
                                    <div class="number am-text-right am-text-warning"> <%=uDao.getCustomerCount() %> </div>
                                </div>
                                <div class="stat-number am-fr am-u-md-6">
                                    <div class="title"> Total </div>
                                    <div class="number am-text-success"> <%=uDao.getCustomerCount() %> </div>
                                </div>

                            </div>

                            <table class="am-table tpl-table">
                                <thead>
                                    <tr class="tpl-table-uppercase">
                                        <th>姓名</th>
                                        <th>账号</th>
                                        <th>密码</th>
                                    </tr>
                                </thead>
                                <tbody>
                                
                                <%ResultSet rs = uDao.getCustomer("SELECT * FROM customer");
                                  int count = 0;
                                  while(rs.next()&&count<=6){
                                  count++;
                                 %>
                                    <tr>
                                        <td>
                                            <img src="<%=basePath%>./WebContent/assets/img/user01.png" alt="" class="user-pic">
                                            <a class="user-name" href=""><%=rs.getString("name") %></a>
                                        </td>
                                        <td><%=rs.getString("account") %></td>
                                        <td class="font-green bold"><%=rs.getString("password") %></td>
                                    </tr>
                                    <%} %>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
				
				
            </div>


            <div class="row">
                <div class="am-u-md-6 am-u-sm-12 row-mb">

                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-green ">
                                <span>指派任务</span>
                                <jsp:useBean id="wDao" class="dao.WorkDao"></jsp:useBean>
                                <span class="caption-helper"><%=wDao.getWorkCount() %> 件</span>
                            </div>
                            <div class="tpl-portlet-input">
                                <div class="portlet-input input-small input-inline">
                                    <div class="input-icon right">
                                        <i class="am-icon-search"></i>
                                        <input type="text" class="form-control form-control-solid" placeholder="搜索..."> </div>
                                </div>
                            </div>
                        </div>
                        <div id="wrapper" class="wrapper">
                            <div id="scroller" class="scroller">
                                <ul class="tpl-task-list">
                                <%rs = wDao.getWork("SELECT * FROM work");
                                  count = 0;
                                  while(rs.next()&&count<=8){count++;
                                   %>
                                    <li>
                                        <div class="task-title">
                                            <span class="task-title-sp"> <%=rs.getString("detail") %> </span>
                                            <%if("已完成".equals(rs.getString("status"))){ %>
                                            <span class="label label-sm label-success" style="background-color:green;"><%=rs.getString("status") %></span>
                                            <%}else if("未完成".equals(rs.getString("status"))){ %>
                                            <span class="label label-sm label-success" style="background-color:red;"><%=rs.getString("status") %></span>
                                            <%}else{ %>
                                            <span class="label label-sm label-success"><%=rs.getString("status") %></span>
                                            <%} %>
                                            <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                                        </div>
                                        <div class="task-config">
                                           <!-- <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown>
                                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle>
                                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                                </a>
                                                  <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:;">
                                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                                    </li>
                                                </ul>  


                                            </div>-->
                                        </div>
                                    </li>
                                    <%} %>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-green ">
                                <span>项目进度</span>
                            </div>

                        </div>

                        <div class="am-tabs tpl-index-tabs" data-am-tabs>
                            <ul class="am-tabs-nav am-nav am-nav-tabs">
                                <li class="am-active"><a href="#tab1">进行中</a></li>
                                <li><a href="#tab2">已完成</a></li>
								<li><a href="#tab3">未完成</a></li>
                            </ul>

                            <div class="am-tabs-bd">
                                <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                                    <div id="wrapperA" class="wrapper">
                                        <div id="scroller" class="scroller">
                                            <ul class="tpl-task-list tpl-task-remind">
                                            <%rs = wDao.getWork("SELECT * FROM work WHERE status='进行中'");
                                  			  count = 0;
                                 			  while(rs.next()&&count<=8){count++;
                                   			%>
                                                <li>
                                                    <div class="cosB" style="margin-top:-12px;">
                                                        <%=rs.getString("end") %>
                                                    </div>
                                                    <div class="cosA">
                                                        <span class="cosIco">
                        									<i class="am-icon-bell-o" style="margin-top:5px;"></i>
                      									</span>

                                                        <span> <%=rs.getString("detail") %></span>
                                                    </div>
                                                </li>
                                                <%} %>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="am-tab-panel am-fade" id="tab2">
                                    <div id="wrapperB" class="wrapper">
                                        <div id="scroller" class="scroller">
                                            <ul class="tpl-task-list tpl-task-remind">
                                            <%rs = wDao.getWork("SELECT * FROM work WHERE status='已完成'");
                                  			  count = 0;
                                 			  while(rs.next()&&count<=8){count++;
                                   			%>
                                                <li>
                                                    <div class="cosB" style="margin-top:-12px;">
                                                        <%=rs.getString("end") %>
                                                    </div>
                                                    <div class="cosA">
                                                        <span class="cosIco" style="background-color:green;">
                        									<i class="am-icon-bell-o" style="margin-top:5px;"></i>
                      									</span>

                                                        <span> <%=rs.getString("detail") %></span>
                                                    </div>
                                                </li>
                                                <%} %>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
								<div class="am-tab-panel am-fade" id="tab3">
								              <div id="wrapperB" class="wrapper">
								                  <div id="scroller" class="scroller">
								                      <ul class="tpl-task-list tpl-task-remind">
								                      <%rs = wDao.getWork("SELECT * FROM work WHERE status='未完成'");
                                  			 			count = 0;
                                 			 			while(rs.next()&&count<=8){count++;
                                   						%>
								                          <li>
								                              <div class="cosB" style="margin-top:-12px;">
								                                  <%=rs.getString("end") %>
								                              </div>
								                              <div class="cosA">
								                                  <span class="cosIco" style="background-color:red;">
								 									 <i class="am-icon-bell-o" style="margin-top:5px;"></i>
																  </span>
								
								                                  <span> <%=rs.getString("detail") %></span>
								                              </div>
								                          </li>
								                          <%} %>
								                      </ul>
								                  </div>
								              </div>
								          </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>



        </div>

    </div>


    <script src="<%=basePath%>./WebContent/assets/js/jquery-2.1.1.js"></script>
    <script src="<%=basePath%>./WebContent/assets/js/amazeui.min.js"></script>
    <script src="<%=basePath%>./WebContent/assets/js/iscroll.js"></script>
	<script src="<%=basePath%>./WebContent/assets/js/app.js"></script>
	
</body>
</html>