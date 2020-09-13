<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String msg =(String)request.getAttribute("msg");
	if(msg==null)
	{
		msg="";
	}
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>登录界面</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <link type="text/css" rel="stylesheet" href="css/login.css">
    <script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<style type="text/css">
	@charset "utf-8";
/* CSS reset */
*{ font-family:"microsoft yahei",simsun,Tahoma,sans-serif;}
body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,textarea,p,blockquote,th,td { margin:0; padding:0; }
fieldset,img {border:0; }
ol,ul {list-style:none; }
h1,h2,h3,h4,h5,h6,button,input,select,textarea {font-size:100%;}
button::-moz-focus-inner,input::-moz-focus-inner{padding:0; border:0;}
table {border-collapse:collapse;border-spacing:0;}
i, cite, em, var, dfn, address {font-style: normal;}
body{ font-size:14px;}
a{color: #313131;text-decoration: none; }
a:hover{text-decoration: underline;}
a:active, a:focus{outline:none}
a[href^="http://tongji.baidu.com"]{display: none;}
.fl{float: left;}
.fr{float: right;}
.clearfix:after { content: "."; display: block; height: 0; clear: both; visibility: hidden; font-size:0;}
.clearfix{zoom:1;clear:both;}
.clear{clear:both; height:0; line-height:0; font-size:0;}
.hidden,.none{display: none;}



/*.w1060{ width:1060px; height:auto; margin:0 auto;}*/
.padding_nei{ /*写padding不撑开*/
	-webkit-box-sizing:border-box;
    -moz-box-sizing:border-box;
    -ms-box-sizing:border-box;
    -o-box-sizing:border-box;
	box-sizing:border-box;
}
.main01 .sousuo div{    
	-webkit-border-radius: 17px;
    -moz-border-radius: 17px;
    -ms-border-radius:17px;
    -o-border-radius:17px; 
	border-radius:17px;	
	}
	
.w1100{ width:1100px; height:auto; margin:0 auto;}
.w1096{ width:1096px; height:auto; margin:0 auto;}

/*注册页面*/
.login_bj{ background:url(../img/bj_zhuce.jpg) no-repeat top center;}
.zhuce_body{ float:left; width:100%; height:auto;}
.zhuce_body .logo{ width:114px; height:54px; margin:53px 0 0 65px;}
.zhuce_body .zhuce_kong{ position:absolute; top:50%; left:50%; width:600px; height:478px; margin-left:-300px; margin-top:-239px;}
.zhuce_body .zhuce_kong .zc{width:600px; height:408px;}
.zhuce_body .zhuce_kong .zc .bj_bai{ float:left; width:314px; height:408px; padding-left:50px; background:#FFF;}
.zhuce_body .zhuce_kong .zc .bj_bai h3{ font:16px/70px "微软雅黑", "黑体"; color:#333333; width:270px; text-align:center;}
.zhuce_body .zhuce_kong .zc .bj_right{ float:left;width:185px; height:408px; padding-left:51px; background:#f8f8f8;}
.zhuce_kong > p{font:16px/70px "微软雅黑", "黑体"; text-align:center; color:#fff;}
.zhuce_body .zhuce_kong .zc .bj_bai .kuang_txt{ width:236px; height:32px; border:1px solid #dddddd; line-height:32px; padding-left:32px; color:#b1a9a9;  margin-bottom:10px; }
.zhuce_body .zhuce_kong .zc .bj_bai .btn_zhuce{ width:270px; height:33px; background:#37b5f9; font-size:14px; line-height:33px; text-align:center; border:0px; color:#fff; border-radius:3px; cursor:pointer;}

.zhuce_body .zhuce_kong .zc .bj_bai .phone{background:url(../img/zc_06.jpg) no-repeat 10px 10px;}
.zhuce_body .zhuce_kong .zc .bj_bai .email{background:url(../img/zc_12.jpg) no-repeat 10px 10px;}
.zhuce_body .zhuce_kong .zc .bj_bai .possword{background:url(../img/zc_16.jpg) no-repeat 10px 10px;}
.zhuce_body .zhuce_kong .zc .bj_bai .yanzm{background:url(../img/zc_19.jpg) no-repeat 10px 10px; margin-bottom:0px;}

.zhuce_body .zhuce_kong .zc .bj_bai .hui_kuang{ float:left; width:97px; height:31px; border:1px solid #dddddd;}
.zhuce_body .zhuce_kong .zc .bj_bai .shuaxin{ float:left; margin:0px 0 0 150px; width:14px; height:14px;}
.zhuce_body .zhuce_kong .zc .bj_bai div{ float:left; width:100%; line-height:43px;}
.zhuce_body .zhuce_kong .zc .bj_bai div input{ float:left; margin-top:15px;}
.zhuce_body .zhuce_kong .zc .bj_bai div span{ padding-left:5px;}
.zhuce_body .zhuce_kong .zc .bj_bai div .lan{ color:#19aaf8; padding-left:0px;}


.zhuce_body .zhuce_kong .zc .bj_right P { width:135px; font:12px/60px ""; color:#999999;}
.zhuce_body .zhuce_kong .zc .bj_right P a{ color:#37b5f9;}
.zhuce_body .zhuce_kong .zc .bj_right > a{ float:left; width:82px; height:28px; padding-left:51px; line-height:28px; margin-bottom:12px; border-radius:3px; }
.zhuce_body .zhuce_kong .zc .bj_right .zhuce_qq{ border:1px solid #37b5f9; color:#37b5f9; background:url(../img/zc_03.jpg) no-repeat 28px 7px #fff;}
.zhuce_body .zhuce_kong .zc .bj_right .zhuce_wb{ border:1px solid #f26d7e; color:#f26d7e; background:url(../img/zc_10.jpg) no-repeat 28px 7px #fff;}
.zhuce_body .zhuce_kong .zc .bj_right .zhuce_wx{ border:1px solid #00c800; color:#00c800; background:url(../img/zc_15.jpg) no-repeat 28px 7px #fff;}

/*登录页面*/
.zhuce_body .login_kuang{ position:absolute; top:50%; left:50%; width:512px; height:325px; margin-left:-256px; margin-top:-162px;}
.zhuce_body .login_kuang .zc{ width:512px; height:auto;}
.zhuce_body .login_kuang .zc .bj_bai{ float:left; width:261px; height:256px; padding-left:38px; background:#FFF;}
.zhuce_body .login_kuang .zc .bj_bai h3{ font:16px/70px "微软雅黑", "黑体"; color:#37b5f9; width:270px; text-align:left;}
.zhuce_body .login_kuang .zc .bj_right{ float:left;width:173px; height:256px; padding-left:37px; background:#f8f8f8;}
.zhuce_body .login_kuang .zc .bj_bai .kuang_txt{ width:220px; height:32px; border:1px solid #dddddd; background:#faffbd; line-height:32px; padding-left:4px; color:#b1a9a9;  margin-bottom:10px; }
.zhuce_body .login_kuang .zc .bj_bai a{ color:#37b5f9; float:right; margin-right:35px;}
.zhuce_body .login_kuang .zc .bj_bai .btn_zhuce{ width:227px; height:33px; background:#37b5f9; font-size:14px; line-height:33px; text-align:center; border:0px; color:#fff; border-radius:3px; cursor:pointer;}
.zhuce_body .login_kuang .zc .bj_bai .btn_zhuce:hover,.login_qita_kuang .zc .left .btn_zhuce:hover{ background:#0065d0;}

</style>
</head>
<body class="login_bj" >
<div class="zhuce_body">
    <div class="zhuce_kong login_kuang">
    	<div class="zc">
        	<div class="bj_bai">
            <h3>登录</h3>
            <p id="msg"  style="color:red"><strong><%=msg%></strong></p>
       	  	<form  method="post" action="login">
       	  	
                <input name="username" type="text" class="kuang_txt" placeholder="账号"  id="username">
                <input name="password" type="text" class="kuang_txt" placeholder="密码" id="password">
                <div>
               		<a href="#">忘记密码？</a><input name="" type="checkbox" value="" checked><span>记住我</span> 
                </div>
                <input  type="submit" class="btn_zhuce" value="登录" id="btnlogin" >
                
                </form>
            </div>
        	<div class="bj_right">
            	<p>使用以下账号直接登录</p>
                <a href="#" class="zhuce_qq">QQ注册</a>
                <a href="#" class="zhuce_wb">微博注册</a>
                <a href="#" class="zhuce_wx">微信注册</a>
                <p>没有账号？<a href="../admin/zhuce.jsp">立即注册</a></p>
            
            </div>
        

</div>
    <script src="../js/jquery-1.11.0.js"></script>
    <script>
        $("#btnlogin").click(function (e) {
            var username = $("#username");
            if (!username.val().length > 0)
            {
                $("#msg").text("请输入用户名");
                username.focus();
                e.preventDefault();
                return false;
            }

            var password = $("#password");
            if (!password.val().length > 0) {
                $("#msg").text("请输入密码");
                password.focus();
                e.preventDefault();
                return false;
            }
            location.href="default.jsp";
        });
    </script>
</body>
</html>