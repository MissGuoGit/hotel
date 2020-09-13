<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String msg =(String)request.getAttribute("msg");
	if(msg==null)
	{
		msg="";
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
			<link rel="stylesheet" type="text/css" href="css/common2.css"/>
		<link rel="stylesheet" type="text/css" href="css/slide.css"/>
		<style type="text/css">
		*{
			margin: 0;
			padding: 0;
		}
		.book{
			width: 800px;
			height: 800px;
			border: solid 2px #eee;
			margin: 0 auto;
			margin-top: 20px;
		}
		.title{
			font-size: x-large;
			text-align: center;
			height: 60px;
			line-height: 60px;
			background-color: #f0f8ff;
		}
		/*.hotel{
			padding-top: 20px;
		}*/
		#left{
			width: 100px;
			text-align: right;
			padding-right: 20px;
			border-right: solid 1px #e0ffff;
			background-color: #f0f8ff;
		}	
		.right{
			background-color:#f0ffff;
		}
		.hotel tr td{
			padding-top: 10px;
			border-bottom: solid 1px #eee;
		}
		.btnyue{
			background-color: #eee;
			width: 100px;
			height: 30px;
			font-size: 18px;
		}
		</style>
	</head>
	<body>
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
		
		   <form action="book" method="post" class="book">
		   
			<p class="title">房间预订</p>
			 	<p id="msg"><strong><%=msg%></strong></p>
			  <table border="0" cellspacing="0" cellpadding="0" class="hotel" >
				<tr ><td id="left">姓名:</td><td class="right"><input type="text" name="tbname" id="tbname"/><span>*必填</span></span></td></tr>
				<tr ><td id="left">电话号码:</td><td class="right"><input type="text" name="tbidnumber" id="tbidnumber"/><span>*必填</span></td></tr>
				<tr ><td id="left">房间类别：</td><td class="right"><select name="tbroomnumber">
					    <option value="1">商务房</option>
					    	<option value="2">单人间</option>
					    	<option value="3">双人间</option>
					    	<option value="4">总统套房</option>
					    	<option value="5">标间</option>
					    </select><span>*必填</span></td></td></tr>
				<tr ><td id="left">入住人数</td><td class="right"><select name="tbcustomnumber" class="tbroomtype" id="tbcustomnumber"><option>1人</option><option>2人</option><option>3人及以上</option></select> <span>*必填</span> </tr>
				<tr ><td id="left">备注：</td><td class="right"><textarea rows="15" cols="50" name="remarks"></textarea></tr>
				
				<tr><td id="left">酒店提示:</td><td class="right"style="text-indent: 2em;">根据《重庆市公共场所控制吸烟条例》，从2017年3月1日起，酒店不能安排吸烟房，并禁止在酒店室内区域吸烟。
												该酒店的入住时间为14:00，退房标准结算时间为14:00。如提前入住或推迟离店，均须酌情加收一定的费用。
				                            </td></tr>
    			<tr><td id="left">警方提示:(仅对外国人和港澳台居民)</td><td class="right"style="text-indent: 2em;">根据我国法律规定，外国人、港澳台居民应当在抵达住宿地后24小时内办理住宿登记。住宿宾馆的，请在宾馆内办理。住宿宾馆以外地区的，请前往居住地派出所办理。未依法办理住宿登记将承担相应法律责任。
                                                          请随身携带您的出入境证件以备公安机关查验。
					<p>According to the Chinese laws,foreign nationals and residents from Hong Kong,Macao and Taiwan should register their accommodation within 24 hours of arrival.The hotel residents can complete it in the hotel.Those who stay elsewhere should go to the local police station for registration.Failure to comply with the regulations will result in legal liability.
					Please carry your travel document with you for possible examination by the police.</p></td></tr>
					
                <tr><td></td><td><input type="submit" name="button" id="btnyue" class="btnyue" value="预约"><input style="margin-left: 20px;" type="reset"  name="button" id="button" class="btnyue" value="重新填写"></td></tr>
               
			 
			 </table>
		   </form>
		   
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
	 <script src="js/jquery-1.11.0.js"></script>
    <script>
        $("#btnyue").click(function (e) {
            var username = $("#tbname");
            if (!username.val().length > 0)
            {
                $("#msg").text("请输入姓名");
                username.focus();
                e.preventDefault();
                return false;
            }

            var password = $("#tbidnumber");
            if (!password.val().length > 0) {
                $("#msg").text("请输入电话号码");
                password.focus();
                e.preventDefault();
                return false;
            }
            var username = $("#tbroomnumber");
            if (!username.val().length > 0)
            {
                $("#msg").text("请输入房间号");
                username.focus();
                e.preventDefault();
                return false;
            }
            var username = $("#tbcustomnumber");
            if (!username.val().length > 0)
            {
                $("#msg").text("请选择入住人数");
                username.focus();
                e.preventDefault();
                return false;
            }
          
        });
    </script>
</html>
