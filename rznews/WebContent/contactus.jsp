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
				height:750px;
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
				height: 650px;
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
					<p>旅途家，全球公寓民宿预订平台，于2011年12月1日正式上线。</p>

					<p>作为中国领先的民宿短租预定平台，旅途家致力于为客户提供丰富、优质、更个性的出行住宿体验，同时也为房东提供高收益且有保障的闲置房屋分享平台。</p>
					
					<p>旅途家现已覆盖国内345个目的地和海外1037个目的地，在线房源超过100万套，包含民宿、公寓、别墅等住宿产品及延展服务，可满足以“多人、多天、个性化、高覆盖”为特征的出行住宿需求。包括但不限于家庭出游、商务差旅、休闲度假、聚会团建和过渡性住宿等各类需求。用户可通过电脑、手机、微信、7×24小时客服电话等多种渠道轻松预订，即刻体验当地人的生活，同时享受这一新兴住宿方式带来的温馨、舒适和便捷。在服务保障方面，旅途家会对平台房屋执行实地验真，并为房客提供高达1000万元人民币的“安心租”先行赔付保障基金，确保消费者的每一次安心入住。</p>
					
					<p>旅途家欢迎有闲置房屋的房东，来旅途家分享房源探索全新的房屋分享收益模式和分享社交快乐。旅途家凭借旗下途家网、蚂蚁短租、携程民宿、去哪儿民宿、大鱼自助游五大平台的海量用户入口，高效运营及贴心的服务，通过最简便高效的“旅途家管家”，使房东在免费发布房屋信息、轻松赚钱的同时，还可以与来自世界各地的房客相互交流分享。旅途家专业的房东保障计划及经营指导，免去房东们的后顾之忧，使分享赚钱更省心。2017年，为了帮助更多的闲置房源发挥价值，途家创行业之新潮，推出了RBA服务，从上房订价，到布草洗涤，利用智能物联，结合全方位的管家业务，为房东们提供了“一键托管，轻松入账”的卓越服务。</p>
					
					<p>资本市场方面，随着国内分享经济的逐步升温和旅途家预订业务的不断增长。2017年10月08日，旅途家网线上平台完成E轮融资，总估值超过15亿美金。2015年8月3日，旅途家网完成了D及D+轮融资，总估值超10亿美元，正式进入互联网行业的10亿美元“独角兽” 俱乐部。2016年6月6日，旅途家宣布战略并购蚂蚁短租，进一步强化了住宿分享市场的领导企业优势。2016年10月20日，旅途家宣布战略并购携程、去哪儿公寓民宿业务，2018年1月，大鱼自助游加入旅途家，正式形成“携程民宿、去哪儿民宿、旅途家、蚂蚁短租、大鱼自助游的民宿短租入口”五大平台的矩阵，形成新旅途家集团。</p>
					
					<p>作为中国住宿分享的引领者，旅途家凭借创新的商业模式、强大的品牌优势和专业的运营能力，目前已与国内218个政府机构签约，并与TOP100的大部分房地产开发企业达成战略合作，签约管理资产超过1500亿人民币，签约储备房源超100万套。</p>
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

