<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
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
			.contact{
				width:1400px ;
				height:850px;
				background-color: #F0FFF0;
				margin: 0 auto;
				margin-top: 30px;
			}
			.about{
				float: left;
				margin-left: 50px;
				margin-top: 50px;
			}
			.left{
				width: 300px;
				height: 200px;
				background-color: #E0FFFF;
			}
			.right{
				width: 970px;
				height: 780px;
				background-color: white;
			}
			.ablist li{
				width:300px ;
				height: 40px;
				line-height: 40px;
				font-size: 20px;
				list-style: none;
				text-align: center;
				border-bottom: solid 1px #eee;
				margin-top: 30px;
			}
			.right p{
				text-indent: 2em;
				margin-top: 10px;
				margin-left: 20px;
				margin-right: 20px;
				font-size: 18px;
				font-family:arial;
				
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
	
			
			<div class="contact">
			
				<div class="about left">
					
					<ul class="ablist">
						<li ><a href="contactus.jsp" style="color: #000000;">关于我们</a></li>
						<li ><a href="Econtactus.jsp" style="color: #000000;">About Us</a></li>
					</ul>
				</div>
				
				<div class="about right">
					<p>Tujia.com, officially launched on December 1, 2011, is a global lodging-service sharing and booking platform.</p>

					<p>As a world's leading homestay booking platform in China, Tujia has been devoted to offering guests diversified, superior and distinctive lodging service and also bringing high profits to house owners with their rights and interests guaranteed.</p>
					
					<p>Currently Tujia has expanded its lodging-service network to 345 domestic and 1037 overseas destinations with over1,000,000 online residential houses, including apartments, homestays, villas as well as its derivative traveling services that can cater to various accommodation demands ranging from family tour, business travel, vacation, team building to even short-term transitional renting. Guests can book whatever lodging services they want through PC, smartphone, WeChat or 7x24 service line so that they can experience the local people’s lifestyle and enjoy the convenience and comfort that comes with it. All the residential houses will be carefully and locally examined by Tujia. Besides that, Tujia even invests RMB 10 million to create the Advance Compensation System as the insurance fund to guarantee a carefree lodging experience for every stay. </p>
					
					<p>Tujia welcomes all the homeowners to list their idle houses on this platform, explore the new housing-sharing mode and enjoy the pleasure in the social activity. By virtue of the four major short-term renting service websites including Tujia.com, mayi.com, Ctrip Homestay, and bnbqunar.com, numerous travelers will have access to the houses listed on Tujia platform. Through highly efficient operation, considerate service and user-caring guidance, homeowners can post their renting information for free and earn profits in an easier way. In addition, the owners can also make friends and communicate with different people worldwide. Boasting comprehensive rights protection plan and the operation guidance for house owners, Tujia makes the home sharing a worry-free way to earn money. In 2017, Tujia launched RBA services in order to help the homeowners add value to their idle houses. RBA services provide the homeowners a "one key escrow, easy to earn" excellent steward services.</p>
					
					<p>On October 10 2017, Tujia finished the E round, Tujia online platform business raised 300 million USD, at a valuation of over 1.5 billion USD. On August 3, 2015, Tujia finished the D and D+ round financing. The latest round of financing collected USD 300 million, making the estimated value of Tujia up to USD 1 billion, marking that it has officially become one of the 1 billion valued start-ups. On June 6, 2016, Tujia strategically acquired the mayi.com, further strengthening its dominant position in the sharing economy segment. On October 20, 2016, Tujia announced its strategic acquisition with the homestay and apartment business of Ctrip and Qunar respectively。On January 2018, the homestay reservation matrix was formed, which is consisted of Ctrip Homestay, Qunar Homestay, Tujia.com, Mayi.com, Fishtrip.com that joined Tujia at that time.</p>
					
					<p>As the leading lodging-sharing platform in China, by virtue of its innovative business mode, strong brand appeal and professional operation capability, Tujia has signed contracts with 218 government institutes and reached the strategic collaboration with most of the top 100 real estate enterprises in China, managing the estate valued at over RMB 150 billion and reserving 1000,000 houses.</p>
				</div>
			</div>
			
			<div style="clear: both;"></div>
			
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
				<p><img src="img/地址.png"><span>地址：重庆市巴南区龙洲湾街道尚文大道906号</span></p>
				
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

