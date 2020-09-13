<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
 Map<String, Object> objbyid = (Map<String, Object>)request.getAttribute("objbyid");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/common2.css"/>
		<link rel="stylesheet" type="text/css" href="css/slide.css"/>
		<style type="text/css">
				.box1
			{
				width: 1400px;
				height: 400px;	
				margin: 0 auto;
				border: solid 1px #eee;
				position: relative;
				
			}
			
			.top ul li{
				text-align: center;
				width: 100px;
			}
</style>
</head>
<body>
<div class="box1">
			 <div class="top">
				   <ul>
						<li id="a">旅途家</li>
						<li id="b">旅途中的家</li>
						<li ><a href="index">首页</a></li>
						<li ><a href="introducation.jsp">酒店简介</a></li>
						<li ><a href="book.jsp">房间预订</a></li>
						<li><a href="showlist?typeid=1">酒店通知</a></li>
						<li><a href="assessadd.jsp">用户评价</a></li>
						<li><a href="contactus.jsp">联系我们</a></li>
				   </ul>	
		     </div>
			
			<!--轮播结构开始-->
			<div class="pptbox" id="ppt01">
				<ul class="innerwrapper">
					<li><a href="#"><img src="img/201807171525094323.jpg"/></a></li>
					<li><a href="#"><img src="img/1.jpg"/></a></li>
					<li><a href="#"><img src="img/8058028a50269a7.jpg"/></a></li>
					<li><a href="#"><img src="img/6.jpg"/></a></li>
				</ul>
				<ul class="controls">
					<li class="current">1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
				</ul>			
				<span class="btnleft"></span>
				<span class="btnright"></span>
			</div>		
			<!--轮播结构结束-->
			
			
				<script src="js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		
		<script src="js/tyslide.js" type="text/javascript" charset="utf-8"></script>
		
		<script type="text/javascript">
		//第五步:调用轮播
		$("#ppt01").tyslide({
			boxh:400,//盒子的高度
			w:1400,//盒子的宽度
			h:400,//图片的高度
			isShow:true,//是否显示控制器
			isShowBtn:true,//是否显示左右按钮
			controltop:15,//控制按钮上下偏移的位置,要将按钮向下移动   首先保证boxh 高度>图片 h
			controlsW:100,//控制按钮宽度
			controlsH:10,//控制按钮高度
			radius:0,//控制按钮圆角度数
			controlsColor:"#ff6600",//普通控制按钮的颜色
			controlsCurrentColor:"white"//当前控制按钮的颜色
		});
	</script>
	<script src="js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		
		<script src="js/tyslide.js" type="text/javascript" charset="utf-8"></script>
	<!--尾部<-->
<div class="rightlist">
				<h3 align="center"><%=objbyid.get("title")%></h3>
				
				<p align="center" class="source"><%=objbyid.get("author")%><%=objbyid.get("source")%><%=objbyid.get("createtime")%></p>
				<div class="content">
					<p>
					<%=objbyid.get("contents")%>
					</p>
					
				</div>
			</div>
			<div style="clear: both;"></div>
     <div class="footer">
			<div class="f1">
				<p><img src="img/tel.png"><span>电话：023-88968651 传真：023-88968650</span></p>
				<p><img src="img/dizhi.png"><span>地址：重庆市巴南区龙洲湾街道尚文大道906号</span></p>
				
			</div>
			<div class="f2">
				<p id="title">加入我们</p>
				<p><a href="login.html" style="color: white;">后台进入</a></p>
				<p id="ff2"><img src="img/qq.jpg" width="150" height="150"><img src="img/wechat2.png" width="150" height="150"></p>
			</div>
			<div class="f3">
				<p id="ff1">关于我们</p>
				<p id="ff3"><img src="img/sina.png"><img src="img/wechat.png"><img src="img/qq2.png"></p>
			</div>
		</div>
</body>
</html>