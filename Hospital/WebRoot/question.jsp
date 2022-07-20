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
		<title >Hospital 首页</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="icon" type="image/png" href="<%=basePath%>./WebContent/assets/img/logo.png">
		<link rel="stylesheet" href="<%=basePath%>./WebContent/css/swiper-bundle.min.css">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/css/index.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basePath%>./WebContent/css/question.css"/>
		<script src="<%=basePath%>./WebContent/layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=basePath%>./WebContent/js/swiper-bundle.min.js"></script>
		<script src="<%=basePath%>./WebContent/js/question.js"></script>
		<script src="<%=basePath%>./WebContent/js/jquery.min.js"></script>

</head>
<body>
	<!-- 导航栏 -->
		<div class="layui-row">
			<div class="layui-col-lg10" >
					<ul class="layui-nav layui-bg-green" lay-filter="">
					  <img src="<%=basePath%>./WebContent/images/logo.png" height="60px">
					  <li class="layui-nav-item"><a href="index.jsp">首页</a></li>
					  <li class="layui-nav-item"><a href="medicalEquipment.jsp?medicalequipment=">医疗器材</a></li>
					  <li class="layui-nav-item"><a href="medicalDrugs.jsp?medicaldrugs=">医学药品</a></li>
					  <li class="layui-nav-item"><a href="emergencyRescue.jsp?emergencyrescue=">紧急救援</a></li>
					  <li class="layui-nav-item">
					    <a href="chinaVirus.jsp">新冠病毒</a>
					    <dl class="layui-nav-child"> <!-- 二级菜单 -->
					      <dd><a href="chinaVirus.jsp">新冠事件</a></dd>
					      <dd><a href="virusKnowledge.jsp">新冠防控知识</a></dd>
					      <dd><a href="virusNews.jsp">新冠消息</a></dd>
					    </dl>
					  </li>
					  <li class="layui-nav-item">
					    <a href="visceral.jsp">科普数据</a>
					    <dl class="layui-nav-child"> <!-- 二级菜单 -->
					      <dd><a href="visceral.jsp">内脏数据</a></dd>
					      <dd><a href="water.jsp">人体含水量</a></dd>
					      <dd><a href="map.jsp">电子地图</a></dd>
					      <dd><a href="gdp.jsp">人均寿命与GDP</a></dd>
					    </dl>
					  </li>
					  <li class="layui-nav-item"><a href="expertCommunity.jsp">专家社区</a></li>
					  <li class="layui-nav-item"><a href="book.jsp">电子书</a></li>
					  <li class="layui-nav-item">
						<%Customer customer = (Customer)session.getAttribute("customer");
				 		 if(customer!=null){ %>
				 		 <a href="messageBoard.jsp">留言板</a>
				 		 <%}else{ %>
						  <a href="login.jsp">留言板</a>
						  <%} %>
					  </li>
					  <li class="layui-nav-item"><a href="articleList.jsp">文章</a></li>
					  <li class="layui-nav-item layui-this"><a href="question.jsp">答题</a></li>
					  <li class="layui-nav-item"><a href="rumor.jsp">避谣</a></li>
					  <li class="layui-nav-item"><a href="outLink.jsp">外链</a></li>
					</ul>
					<script>
					//注意：导航 依赖 element 模块，否则无法进行功能性操作
					layui.use('element', function(){
					  var element = layui.element;
					  
					  //…
					});
					</script>
			</div>
			<div class="layui-col-lg2">
					<ul class="layui-nav layui-bg-green">
					 <%
					//session判断存在用户登录
					 if(customer == null){
	 				%>
						 <li class="layui-nav-item">
						  <a href="login.jsp">注册/登录<span class="layui-badge-dot"></span></a>
						</li> 
						<%}else{ %>
						<li class="layui-nav-item">
							<a href="person.jsp">个人中心</a>
						</li>
						<li class="layui-nav-item">
							<a href="servlet/Exit">退出</a>
						</li>
						<%} %>
					</ul>
			</div>
		</div>
		<!-- 导航栏 -->
		
		
		
		
		<form id="form1" action="HandOnExam.aspx" method="post">
		<div class="clearfix"></div>
		  <div class="mainbox box-center"> 
		    <!--左侧-->
		    <div class="side_l left">  
		      <!--信息-->
		      <div class="col-l-01 box-shadow-ie-r"> <b class="b1"></b><b class="b2"></b><b class="b3 "></b>
		        <div class=" bc bc-h01  box-shadow"><a><img src="<%=basePath%>./WebContent/images/question_rachel.jpg" id="imgurl" class="border p3 m5 left" width="70" height="80"></a>
		          <div class="text-left m5 col-r-03 right">
		            <p>学员姓名：<span id="stuname">张翔</span></p>
		            <p>卷面总分：<span id="totalscore">100.00</span>分</p>
		            <p>合格分数线：<span id="jgscore">60.00</span>分</p>
		            <p>答题时间：<span id="examtime">10</span>分钟</p>
		          </div>
		        </div>
		        <b class="b3"></b><b class="b2"></b><b class="b1 "></b> </div>
		      <!--序号-->
		      <div class="col-l-02 box-shadow-ie-r mt20 bc-h02  "> <b class="b1"></b><b class="b2"></b><b class="b3 "></b>
		        <div class=" bc  box-shadow p10">
		          <div id="testnum" class="xuhao">
		            <h4>一、单选题</h4>
		            <a href="#1" class="" id="num5876" name="num5876">1</a><a href="#2" class="" id="num4751" name="num4751">2</a><a href="#3" class="" id="num9302" name="num9302">3</a><a href="#4" class="" id="num6191" name="num6191">4</a><a href="#5" class="" id="num16720" name="num16720">5</a><a href="#6" class="" id="num11467" name="num11467">6</a><a href="#7" class="" id="num12368" name="num12368">7</a><a href="#8" class="" id="num22989" name="num22989">8</a><a href="#9" class="" id="num5543" name="num5543">9</a><a href="#10" class="" id="num19617" name="num19617">10</a>
		            <div class="clearfix"></div>
		            <h4>二、多选题</h4>
		            <a href="#11" class="" id="num6719" name="num6719">11</a><a href="#12" class="" id="num5334" name="num5334">12</a><a href="#13" class="" id="num25533" name="num25533">13</a><a href="#14" class="" id="num12204" name="num12204">14</a><a href="#15" class="" id="num15530" name="num15530">15</a><a href="#16" class="" id="num17217" name="num17217">16</a><a href="#17" class="" id="num4844" name="num4844">17</a><a href="#18" class="" id="num16797" name="num16797">18</a><a href="#19" class="" id="num12677" name="num12677">19</a><a href="#20" class="" id="num5355" name="num5355">20</a>
		            <div class="clearfix"></div>
		            <h4>三、判断题</h4>
		            <a href="#21" class="" id="num15485" name="num15485">21</a><a href="#22" class="" id="num23556" name="num23556">22</a><a href="#23" class="" id="num18983" name="num18983">23</a><a href="#24" class="" id="num17296" name="num17296">24</a><a href="#25" class="" id="num6966" name="num6966">25</a><a href="#26" class="" id="num26855" name="num26855">26</a><a href="#27" class="" id="num17491" name="num17491">27</a><a href="#28" class="" id="num22000" name="num22000">28</a><a href="#29" class="" id="num15076" name="num15076">29</a><a href="#30" class="" id="num25600" name="num25600">30</a>
		            <div class="clearfix"></div>
		            <h4>四、主观题</h4>
		            <a href="#31" class="" id="num73716" name="num73716">31</a><a href="#32" class="" id="num73722" name="num73722">32</a><a href="#33" class="" id="num73700" name="num73700">33</a><a href="#34" class="" id="num73711" name="num73711">34</a></div>
		        </div>
		        <b class="b3"></b><b class="b2"></b><b class="b1 "></b> </div>
		    </div>
		    <!--右侧--> 
		    <!--题-->
		    <div class="col-r-01 box-shadow-ie-r mt10 right"><b class="b1"></b><b class="b2"></b><b class="b3 "></b>
		      <div id="Content" class=" bc bc-h04  box-shadow p10"><b class="b1 bb1"></b><b class="b2 bb2"></b><b class="b3 bb2"></b>
		        <div class="bc bb2">
		          <div class="bt bb3 bc-h03"><span><a><img class="png" src="<%=basePath%>./WebContent/images/question_jian.png"></a></span>第一部分：  单选题（每题1.00分,共10.00分）</div>
		        </div>
		        <b class="b3 bb2"></b><b class="b2 bb2"></b><b class="b1 bb1"></b>
		        <div class="m-choicebox"><a name="1" class="target"></a>
		          <h4>第  1  题：
		            <p>下图是哪个国家的普通护照？(　)</p>
		            <p><img alt="" src="https://www.17sucai.com/edu/tools/upload/201403/03/201403030957001523.jpg"></p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">几内亚</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">厄瓜多尔</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">赤道几内亚</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">巴布亚新几内亚<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn mus 5876" id="lblA5876">
		            <label for='rdA5876'>
		              <input type='radio' value="A" checked="" name="rd5876" id="rdA5876" onclick="checkanswer(5876,'1','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn mus 5876" id="lblB5876">
		            <label for='rdB5876'>
		              <input type='radio' value="B" name="rd5876" id="rdB5876" onclick="checkanswer(5876,'1','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn mus 5876" id="lblC5876">
		            <label for='rdC5876'>
		              <input type='radio' value="C" name="rd5876" id="rdC5876" onclick="checkanswer(5876,'1','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn mus 5876" id="lblD5876">
		            <label for='rdD5876'>
		              <input type='radio' value="D" name="rd5876" id="rdD5876" onclick="checkanswer(5876,'1','D')">
		              &nbsp;&nbsp;D</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="2" class="target"></a>
		          <h4>第  2  题：
		            <p style="text-align:left;">脸形指面部的轮廓及形状，是由上部的(　)开始。</p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">眉毛</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">头顶</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">鼻根</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">发际线<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 4751" id="lblA4751">
		            <label for='rdA4751'>
		              <input type='radio' value="A" name="rd4751" id="rdA4751" onclick="checkanswer(4751,'1','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn mus 4751" id="lblB4751">
		            <label for='rdB4751'>
		              <input type='radio' value="B" checked="" name="rd4751" id="rdB4751" onclick="checkanswer(4751,'1','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn mus 4751" id="lblC4751">
		            <label for='rdC4751'>
		              <input type='radio' value="C" name="rd4751" id="rdC4751" onclick="checkanswer(4751,'1','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn mus 4751" id="lblD4751">
		            <label for='rdD4751'>
		              <input type='radio' value="D" name="rd4751" id="rdD4751" onclick="checkanswer(4751,'1','D')">
		              &nbsp;&nbsp;D</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="3" class="target"></a>
		          <h4>第  3  题：
		            <p style="text-align:left;">船舶起重设备中的起重柱上的(　)极易藏匿人物。 </p>
		            <p style="text-indent:-18pt;text-align:left;">·A </p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">驾驶台</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">工具房</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">指挥室</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">操纵室<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 9302" id="lblA9302">
		            <label for='rdA9302'>
		              <input type='radio' value="A" name="rd9302" id="rdA9302" onclick="checkanswer(9302,'1','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn mus 9302" id="lblB9302">
		            <label for='rdB9302'>
		              <input type='radio' value="B" checked="" name="rd9302" id="rdB9302" onclick="checkanswer(9302,'1','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn mus 9302" id="lblC9302">
		            <label for='rdC9302'>
		              <input type='radio' value="C" name="rd9302" id="rdC9302" onclick="checkanswer(9302,'1','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn mus 9302" id="lblD9302">
		            <label for='rdD9302'>
		              <input type='radio' value="D" name="rd9302" id="rdD9302" onclick="checkanswer(9302,'1','D')">
		              &nbsp;&nbsp;D</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="4" class="target"></a>
		          <h4>第  4  题：
		            <p>下图是哪种证件？(　)</p>
		            <p><img alt="" src="https://www.17sucai.com/edu/tools/upload/201403/03/201403031105258646.jpg"></p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">荷兰紧急护照</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">瑞典难民证</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">荷兰难民证</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">瑞典紧急护照<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 6191" id="lblA6191">
		            <label for='rdA6191'>
		              <input type='radio' value="A" name="rd6191" id="rdA6191" onclick="checkanswer(6191,'1','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 6191" id="lblB6191">
		            <label for='rdB6191'>
		              <input type='radio' value="B" name="rd6191" id="rdB6191" onclick="checkanswer(6191,'1','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn mus 6191" id="lblC6191">
		            <label for='rdC6191'>
		              <input type='radio' value="C" checked="" name="rd6191" id="rdC6191" onclick="checkanswer(6191,'1','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn mus 6191" id="lblD6191">
		            <label for='rdD6191'>
		              <input type='radio' value="D" name="rd6191" id="rdD6191" onclick="checkanswer(6191,'1','D')">
		              &nbsp;&nbsp;D</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="5" class="target"></a>
		          <h4>第  5  题：
		            <p>下列观察方法中不属于目测检验的是(　)。</p>
		            <p style="text-indent:-18pt;text-align:left;">·A</p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">印文边框的形态和大小与真印章是否相符</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">看印油整体颜色与真印章是否相符</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">利用红外光观察印章有没有被改动的痕迹</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">印文的间距、字体、特殊笔画、文字排列与真印章是否相符<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 16720" id="lblA16720">
		            <label for='rdA16720'>
		              <input type='radio' value="A" name="rd16720" id="rdA16720" onclick="checkanswer(16720,'1','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 16720" id="lblB16720">
		            <label for='rdB16720'>
		              <input type='radio' value="B" name="rd16720" id="rdB16720" onclick="checkanswer(16720,'1','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn mus 16720" id="lblC16720">
		            <label for='rdC16720'>
		              <input type='radio' value="C" checked="" name="rd16720" id="rdC16720" onclick="checkanswer(16720,'1','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn mus 16720" id="lblD16720">
		            <label for='rdD16720'>
		              <input type='radio' value="D" name="rd16720" id="rdD16720" onclick="checkanswer(16720,'1','D')">
		              &nbsp;&nbsp;D</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="6" class="target"></a>
		          <h4>第  6  题：
		            <p>需对出入境人员进行人身及行李物品检查的，应报(　)批准。 </p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">值班队（科）领导</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">站值班领导</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">站领导</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">站部门领导</div>
		            </li>
		            <li class="question-option-list"><span>E．</span>
		              <div class="option-content">《出入境边防检查勤务规范》第89和91条<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 11467" id="lblA11467">
		            <label for='rdA11467'>
		              <input type='radio' value="A" name="rd11467" id="rdA11467" onclick="checkanswer(11467,'1','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 11467" id="lblB11467">
		            <label for='rdB11467'>
		              <input type='radio' value="B" name="rd11467" id="rdB11467" onclick="checkanswer(11467,'1','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn 11467" id="lblC11467">
		            <label for='rdC11467'>
		              <input type='radio' value="C" name="rd11467" id="rdC11467" onclick="checkanswer(11467,'1','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn mus 11467" id="lblD11467">
		            <label for='rdD11467'>
		              <input type='radio' value="D" checked="" name="rd11467" id="rdD11467" onclick="checkanswer(11467,'1','D')">
		              &nbsp;&nbsp;D</label>
		            </a><a class="question-btn mus 11467" id="lblE11467">
		            <label for='rdE11467'>
		              <input type='radio' value="E" name="rd11467" id="rdE11467" onclick="checkanswer(11467,'1','E')">
		              &nbsp;&nbsp;E</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="7" class="target"></a>
		          <h4>第  7  题：
		            <p style="text-align:left;">伪造的凹版印刷图案或文字通常(　)光源下鉴别。</p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">透射光</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">侧光</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">紫外光</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">紫外透射光<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 12368" id="lblA12368">
		            <label for='rdA12368'>
		              <input type='radio' value="A" name="rd12368" id="rdA12368" onclick="checkanswer(12368,'1','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 12368" id="lblB12368">
		            <label for='rdB12368'>
		              <input type='radio' value="B" name="rd12368" id="rdB12368" onclick="checkanswer(12368,'1','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn 12368" id="lblC12368">
		            <label for='rdC12368'>
		              <input type='radio' value="C" name="rd12368" id="rdC12368" onclick="checkanswer(12368,'1','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn mus 12368" id="lblD12368">
		            <label for='rdD12368'>
		              <input type='radio' value="D" checked="" name="rd12368" id="rdD12368" onclick="checkanswer(12368,'1','D')">
		              &nbsp;&nbsp;D</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="8" class="target"></a>
		          <h4>第  8  题：
		            <p style="text-align:left;">中国旅客陈某系海员，欲从北京首都机场出境前往乌克兰。边防检查站可查验其(　)放行。</p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">公务普通护照与《海员出境证明》</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">海员证与《海员出境证明》</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">公务普通护照与《劳务人员出境证明》</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">海员证与《境外就业人员出境证明》<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 22989" id="lblA22989">
		            <label for='rdA22989'>
		              <input type='radio' value="A" name="rd22989" id="rdA22989" onclick="checkanswer(22989,'1','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 22989" id="lblB22989">
		            <label for='rdB22989'>
		              <input type='radio' value="B" name="rd22989" id="rdB22989" onclick="checkanswer(22989,'1','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn mus 22989" id="lblC22989">
		            <label for='rdC22989'>
		              <input type='radio' value="C" checked="" name="rd22989" id="rdC22989" onclick="checkanswer(22989,'1','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn mus 22989" id="lblD22989">
		            <label for='rdD22989'>
		              <input type='radio' value="D" name="rd22989" id="rdD22989" onclick="checkanswer(22989,'1','D')">
		              &nbsp;&nbsp;D</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="9" class="target"></a>
		          <h4>第  9  题：
		            <p>【第516题】</p>
		            <p>下图是哪种证件？(　)<br>
		              <img alt="" src="https://www.17sucai.com/edu/tools/upload/201403/02/201403022038158027.jpg"></p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">英国普通护照</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">英国官员护照</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">英国外交护照</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">英国难民证<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 5543" id="lblA5543">
		            <label for='rdA5543'>
		              <input type='radio' value="A" name="rd5543" id="rdA5543" onclick="checkanswer(5543,'1','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 5543" id="lblB5543">
		            <label for='rdB5543'>
		              <input type='radio' value="B" name="rd5543" id="rdB5543" onclick="checkanswer(5543,'1','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn mus 5543" id="lblC5543">
		            <label for='rdC5543'>
		              <input type='radio' value="C" checked="" name="rd5543" id="rdC5543" onclick="checkanswer(5543,'1','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn mus 5543" id="lblD5543">
		            <label for='rdD5543'>
		              <input type='radio' value="D" name="rd5543" id="rdD5543" onclick="checkanswer(5543,'1','D')">
		              &nbsp;&nbsp;D</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="10" class="target"></a>
		          <h4>第  10  题：
		            <p style="text-align:left;">检查员办结航行港澳小型船舶“恒通8”轮及其船员的出境边防检查手续后，应在《航行港澳小型船舶船长报告书》上签名并加盖(　)。</p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">业务专用章</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">行政公章</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">旅客验讫章</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">员工验讫章<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 19617" id="lblA19617">
		            <label for='rdA19617'>
		              <input type='radio' value="A" name="rd19617" id="rdA19617" onclick="checkanswer(19617,'1','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn mus 19617" id="lblB19617">
		            <label for='rdB19617'>
		              <input type='radio' value="B" checked="" name="rd19617" id="rdB19617" onclick="checkanswer(19617,'1','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn mus 19617" id="lblC19617">
		            <label for='rdC19617'>
		              <input type='radio' value="C" name="rd19617" id="rdC19617" onclick="checkanswer(19617,'1','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn mus 19617" id="lblD19617">
		            <label for='rdD19617'>
		              <input type='radio' value="D" name="rd19617" id="rdD19617" onclick="checkanswer(19617,'1','D')">
		              &nbsp;&nbsp;D</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <b class="b1 bb1"></b><b class="b2 bb2"></b><b class="b3 bb2"></b>
		        <div class="bc bb2">
		          <div class="bt bb3 bc-h03"><span><a><img class="png" src="<%=basePath%>./WebContent/images/question_jian.png"></a></span>第二部分：  多选题（每题2.00分,共20.00分）</div>
		        </div>
		        <b class="b3 bb2"></b><b class="b2 bb2"></b><b class="b1 bb1"></b>
		        <div class="m-choicebox"><a name="11" class="target"></a>
		          <h4>第  11  题：
		            <p style="text-align:left;">在出入境证件中，安全线的表现形式有(　)。</p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">阴阳文字安全线</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">缩微文字安全线</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">光变安全线</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">彩色安全线<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 6719" id="lblA6719">
		            <label for='rdA6719'>
		              <input type='checkbox' value="A" name="rd6719" id="rdA6719" onclick="checkanswer(6719,'2','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 6719" id="lblB6719">
		            <label for='rdB6719'>
		              <input type='checkbox' value="B" name="rd6719" id="rdB6719" onclick="checkanswer(6719,'2','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn mus 6719" id="lblC6719">
		            <label for='rdC6719'>
		              <input type='checkbox' value="C" checked="" name="rd6719" id="rdC6719" onclick="checkanswer(6719,'2','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn mus 6719" id="lblD6719">
		            <label for='rdD6719'>
		              <input type='checkbox' value="D" name="rd6719" id="rdD6719" onclick="checkanswer(6719,'2','D')">
		              &nbsp;&nbsp;D</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="12" class="target"></a>
		          <h4>第  12  题：
		            <p style="text-align:left;">计算机病毒具有下列(　)特点？</p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">破坏性</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">潜伏性</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">隐蔽性</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">明显性</div>
		            </li>
		            <li class="question-option-list"><span>E．</span>
		              <div class="option-content">传染性<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 5334" id="lblA5334">
		            <label for='rdA5334'>
		              <input type='checkbox' value="A" name="rd5334" id="rdA5334" onclick="checkanswer(5334,'2','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 5334" id="lblB5334">
		            <label for='rdB5334'>
		              <input type='checkbox' value="B" name="rd5334" id="rdB5334" onclick="checkanswer(5334,'2','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn 5334" id="lblC5334">
		            <label for='rdC5334'>
		              <input type='checkbox' value="C" name="rd5334" id="rdC5334" onclick="checkanswer(5334,'2','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn 5334" id="lblD5334">
		            <label for='rdD5334'>
		              <input type='checkbox' value="D" name="rd5334" id="rdD5334" onclick="checkanswer(5334,'2','D')">
		              &nbsp;&nbsp;D</label>
		            </a><a class="question-btn 5334" id="lblE5334">
		            <label for='rdE5334'>
		              <input type='checkbox' value="E" name="rd5334" id="rdE5334" onclick="checkanswer(5334,'2','E')">
		              &nbsp;&nbsp;E</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="13" class="target"></a>
		          <h4>第  13  题：护照一般由国家主管部门设计和印制，其式样与内容基本上包括(　)</h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">封面</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">发证国声明</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">资料页</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">备注页</div>
		            </li>
		            <li class="question-option-list"><span>E．</span>
		              <div class="option-content">注意事项<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 25533" id="lblA25533">
		            <label for='rdA25533'>
		              <input type='checkbox' value="A" name="rd25533" id="rdA25533" onclick="checkanswer(25533,'2','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 25533" id="lblB25533">
		            <label for='rdB25533'>
		              <input type='checkbox' value="B" name="rd25533" id="rdB25533" onclick="checkanswer(25533,'2','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn 25533" id="lblC25533">
		            <label for='rdC25533'>
		              <input type='checkbox' value="C" name="rd25533" id="rdC25533" onclick="checkanswer(25533,'2','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn 25533" id="lblD25533">
		            <label for='rdD25533'>
		              <input type='checkbox' value="D" name="rd25533" id="rdD25533" onclick="checkanswer(25533,'2','D')">
		              &nbsp;&nbsp;D</label>
		            </a><a class="question-btn 25533" id="lblE25533">
		            <label for='rdE25533'>
		              <input type='checkbox' value="E" name="rd25533" id="rdE25533" onclick="checkanswer(25533,'2','E')">
		              &nbsp;&nbsp;E</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="14" class="target"></a>
		          <h4>第  14  题：
		            <p style="text-align:left;">下列关于“达赖”说法正确的是(　)。</p>
		            <p style="text-indent:-18pt;text-align:left;">·A</p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">逃亡国外的部分西藏上层反动分子拥戴达赖喇嘛，打着宗教旗号，闹起分裂活动</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">部分西方国家利用达赖做政治筹码，妄图利用民族、宗教和人权问题将“西藏问题”国际化。</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">近几年，美国等西方国家将达赖包装成“非暴力主义者”和“人权卫士”。</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">西方反华势力以各种方式明里暗里支持达赖集团从事分裂活动。<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 12204" id="lblA12204">
		            <label for='rdA12204'>
		              <input type='checkbox' value="A" name="rd12204" id="rdA12204" onclick="checkanswer(12204,'2','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 12204" id="lblB12204">
		            <label for='rdB12204'>
		              <input type='checkbox' value="B" name="rd12204" id="rdB12204" onclick="checkanswer(12204,'2','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn 12204" id="lblC12204">
		            <label for='rdC12204'>
		              <input type='checkbox' value="C" name="rd12204" id="rdC12204" onclick="checkanswer(12204,'2','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn 12204" id="lblD12204">
		            <label for='rdD12204'>
		              <input type='checkbox' value="D" name="rd12204" id="rdD12204" onclick="checkanswer(12204,'2','D')">
		              &nbsp;&nbsp;D</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="15" class="target"></a>
		          <h4>第  15  题：
		            <p>出入境边防检查机关办理行政案件时，对违法嫌疑人依法采取(　)等强制措施。</p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">A、保护性约束措施</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">B、口头传唤</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">C、继续盘问</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">D、拘留审查</div>
		            </li>
		            <li class="question-option-list"><span>E．</span>
		              <div class="option-content">E、限制活动范围<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 15530" id="lblA15530">
		            <label for='rdA15530'>
		              <input type='checkbox' value="A" name="rd15530" id="rdA15530" onclick="checkanswer(15530,'2','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 15530" id="lblB15530">
		            <label for='rdB15530'>
		              <input type='checkbox' value="B" name="rd15530" id="rdB15530" onclick="checkanswer(15530,'2','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn 15530" id="lblC15530">
		            <label for='rdC15530'>
		              <input type='checkbox' value="C" name="rd15530" id="rdC15530" onclick="checkanswer(15530,'2','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn 15530" id="lblD15530">
		            <label for='rdD15530'>
		              <input type='checkbox' value="D" name="rd15530" id="rdD15530" onclick="checkanswer(15530,'2','D')">
		              &nbsp;&nbsp;D</label>
		            </a><a class="question-btn 15530" id="lblE15530">
		            <label for='rdE15530'>
		              <input type='checkbox' value="E" name="rd15530" id="rdE15530" onclick="checkanswer(15530,'2','E')">
		              &nbsp;&nbsp;E</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="16" class="target"></a>
		          <h4>第  16  题：
		            <p>科队值班领导在处理确认为是查获在控对象的查控报警事件时，如同行人询问在控对象情况，确认与在控对象为(　)的，可按法律文书所列理由答复</p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">近亲属关系</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">朋友关系</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">同事关系<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 17217" id="lblA17217">
		            <label for='rdA17217'>
		              <input type='checkbox' value="A" name="rd17217" id="rdA17217" onclick="checkanswer(17217,'2','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 17217" id="lblB17217">
		            <label for='rdB17217'>
		              <input type='checkbox' value="B" name="rd17217" id="rdB17217" onclick="checkanswer(17217,'2','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn 17217" id="lblC17217">
		            <label for='rdC17217'>
		              <input type='checkbox' value="C" name="rd17217" id="rdC17217" onclick="checkanswer(17217,'2','C')">
		              &nbsp;&nbsp;C</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="17" class="target"></a>
		          <h4>第  17  题：贯彻新时期边检工作指导方针，必须在全国边检机关中加强(　)建设。</h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">职业文化</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">服务理念</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">职业精神</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">职业理想</div>
		            </li>
		            <li class="question-option-list"><span>E．</span>
		              <div class="option-content">专业素质<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 4844" id="lblA4844">
		            <label for='rdA4844'>
		              <input type='checkbox' value="A" name="rd4844" id="rdA4844" onclick="checkanswer(4844,'2','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 4844" id="lblB4844">
		            <label for='rdB4844'>
		              <input type='checkbox' value="B" name="rd4844" id="rdB4844" onclick="checkanswer(4844,'2','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn 4844" id="lblC4844">
		            <label for='rdC4844'>
		              <input type='checkbox' value="C" name="rd4844" id="rdC4844" onclick="checkanswer(4844,'2','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn 4844" id="lblD4844">
		            <label for='rdD4844'>
		              <input type='checkbox' value="D" name="rd4844" id="rdD4844" onclick="checkanswer(4844,'2','D')">
		              &nbsp;&nbsp;D</label>
		            </a><a class="question-btn 4844" id="lblE4844">
		            <label for='rdE4844'>
		              <input type='checkbox' value="E" name="rd4844" id="rdE4844" onclick="checkanswer(4844,'2','E')">
		              &nbsp;&nbsp;E</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="18" class="target"></a>
		          <h4>第  18  题：
		            <p>在进行人身检查和行李物品检查时，须在已完全控制受检人的条件下进行，严防受检人(　)等行为。</p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">反抗</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">自伤</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">逃逸</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">销毁证据<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 16797" id="lblA16797">
		            <label for='rdA16797'>
		              <input type='checkbox' value="A" name="rd16797" id="rdA16797" onclick="checkanswer(16797,'2','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 16797" id="lblB16797">
		            <label for='rdB16797'>
		              <input type='checkbox' value="B" name="rd16797" id="rdB16797" onclick="checkanswer(16797,'2','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn 16797" id="lblC16797">
		            <label for='rdC16797'>
		              <input type='checkbox' value="C" name="rd16797" id="rdC16797" onclick="checkanswer(16797,'2','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn 16797" id="lblD16797">
		            <label for='rdD16797'>
		              <input type='checkbox' value="D" name="rd16797" id="rdD16797" onclick="checkanswer(16797,'2','D')">
		              &nbsp;&nbsp;D</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="19" class="target"></a>
		          <h4>第  19  题：
		            <p style="text-align:left;">边防检查机关对应当哪种情形下的外国船舶和中国客船按照规定进行监护？(　)</p>
		            <p style="text-indent:-18pt;text-align:left;">·A</p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">出境检查后到出境前</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">入境后到入境检查前</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">检查期间</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">出境后和入境前<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 12677" id="lblA12677">
		            <label for='rdA12677'>
		              <input type='checkbox' value="A" name="rd12677" id="rdA12677" onclick="checkanswer(12677,'2','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 12677" id="lblB12677">
		            <label for='rdB12677'>
		              <input type='checkbox' value="B" name="rd12677" id="rdB12677" onclick="checkanswer(12677,'2','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn 12677" id="lblC12677">
		            <label for='rdC12677'>
		              <input type='checkbox' value="C" name="rd12677" id="rdC12677" onclick="checkanswer(12677,'2','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn 12677" id="lblD12677">
		            <label for='rdD12677'>
		              <input type='checkbox' value="D" name="rd12677" id="rdD12677" onclick="checkanswer(12677,'2','D')">
		              &nbsp;&nbsp;D</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="20" class="target"></a>
		          <h4>第  20  题：
		            <p style="text-align:left;">下列国家位于西亚地区的是(　)。</p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">伊朗</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">泰国</div>
		            </li>
		            <li class="question-option-list"><span>C．</span>
		              <div class="option-content">约旦</div>
		            </li>
		            <li class="question-option-list"><span>D．</span>
		              <div class="option-content">阿拉伯联合酋长国<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 5355" id="lblA5355">
		            <label for='rdA5355'>
		              <input type='checkbox' value="A" name="rd5355" id="rdA5355" onclick="checkanswer(5355,'2','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 5355" id="lblB5355">
		            <label for='rdB5355'>
		              <input type='checkbox' value="B" name="rd5355" id="rdB5355" onclick="checkanswer(5355,'2','B')">
		              &nbsp;&nbsp;B</label>
		            </a><a class="question-btn 5355" id="lblC5355">
		            <label for='rdC5355'>
		              <input type='checkbox' value="C" name="rd5355" id="rdC5355" onclick="checkanswer(5355,'2','C')">
		              &nbsp;&nbsp;C</label>
		            </a><a class="question-btn 5355" id="lblD5355">
		            <label for='rdD5355'>
		              <input type='checkbox' value="D" name="rd5355" id="rdD5355" onclick="checkanswer(5355,'2','D')">
		              &nbsp;&nbsp;D</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <b class="b1 bb1"></b><b class="b2 bb2"></b><b class="b3 bb2"></b>
		        <div class="bc bb2">
		          <div class="bt bb3 bc-h03"><span><a><img class="png" src="<%=basePath%>./WebContent/images/question_jian.png"></a></span>第三部分：  判断题（每题1.00分,共10.00分）</div>
		        </div>
		        <b class="b3 bb2"></b><b class="b2 bb2"></b><b class="b1 bb1"></b>
		        <div class="m-choicebox"><a name="21" class="target"></a>
		          <h4>第  21  题：
		            <p>观察以下两张照片判断是否同一人<img alt="" src="https://www.17sucai.com/edu/tools/upload/201403/07/201403070909166581.jpg"><img alt="" src="https://www.17sucai.com/edu/tools/upload/201403/07/201403070909216033.jpg"> </p>
		            <p></p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">正确</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">错误<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 15485" id="lblA15485">
		            <label for='rdA15485'>
		              <input type='radio' value="A" name="rd15485" id="rdA15485" onclick="checkanswer(15485,'3','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 15485" id="lblB15485">
		            <label for='rdB15485'>
		              <input type='radio' value="B" name="rd15485" id="rdB15485" onclick="checkanswer(15485,'3','B')">
		              &nbsp;&nbsp;B</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="22" class="target"></a>
		          <h4>第  22  题：
		            <p>观察以下两张照片判断是否同一人 <br>
		              <img alt="" src="https://www.17sucai.com/edu/tools/upload/201403/14/201403141632507212.jpg"><img alt="" src="https://www.17sucai.com/edu/tools/upload/201403/14/201403141632575696.jpg"></p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">正确</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">错误<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 23556" id="lblA23556">
		            <label for='rdA23556'>
		              <input type='radio' value="A" name="rd23556" id="rdA23556" onclick="checkanswer(23556,'3','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 23556" id="lblB23556">
		            <label for='rdB23556'>
		              <input type='radio' value="B" name="rd23556" id="rdB23556" onclick="checkanswer(23556,'3','B')">
		              &nbsp;&nbsp;B</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="23" class="target"></a>
		          <h4>第  23  题：
		            <p>下图所示丹麦海员证内页局部放大图，该证件采用机械圆角切割技术。(　) <img alt="" src="https://www.17sucai.com/edu/tools/upload/201403/09/201403091450116173.jpg"> </p>
		            <p></p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">正确</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">错误<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 18983" id="lblA18983">
		            <label for='rdA18983'>
		              <input type='radio' value="A" name="rd18983" id="rdA18983" onclick="checkanswer(18983,'3','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 18983" id="lblB18983">
		            <label for='rdB18983'>
		              <input type='radio' value="B" name="rd18983" id="rdB18983" onclick="checkanswer(18983,'3','B')">
		              &nbsp;&nbsp;B</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="24" class="target"></a>
		          <h4>第  24  题：
		            <p>观察以下两张照片,判断是否同一人</p>
		            <p><img alt="" src="https://www.17sucai.com/edu/tools/upload/201403/08/201403081023351193.jpg"><img alt="" src="https://www.17sucai.com/edu/tools/upload/201403/08/201403081023392066.jpg"></p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">正确</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">错误<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 17296" id="lblA17296">
		            <label for='rdA17296'>
		              <input type='radio' value="A" name="rd17296" id="rdA17296" onclick="checkanswer(17296,'3','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 17296" id="lblB17296">
		            <label for='rdB17296'>
		              <input type='radio' value="B" name="rd17296" id="rdB17296" onclick="checkanswer(17296,'3','B')">
		              &nbsp;&nbsp;B</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="25" class="target"></a>
		          <h4>第  25  题：
		            <p>旅客黄某持有效《香港特别行政区签证身份书》可办理入、出境手续。(　)</p>
		            <p></p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">正确</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">错误<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 6966" id="lblA6966">
		            <label for='rdA6966'>
		              <input type='radio' value="A" name="rd6966" id="rdA6966" onclick="checkanswer(6966,'3','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 6966" id="lblB6966">
		            <label for='rdB6966'>
		              <input type='radio' value="B" name="rd6966" id="rdB6966" onclick="checkanswer(6966,'3','B')">
		              &nbsp;&nbsp;B</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="26" class="target"></a>
		          <h4>第  26  题：
		            <p>下图所示为孟加拉国护照签证页在紫外光下拍摄的荧光反应图片，据此判断，该本护照有伪假嫌疑。(　)<br>
		              <img alt="" src="https://www.17sucai.com/edu/tools/upload/201403/24/201403240926463950.jpg"></p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">正确</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">错误<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 26855" id="lblA26855">
		            <label for='rdA26855'>
		              <input type='radio' value="A" name="rd26855" id="rdA26855" onclick="checkanswer(26855,'3','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 26855" id="lblB26855">
		            <label for='rdB26855'>
		              <input type='radio' value="B" name="rd26855" id="rdB26855" onclick="checkanswer(26855,'3','B')">
		              &nbsp;&nbsp;B</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="27" class="target"></a>
		          <h4>第  27  题：
		            <p>旅客持真实有效的图示类别证件，可免签入境我国。(　)<img alt="" src="https://www.17sucai.com/edu/tools/upload/201403/08/201403081103223558.jpg"> </p>
		            <p></p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">正确</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">错误<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 17491" id="lblA17491">
		            <label for='rdA17491'>
		              <input type='radio' value="A" name="rd17491" id="rdA17491" onclick="checkanswer(17491,'3','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 17491" id="lblB17491">
		            <label for='rdB17491'>
		              <input type='radio' value="B" name="rd17491" id="rdB17491" onclick="checkanswer(17491,'3','B')">
		              &nbsp;&nbsp;B</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="28" class="target"></a>
		          <h4>第  28  题：
		            <p>观察以下两张照片判断是否同一人</p>
		            <p><img alt="" src="https://www.17sucai.com/edu/tools/upload/201403/13/201403130842139324.jpg"><img alt="" src="https://www.17sucai.com/edu/tools/upload/201403/13/201403130842188932.jpg"></p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">正确</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">错误<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 22000" id="lblA22000">
		            <label for='rdA22000'>
		              <input type='radio' value="A" name="rd22000" id="rdA22000" onclick="checkanswer(22000,'3','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 22000" id="lblB22000">
		            <label for='rdB22000'>
		              <input type='radio' value="B" name="rd22000" id="rdB22000" onclick="checkanswer(22000,'3','B')">
		              &nbsp;&nbsp;B</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="29" class="target"></a>
		          <h4>第  29  题：
		            <p style="text-align:left;">在边检工作中，对印章的鉴别主要是指对加盖在出入境证件上的印文和印油的真假鉴别。(　)</p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">正确</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">错误<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 15076" id="lblA15076">
		            <label for='rdA15076'>
		              <input type='radio' value="A" name="rd15076" id="rdA15076" onclick="checkanswer(15076,'3','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 15076" id="lblB15076">
		            <label for='rdB15076'>
		              <input type='radio' value="B" name="rd15076" id="rdB15076" onclick="checkanswer(15076,'3','B')">
		              &nbsp;&nbsp;B</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="30" class="target"></a>
		          <h4>第  30  题：
		            <p style="text-align:left;">URY是乌兹别克斯坦的国家代码。(　)</p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list"><span>A．</span>
		              <div class="option-content">正确</div>
		            </li>
		            <li class="question-option-list"><span>B．</span>
		              <div class="option-content">错误<br>
		              </div>
		            </li>
		          </ul>
		          <div class="m-checkBox single"><a class="question-btn 25600" id="lblA25600">
		            <label for='rdA25600'>
		              <input type='radio' value="A" name="rd25600" id="rdA25600" onclick="checkanswer(25600,'3','A')">
		              &nbsp;&nbsp;A</label>
		            </a><a class="question-btn 25600" id="lblB25600">
		            <label for='rdB25600'>
		              <input type='radio' value="B" name="rd25600" id="rdB25600" onclick="checkanswer(25600,'3','B')">
		              &nbsp;&nbsp;B</label>
		            </a></div>
		        </div>
		        <div class="clearfix"></div>
		        <b class="b1 bb1"></b><b class="b2 bb2"></b><b class="b3 bb2"></b>
		        <div class="bc bb2">
		          <div class="bt bb3 bc-h03"><span><a><img class="png" src="<%=basePath%>./WebContent/images/question_jian.png"></a></span>第四部分：  主观题（每题15.00分,共60.00分）</div>
		        </div>
		        <b class="b3 bb2"></b><b class="b2 bb2"></b><b class="b1 bb1"></b>
		        <div class="m-choicebox"><a name="31" class="target"></a>
		          <h4>第  31  题：
		            <p style="margin-left:28.4pt;">备降航班边检手续办理</p>
		            <p style="text-indent:35.85pt;">2014年10月12日22：15分，Y市国际机场的机场运行控制中心电告Y边检站勤务指挥中心，海南航空公司HU8000（X市—多伦多）航班因机械故障原因，将于23时左右备降在Y市国际机场。随后，海南航空公司工作人员电告，该航班备降后，所有机组及乘客共计245人将由公司安排前往市区内宾馆住宿，次日更换航班出境。假如您是Y市国际机场边检站值班领导，请结合上述执勤事件有关内容回答下列问题。（40分）</p>
		            <p style="text-indent:35.85pt;">1、您所在的Y边检站根据规定注销该备降航班出境手续前，应首先向始发机场X边检站了解哪些信息？</p>
		            <p style="text-indent:35.85pt;">2、始发机场X边检站通报，该航班搭载一名已在始发口岸正常办理了出境手续的被遣送出境人员YAMA（男，尼日利亚籍，1974年7月25日生，因入境后在华长期非法务工被某省公安厅出入境管理总队遣送出境并报列为不准入境人员）。X边检站已凭当事人本人有效护照和某省公安厅出入境管理总队开具的《遣送出境决定书》为其办理了出境边检手续，并协助某省公安厅出入境管理总队监管其登机出境。Y边检站经核查当事人确实持有护照和《遣送出境决定书》。Y边检站应该如何处置该名人员？ </p>
		            <p style="text-indent:35.85pt;">3、请结合上述执勤事件和以上两个问题的处理情况，向Y总站/总队起草一份报告（20分）。</p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list">
		              <div class="option-content">
		                <textarea id="rd73716" name="rd73716" cols="76" onkeyup="MaxMe(this)" style="width:95%;overflow: hidden" rows="6" onchange="checkanswer(73716,'4','')"></textarea>
		                <br>
		              </div>
		            </li>
		          </ul>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="32" class="target"></a>
		          <h4>第  32  题：
		            <p style="margin-left:63.55pt;">枪支弹药入境</p>
		            <p style="text-indent:32pt;">2014年10月12日，德国汉莎航空公司搭载2名德国籍旅客JACK和JERRY入境来华，2名旅客分别托运霰弹猎枪各1只，来X口岸所在X市参加10月20至25日举办的民用安保器材展览会（有近80个国家100多个参展商300余支枪参加展会）。其中，JACK持我国公安部治安管理局开具的批准函件，依法向X边检站进行申报。JERRY未持任何批准函件，也未向X边检站申报，后被X边检站查获。假如您是X边检站值班领导，请结合上述执勤事件有关内容回答下列问题。（40分）</p>
		            <p style="text-indent:32pt;">1、JACK携带枪支入境，边检机关应如何为其办理手续？</p>
		            <p style="text-indent:32pt;">2、JERRY行为应当如何定性？对其进行如何处理？有关处理决定应由哪一级边检机关作出？</p>
		            <p style="text-indent:32pt;">3、根据上述执勤事件内容，起草一份通知，就做好展会枪支入出境工作，加强入出境旅客携带枪支弹药查验作出规定（20分）。</p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list">
		              <div class="option-content">
		                <textarea id="rd73722" name="rd73722" cols="76" onkeyup="MaxMe(this)" style="width:95%;overflow: hidden" rows="6" onchange="checkanswer(73722,'4','')"></textarea>
		                <br>
		              </div>
		            </li>
		          </ul>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="33" class="target"></a>
		          <h4>第  33  题：
		            <p style="margin-left:35.85pt;">内地居民非法出境入境案件处理 </p>
		            <p></p>
		            <p style="text-indent:32pt;">2013年9月份，X边检站连续查获以下案件。分别是：（一）旅客李X威，自2013年1月份以来冒用朋友潘X的往来港澳通行证出境入境共计五次，其于2013年09月08日再次（第五次）冒用该证件出境时被查获。经审查发现，当事人曾于2013年08月26日因冒用潘X的中国普通护照出境被某边检站查获，被处以罚款人民币二仟元整的处罚，并收缴当时所持出入境证件。调研审查部门拟对当事人李X威做出罚款人民币伍仟元并收缴其所持证件的处罚决定。（二）旅客张X持用姓名为张X的中国普通护照出境时，边检机关调取其户籍信息发现其真实身份为武X，该旅客使用自己照片和张X的身份信息办理了护照。（三）旅客王X持本人护照正常出境前往韩国，在韩国机场换持伪造的韩国护照赴美国，后被遣返回国，持伪造韩国护照和有效中国护照。作为X边检站站值班领导，请结合上述执勤事件有关内容回答下列问题。（20分） </p>
		            <p style="text-indent:32pt;">1、李X威是否涉嫌刑事犯罪？为什么？边检机关是否需将此情况通报地方公安机关？ </p>
		            <p style="text-indent:32pt;">2、边检机关是否有权对李X威作出行政处罚？调研部门的处罚建议是否妥当？ </p>
		            <p style="text-indent:32pt;">3、旅客张X涉嫌何种违法行为？ </p>
		            <p style="text-indent:32pt;">4、旅客王X涉嫌何种违法行为？如何处理其所持出入境证件。 </p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list">
		              <div class="option-content">
		                <textarea id="rd73700" name="rd73700" cols="76" onkeyup="MaxMe(this)" style="width:95%;overflow: hidden" rows="6" onchange="checkanswer(73700,'4','')"></textarea>
		                <br>
		              </div>
		            </li>
		          </ul>
		        </div>
		        <div class="clearfix"></div>
		        <div class="m-choicebox"><a name="34" class="target"></a>
		          <h4>第  34  题：
		            <p style="margin-left:56.85pt;">船员在华超过签证停留期</p>
		            <p style="text-indent:35.85pt;">5名外籍船员于2014年3月1日持护照和停留期为7天的中国签证从X市机场入境。其中3名菲律宾船员当日到X边检站申请办理登船手续以登上停靠于某修船厂的马绍尔群岛籍“环球胜利”轮，X边检站检查员在查验相关资料无误后，为他们办理了登船手续。另外2名泰国船员因暂无工作任务决定先到附近城市游玩，直到3月25日才到X边检站申请办理登“环球胜利”轮的手续。3月28日，该轮上1名德国籍船员持护照、《临时入境许可（船员）》和联程机票（X市-法兰克福）申请离船入境，并询问能否下船后先到周边城市游玩再返回X市乘航班直接出境。假如您是X边检站值班领导，请结合上述执勤事件有关内容回答下列问题。（20分）</p>
		            <p style="text-indent:35.85pt;">1、对于申请办理登船手续的2名泰国船员，X边检站能否直接为其办理登船手续？如能，请说明理由，如不能，请说明处理办法。</p>
		            <p style="text-indent:35.85pt;">2、德国籍船员的下船手续能否办理，对其询问应该如何答复？</p>
		            <p style="text-indent:35.85pt;">3、如两名外国船员在船上互殴致其中1人死亡，肇事船员已被船方控制。该边检站能否直接办理该案件？为什么？</p>
		          </h4>
		          <ul class="single">
		            <li class="question-option-list">
		              <div class="option-content">
		                <textarea id="rd73711" name="rd73711" cols="76" onkeyup="MaxMe(this)" style="width:95%;overflow: hidden" rows="6" onchange="checkanswer(73711,'4','')"></textarea>
		                <br>
		              </div>
		            </li>
		          </ul>
		        </div>
		        <div class="clearfix"></div>
		      </div>
		    </div>
		  </div>
		  <input name="txtTimer" type="hidden" id="txtTimer">
		  <input name="totaltime" type="hidden" id="totaltime" value="600">
		  <input name="endtime" type="hidden" id="endtime" value="2015-05-31 16:50:52">
		  <input name="HidhisID" type="hidden" id="HidhisID" value="185">
		</form>
		
		
		
		
		
		
		
		
		
</body>
</html>