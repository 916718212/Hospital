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
		<title >Hospital UI 医疗器材</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="icon" type="image/png" href="<%=basePath%>./WebContent/assets/i/favicon.png">
    	<link rel="apple-touch-icon-precomposed" href="<%=basePath%>./WebContent/assets/i/app-icon72x72@2x.png">
    	<link rel="stylesheet" href="<%=basePath%>./WebContent/assets/css/amazeui.min.css" />
    	<link rel="stylesheet" href="<%=basePath%>./WebContent/assets/css/admin.css">
    	<link rel="stylesheet" href="<%=basePath%>./WebContent/assets/css/app.css">
    	<!-- 新增按钮样式 -->
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/css/component.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/css/content.css" />
		<script src="<%=basePath%>./WebContent/js/modernizr.custom.js"></script>
		<!-- 新增按钮样式 -->
		<style type="text/css">
			.wf:hover{background-color:#87CEFF!important;}
		</style>
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




<!-- 判断新增状态 -->
	<%
	String status_add_medicalequipment = (String)session.getAttribute("status_add_medicalequipment");
	if(status_add_medicalequipment==null){
		status_add_medicalequipment = "0";
	}
	//新增成功
	if(status_add_medicalequipment.equals("1")){out.println("<script type=\"text/javascript\">"); 
								  out.println("alert(\"添加成功！\");"); 
								  out.println("</script>");}
	session.setAttribute("status_add_medicalequipment","0"); 
	%>
	<!-- 判断新增状态 -->
	
	<!-- 判断删除状态 -->
	<%
	String status_delete_medicalequipment = (String)session.getAttribute("status_delete_medicalequipment");
	if(status_delete_medicalequipment==null){
		status_delete_medicalequipment = "0";
	}
	//删除成功
	if(status_delete_medicalequipment.equals("1")){out.println("<script type=\"text/javascript\">"); 
								  out.println("alert(\"删除成功！\");"); 
								  out.println("</script>");}
	session.setAttribute("status_delete_medicalequipment","0"); 
	%>
	<!-- 判断删除状态 -->
	
	<!-- 判断更新状态 -->
	<%
	String status_update_medicalequipment = (String)session.getAttribute("status_update_medicalequipment");
	if(status_update_medicalequipment==null){
		status_update_medicalequipment = "0";
	}
	//更新成功
	if(status_update_medicalequipment.equals("1")){out.println("<script type=\"text/javascript\">"); 
								  out.println("alert(\"更新成功！\");"); 
								  out.println("</script>");}
	session.setAttribute("status_update_medicalequipment","0"); 
	%>
	<!-- 判断更新状态 -->





        <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                Hospital UI 医疗器材
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">表格</a></li>
                <li><a href="#">医疗器材</a></li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 医疗器材
                    </div>


                </div>
                <div class="tpl-block">
                    <div class="am-g">
                        
						
						<!-- 新增按钮 -->
                            <div class="morph-button morph-button-modal morph-button-modal-2 morph-button-fixed " style="width:63px;height:29px;">
							<button type="button" style="color:#FFFFFF;background-color: #5EB95E;font-size:12px;padding: 6px 0px;width:63px;height:29px;line-height: 17px;"><span class="am-icon-plus">新增</button>
								<div class="morph-content">
									<div>
										<div class="content-style-form content-style-form-1">
											<span class="icon icon-close">Close the dialog</span>
											<h2>新增</h2>
											<form style="margin-top:-50px;" action="servlet/AddMedicalEquipment" method="post">
											<p><label>器材名称</label><input type="text" name="add_name"/></p>
											<p><label>器材图片地址</label><input type="text" name="add_imgsrc"/></p>
											<p><label>器材简介</label><textarea name="add_detail" rows="5" cols="46" style="resize:none;border:2px solid #ebd3bd;background-color:#fef0e3;"></textarea></p>
											<p><input type="submit" value="保存" style="background-color:E75854;color:white;width:100%;height:55px;margin-top:20px;" /></p>
											</form>
										</div>
									</div>
								</div>
							</div>
							<!-- 新增按钮 -->	
						
						
						
                        <div class="am-u-sm-12 am-u-md-3">
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-input-group am-input-group-sm">
                                <form action="manager_MedicalEquipment.jsp" method="post">
                                <input type="text" class="am-form-field" name="search" style="width:200px;padding-left:10px;">
								<input type="submit" class="am-btn am-btn-success" style="margin-top:-38px;margin-left:200px;" value="查询"/>
								</form>
                            </div>
                        </div>
                    </div>
					<hr >
                    <div class="am-g">
                        <div class="tpl-table-images">
                        <jsp:useBean id="mEDao" class="dao.MedicalEquipmentDao"></jsp:useBean>
							<%ResultSet rs = null;
								String search = request.getParameter("search");
								if("".equals(search)){rs = mEDao.getMedicalEquipment("SELECT * FROM medicalequipment");}
								else{rs = mEDao.getMedicalEquipment("SELECT * FROM medicalequipment WHERE name LIKE '%"+search+"%'");}
								while(rs.next()){ %>
                            <div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
                                <div class="tpl-table-images-content">
                                    <div class="tpl-table-images-content-i-time">发布时间：<%=rs.getString("time") %></div>
                                    <div class="tpl-i-title">
                                        <%=rs.getString("name") %>
                                    </div>
                                    <a href="javascript:;" class="tpl-table-images-content-i">
                                        <div class="tpl-table-images-content-i-info">
                                           

                                        </div>
                                        <span class="tpl-table-images-content-i-shadow"></span>
                                        <img src=<%=rs.getString("imgSrc") %> style="width:310px;height:206px;">
                                    </a>
                                    <div class="tpl-table-images-content-block">
                                        <div class="tpl-i-font" style="height:42px;">
                                            <%=rs.getString("detail") %>
                                        </div>
                                        <div class="tpl-i-more">
                                            
                                        </div>
                                        <div class="am-btn-toolbar">
                                            <div class="am-btn-group am-btn-group-xs tpl-edit-content-btn">
                                                
                                                
                                                <!-- 编辑按钮 -->
                            					<div class="morph-button morph-button-modal morph-button-modal-2 morph-button-fixed " style="width:63px;height:29px;">
													<button class="wf" type="button" style="color:#FFFFFF;background-color: #3BB4F2;font-size:12px;margin-top:6px;margin-left:40px;width:63px!important;height:29px;line-height: 17px;"><span class="am-icon-plus">编辑</button>
													<div class="morph-content">
														<div>
															<div class="content-style-form content-style-form-1">
																<span class="icon icon-close">Close the dialog</span>
																<h2>编辑</h2>
																<form style="margin-top:-50px;" action="servlet/UpdateMedicalEquipment" method="post">
																<p><label>器材名称</label><input type="text" name="update_name" value=<%=rs.getString("name") %>></p>
																<p><label>器材图片地址</label><input type="text" name="update_imgsrc" value=<%=rs.getString("imgSrc") %>></p>
																<p><label>器材简介</label><textarea name="update_detail" rows="5" cols="46" style="resize:none;border:2px solid #ebd3bd;background-color:#fef0e3;"><%=rs.getString("detail") %></textarea></p>
																<p><input type="submit" value="保存" style="background-color:E75854;color:white;width:100%;height:55px;margin-top:20px;" /></p>
																</form>
															</div>
														</div>
													</div>
												</div>
												<!-- 编辑按钮 -->	
                                            
                                                <a href="servlet/DeleteMedicalEquipment?delete_name=<%=rs.getString("name") %>" class="am-btn am-btn-default am-btn-danger" style="margin: 16px 43px;"><span class="am-icon-trash-o"></span> 删除</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%} %>
                            <div class="am-u-lg-12">
                               
                                <hr>
                            </div>

                        </div>

                    </div>
                </div>
                <div class="tpl-alert"></div>
            </div>










        </div>

    </div>
<!-- 按钮JS -->
<script type="text/javascript" src="<%=basePath%>./WebContent/js/classie.js"></script>
<script type="text/javascript" src="<%=basePath%>./WebContent/js/uiMorphingButton_fixed.js"></script>
<script type="text/javascript">
(function() {
	var docElem = window.document.documentElement, didScroll, scrollPosition;

	// trick to prevent scrolling when opening/closing button
	function noScrollFn() {
		window.scrollTo( scrollPosition ? scrollPosition.x : 0, scrollPosition ? scrollPosition.y : 0 );
	}

	function noScroll() {
		window.removeEventListener( 'scroll', scrollHandler );
		window.addEventListener( 'scroll', noScrollFn );
	}

	function scrollFn() {
		window.addEventListener( 'scroll', scrollHandler );
	}

	function canScroll() {
		window.removeEventListener( 'scroll', noScrollFn );
		scrollFn();
	}

	function scrollHandler() {
		if( !didScroll ) {
			didScroll = true;
			setTimeout( function() { scrollPage(); }, 60 );
		}
	};

	function scrollPage() {
		scrollPosition = { x : window.pageXOffset || docElem.scrollLeft, y : window.pageYOffset || docElem.scrollTop };
		didScroll = false;
	};

	scrollFn();

	[].slice.call( document.querySelectorAll( '.morph-button' ) ).forEach( function( bttn ) {
		new UIMorphingButton( bttn, {
			closeEl : '.icon-close',
			onBeforeOpen : function() {
				// don't allow to scroll
				noScroll();
			},
			onAfterOpen : function() {
				// can scroll again
				canScroll();
			},
			onBeforeClose : function() {
				// don't allow to scroll
				noScroll();
			},
			onAfterClose : function() {
				// can scroll again
				canScroll();
			}
		} );
	} );

	// for demo purposes only
	[].slice.call( document.querySelectorAll( 'form button' ) ).forEach( function( bttn ) { 
		bttn.addEventListener( 'click', function( ev ) { ev.preventDefault(); } );
	} );
})();
</script>
<!-- 新增按钮JS -->

    <script src="<%=basePath%>./WebContent/assets/js/jquery-2.1.1.js"></script>
    <script src="<%=basePath%>./WebContent/assets/js/amazeui.min.js"></script>
    <script src="<%=basePath%>./WebContent/assets/js/app.js"></script>
	
</body>
</html>