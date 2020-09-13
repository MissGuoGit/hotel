<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/common1.css"/>
		<link rel="stylesheet" type="text/css" href="css/slide.css"/>
		<style type="text/css">
		 .introduction{
		 	width: 1400px;
		 	height: 250px;
		 	margin-top: 30px;
		 	position: relative;
		 }
		 /*.leftduction{
		 	width: 300px;
		 	height:250px;
		 	background-color: plum;
		 	float: left;
		 }
		 .rightduction{
		 	width: 900px;
		 	height: 250px;
		 	background-color: palegreen;
		 	float: left;
		 	position: absolute;
		 	right: 0;
		 }*/
			
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
			
			<!--简介-->
			<div class="introduction">
				  <img src="img/jianjie.jpg"/>
            </div>
            <div class="introduction">
				  <img src="img/jianjie2.jpg"/>
            </div>
            <div class="introduction">
				  <img src="img/jianjie1.jpg"/>
            </div>
             <div class="introduction">
				  <img src="img/jianjie3.jpg"/>
            </div>
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

	<!--尾部<-->

     	<div class="footer">
			<div class="f1">
				<p><img src="img/tel.png"><span>电话：023-88968651 传真：023-88968650</span></p>
				<p><img src="img/dizhi.png"><span>地址：重庆市巴南区龙洲湾街道尚文大道906号</span></p>
			</div>
			<div class="f2">
				<p id="title">加入我们</p>
				
				<p id="ff2"><img src="img/qq.jpg" width="150" height="150"><img src="img/wechat2.png" width="150" height="150"></p>
			</div>
			<div class="f3">
				<p id="ff1">关于我们</p>
				<p id="ff3"><img src="img/sina.png"><img src="img/wechat.png"><img src="img/qq2.png"></p>
			</div>
		</div>
	</body>
</html>
           
