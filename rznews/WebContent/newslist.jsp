<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
List<Map<String, Object>> list= (List<Map<String, Object>>)request.getAttribute("list");
String pagestr=(String)  request.getAttribute("pagestr");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/comm.css"/>
		<link rel="stylesheet" type="text/css" href="css/common1.css"/>
		<link rel="stylesheet" type="text/css" href="css/slide.css"/>
		<style type="text/css">
		.newsbox{
				width: 1400px;
				height: 400px;
				position: relative;
	            }
	            
	      .menu{
	            width: 300px;
			
			float: left;
			margin-top: 10px;
	            }
	  
		.left{
		   padding-left:30px;	
		
			width: 180px;
			
			float: left;
			margin-top: 10px;
		}
		
		.left li a{
		
			border-bottom: solid 1px #eee;
			line-height: 45px;
			height: 45px;
			text-align: center;
			font-size: 17px;
			display: block;
			color: #FF6600;
		}
		
		.left li :hover{
			background-color:mediumpurple;
			color:  white;
		}	
			.rightlist{
				width: 836px;
				float: left;
				border: solid 1px #eee;
				padding: 10px;
			}
			
			.rightlist li{
				position: relative;
				line-height: 35px;
				border-bottom: dashed 1px #eee;
			}
			
			.rightlist li span{
				position: absolute;
				right: 0;
				top: 0;
			}
			
			.rightlist a{
				
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
			<div class="path">
			当前位置 / 酒店留言
		</div>
		<div class="newsbox">
		<div class="menu">
			<div class="left" >
			
			    <div style="text-align: center; heigh line-height: 35px;font-size: 22px; color:red" id="menu">请选择
						<ul id="unplay" style="display: none;">
					       <li ><a href="showlist?typeid=1">今日通知</a></li>
					        <li ><a href="showlist?typeid=2">周边趣事</a></li>	
					        <li ><a href="showlist?typeid=3">餐饮文化</a></li>	
				        </ul>
			    </div>
				
			</div>
		</div>
			<ul class="rightlist">
				<%for(Map<String, Object> m:list) {%>
				<li><a href="uinewsview?id=<%=m.get("id")%>&typeid=<%=m.get("typeid")%>"><%=m.get("title")%></a><span><%=m.get("createtime")%></span></li>
				<%} %>
			</ul>
			
			<div style="clear: both;"></div>
			<div class="pager" style="float:right;width:950px;font-size:14px"><%=pagestr%></div>
		</div>
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
	<script src="js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		
		<script src="js/tyslide.js" type="text/javascript" charset="utf-8"></script>
	<!--尾部<-->

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
	<script src="js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			//此处就可以写我们自己的额js代码
			
			//要找到一个元素  可以 给一个元素取一个id,然后通过$("#id")这种形式找到一个 元素。
			//找到元素之后给它添加对应的事件。mouseenter：鼠标移动上去的时候调用 
			$("#menu").mouseenter(function(){
				$("#unplay").stop(true,true).slideDown();//展开下拉菜单  slideDown和slideUp都是jq库里面封装的代码
			});
			//mouseleave：鼠标离开的 时候调用。  click：鼠标点击元素的时候执行。
			$("#menu").mouseleave(function(){
				
				$("#unplay").stop(true,true).slideUp();//折叠菜单 
				
			});
			
		</script>
	</body>
</html>
           
       
    