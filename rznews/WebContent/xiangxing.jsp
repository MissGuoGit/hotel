<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/slide.css"/>
		<link rel="stylesheet" type="text/css" href="css/common2.css"/>
		<link type="text/css" rel="stylesheet" href="css/style.css">
		<style type="text/css">
			
			.text{
				width: 1400px;
				height: 250px;
				margin: 0 auto;
			}
			
			
			.contents{
				width: 1400px;
				
				
				margin: 0 auto;
			}
			.box{
				
				float: left;
				
			/*	background-color: burlywood;*/
				
				/*border: solid 1px #eee;*/
			}
			.ouleft{
				width: 980px;
				height: 1275px;
				background-color: #FFFCEC;
			}
			.ouright{
				width: 400px;
				height: 1275px;
				/*background-color: green;*/
				background-color: #F0FFF0;
				margin-left: 20px;
			}
			.this{
				width: 360px;
				height: 420px;
				
				/*border-bottom: solid 1px #eee;*/
			}
			.thismoney{
				width: 360px;
				height: 50px;
				line-height: 50px;
				/*border-bottom: solid 1px #eee;*/
				font-size: 30px;
				color: orangered;
				text-align:center;
				margin-top: 18px;
			}
			.address{
				width: 398px;
				height:80px;
				line-height: 80px;
				font-size: 25px;
				/*border-bottom: solid 1px #eee;*/
				text-indent: 2em;
			}
			.cheaper{
				width: 360px;
				height: 50px;
				line-height: 50px;
				font-size: 20px;
				/*border-bottom: solid 1px #eee;*/
				text-indent: 2em;
			}
			.comment{
				width: 360px;
				height: 50px;
				line-height: 50px;
				font-size: 25px;
				/*border-bottom: solid 1px #eee;*/
				text-indent: 2em;
			}
			.text{
				width: 200px;
				height: 50px;
				line-height: 50px;
				font-size: 25px;
				text-align: center;
				/*background-color: brown;*/
				margin-left: 40px;
			}
			.time{
				width: 150px;
				height: 50px;
				line-height: 50px;
				border: solid 1px #000000;
				text-align: center;
				/*background-color: #00FFFF;*/
				font-size: 25px;
				
			}
			.booking-btn{
				width: 360px;
				height: 70px;
				text-align: center;
				margin-top: 10px;
			}
			#book{
				border: solid 1px #eee;
				background-color: #FF6600;
				width: 180px;
				height: 55px;
				font-size: 30px;
				color: white;
				border-radius: 5px;
				
			}
			.other{
				width: 398px;
				height: 280px;
				/*border-bottom: solid 1px #eee;*/
				margin-top: 5px;
			
			}
			.other p img{
				margin-left: 38px;
				cursor: pointer;
				transition: all 0.6s;
			}
			.other p img:hover{
				transform: scale(1.2);
			}
			.other p{
				text-align: center;
				font-size: 20px;
				overflow: hidden;
			}
			.othermoney{
				font-size: 20px;
				color: red;
			}
			
			.inbox{
				float: left;
				
			}
			.inleft{
				width: 150px;
				
				/*background-color: red;*/
			}
			.inright{
				width: 830px;
				
				/*background-color: green;*/
			}
			.bicon{
				height: 275px;
				width: 150px;
				
				margin: 40px;
				
			}
			.icontitle{
				font-size: 15px;
				height: 30px;
				line-height: 30px;
				background-color: #eee;
			}
			.sicon{
				width: 830px;
				
				min-height: 150px;
				
			}
			
			.singleicon{
				float: left;
				width: 166px;
				height: 60px;
				line-height: 60px;
				text-align: center;
			}
			
			.blank{
				width: 150px;
				height: 380px;
			}
			.intro {
				height: auto;
				line-height: 35px;
			}
		</style>
	</head>
	<body>
		<!--头部-->
		    
			 <div class="top1">
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
			
	
				<!--//轮播-->
				<section class="pc-banner">
	<div class="swiper-container">
		<div class="swiper-wrapper">
			<div class="swiper-slide swiper-slide-center none-effect">
				<a href="#">
					<img src="img/lunbo3.jpg">
				</a>
				<div class="layer-mask"></div>
			</div>
			<div class="swiper-slide">
				<a href="#">
					<img src="img/lunbo9.jpg">
				</a>
				<div class="layer-mask"></div>
			</div>
			<div class="swiper-slide">
				<a href="#">
					<img src="img/lunbo10.jpg">
				</a>
				<div class="layer-mask"></div>
			</div>
			<div class="swiper-slide">
				<a href="#">
					<img src="img/lunbo4.jpg">
				</a>
				<div class="layer-mask"></div>
			</div>
			<div class="swiper-slide">
				<a href="#">
					<img src="img/lunbo7.jpg">
				</a>
				<div class="layer-mask"></div>
			</div>
		</div>
		<div class="button">
			<div class="swiper-button-prev"></div>
			<div class="swiper-button-next"></div>
		</div>
	</div>
</section>
<script type="text/javascript" src="js/swiper.min.js"></script>
<script type="text/javascript">

	window.onload = function() {
		var swiper = new Swiper('.swiper-container',{
			autoplay: false,
			speed: 1000,
			autoplayDisableOnInteraction: false,
			loop: true,
			centeredSlides: true,
			slidesPerView: 2,
			pagination: '.swiper-pagination',
			paginationClickable: true,
			prevButton: '.swiper-button-prev',
			nextButton: '.swiper-button-next',
			onInit: function(swiper) {
				swiper.slides[2].className = "swiper-slide swiper-slide-active";
			},
			breakpoints: {
				668: {
					slidesPerView: 1,
				}
			}
		});
	}


</script>
				<!--//详情-->
				<div class="contents">
					<!--基础设施-->
					<div class="box ouleft">
						<!--总的概括设施服务-->
						<div class="inbox inleft">
							<p class="bicon"><img src="img/jichusheshi.png"></br>
							<span style="font-size: 25px;margin-left: 0px;">设施服务</span></p>
							<p class="blank"></p>
							<p class="bicon"><img src="img/fangwumiaoshu.png"></br>
							<span style="font-size: 25px;margin-left: 0px;">房屋描述</span></p>
							
						</div>
						<!--列举具体服务-->
						<div class="inbox inright">
						    
							<ul class="sicon">
								<li class="icontitle">基础设施</li>
								<li class="singleicon"><img src="img/WIFI wofi.png">无线网络</li>
								<li class="singleicon"><img src="img/kongtiao.png">部分空调</li>
								<li class="singleicon"><img src="img/dianshi.png">电视</li>
								<li class="singleicon"><img src="img/xiyiji.png">洗衣机</li>
								<li class="singleicon"><img src="img/bingxiang.png">冰箱</li>
								<li class="singleicon"><img src="img/nuanqi.png">暖气</li>
								<li class="singleicon"><img src="img/cuifengji.png">电吹风</li>
								<li class="singleicon"><img src="img/liangyijia.png">晾衣架</li>
								<li class="singleicon"><img src="img/dashaogongju.png">打扫工具</li>
								<li class="singleicon"><img src="img/tuoxie.png">拖鞋</li>
							
							</ul>
							
							<ul class="sicon">
								<li class="icontitle">卫浴设施</li>
								<li class="singleicon"><img src="img/quantianreshui.png">全天热水</li>
								<li class="singleicon"><img src="img/xifashui.png">沐浴洗具</li>
								<li class="singleicon"><img src="img/maojing.png">毛巾</li>
								<li class="singleicon"><img src="img/yashua-01.png">牙具</li>
								<li class="singleicon"><img src="img/yugang.png">浴缸</li>
								<li class="singleicon"><img src="img/weishenzhi.png">卫生纸</li>
								
							</ul>
							
							<ul class="sicon">
								<li class="icontitle">厨房设施</li>
								<li class="singleicon"><img src="img/pengren.png">烹饪锅具</li>
								<li class="singleicon"><img src="img/chanju.png">餐具</li>
								<li class="singleicon"><img src="img/diancilu.png">电磁炉</li>
								<li class="singleicon"><img src="img/dianfanbao.png">电饭煲</li>
								<li class="singleicon"><img src="img/saokaoqiju.png">烧烤器具</li>
								<li class="singleicon"><img src="img/weibolu.png">微波炉</li>
								<li class="singleicon"><img src="img/ranqizhao.png">燃气灶</li>
								
							</ul>
							<ul class="sicon">
								<li class="icontitle">娱乐</li>
								<li class="singleicon"><img src="img/KLOK.png">卡拉OK</li>
								<li class="singleicon"><img src="img/touyinshebei.png">投影设备</li>
								<li class="singleicon"><img src="img/youxiji.png">游戏机</li>
								<li class="singleicon"><img src="img/majiangji.png">麻将机</li>
								<li class="singleicon"><img src="img/feiji.png">飞行棋</li>
								<li class="singleicon"><img src="img/pukepai.png">扑克牌</li>
								<li class="singleicon"><img src="img/zuoqiu.png">桌球</li>
								
							</ul>
							<ul class="sicon">
								<li class="icontitle">特色及其他</li>
								<li class="singleicon"><img src="img/zhinengmengsuo.png">智能门锁</li>
								<li class="singleicon"><img src="img/baoan.png">保安</li>
								<li class="singleicon"><img src="img/menjingxitong.png">门禁系统</li>
								<li class="singleicon"><img src="img/youchuang.png">有窗户</li>
								<li class="singleicon"><img src="img/luodichuang.png">落地窗</li>
								<li class="singleicon"><img src="img/miehuoqi.png">灭火器</li>
								<li class="singleicon"><img src="img/dianti.png">电梯</li>
								
								
								
								
							</ul>
							<p style="border-bottom: dashed 4px #eee;"></p>
							<div class="intro">
								<p>★步行10分钟就可到天府广场、宽窄巷子，20分钟就到春熙路、太古里，去购物、吃饭、看电影、唱K、泡吧，嗨到尽兴。</p>
								<p>★800米就到1、2号线天府广场地铁口，1号线可直达火车北站、火车南站文殊院、新会展中心，2号线可直达春熙路、人民公园、宽窄巷子、成都东客站、犀浦快铁站。</p>
								<p>★公寓楼下就有公交站，步行9分钟到人民南路一段公交站，可以乘坐机场大巴2号线，直达双流国际机场。 </p>
								<p>★房屋有超大落地窗，采光好，视野广，可以俯瞰人民公园，葱郁的树木和恬静的湖水尽收眼底。晚上坐在窗边，一边喝茶一边聊天，欣赏城市繁华夜景。</p>
								<p>★房间里有全自动洗衣机，热辣过瘾的火锅盛宴后可以轻松换洗衣物，保证一身干净舒适。</p>
								<p>周边描述</p>
								<p>购物：春熙路步行街、美美力诚、摩尔百盛、仁和春天、家乐福、王府井； 
									美食：周围就有老妈蹄花、周家抄手、老格蔸川菜馆、陕西会馆、袁记串串香、川味食代等川菜馆，附近还有海凌阁、谭氏官府菜、万里号、银杏金阁等著名餐饮； 
									文化休闲：成都市图书馆、锦城艺术宫、天府广场、人民公园、宽窄巷子、耍都、武侯祠、锦里。</p>
								<p>交通描述</p>
								<p>距离春熙路2公里，约10分钟车程； -距离武侯祠、锦里古街1.6公里，约10分钟车程； -距离双流机场18公里，约40分钟车程；
									步行到人民南路一段公交站，可乘坐机场大巴2号线直达； 
									-距离火车北站5.6公里，经17分钟车程； -距离火车南站8.5公里，约28分钟车程； -距离火车东站11.3公里，约35分钟车程。</p>
					</div>	
								
						</div>
					</div>
					

					
					<!--价格预订-->
					<div class="box ouright">
						
						<div class="this">
						<p class="thismoney">￥998.00</p>
						<p class="address">重庆市巴南区龙洲湾尚文大道</p>
						<p class="cheaper">◆满七天立减10%  ◆满15天立减30%</p>
						<p class="comment">★★★★★评论5984条</p>
						<p><span class="text">入住日期</span>&nbsp;&nbsp;<span class="time">2018-10-28</span></p>
						<p><span class="text">离店日期</span>&nbsp;&nbsp;<span class="time">2018-10-29</span></p>
						<div class="booking-btn"><a href="book.jsp"><input type="submit" id="book" value="立即预定" /></a></div>
					</div>
					<div class="other">
						<p><img src="img/other1.jpg"></p>
						<p>旅途家秋之梦幻温馨双床房</p>
						<p class="othermoney">$699</p>
					</div>
						<div class="other">
						<p><img src="img/other2.jpg"></p>
						<p>旅途家夜之旋律豪华大床房</p>
						<p class="othermoney">$859</p>
					</div>
					<div class="other">
						<p><img src="img/other3.jpg"></p>
						<p>旅途家水城之恋至尊海景房</p>
						<p class="othermoney">$1399</p>
					</div>
					
				</div>
				
				</div>
								
				<div style="clear: both;"></div>				
		
		     <!--//尾部-->
		     
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
