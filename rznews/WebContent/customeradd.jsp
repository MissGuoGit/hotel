<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
			<style type="text/css">
			*{
				margin: 0;
				padding: 0;
			}
			
			.hotel tr td{
				list-style: none;
				border: solid 1px #eee;
				height: 30px;
				text-align: left;
				
			}
			
			.hotel tr .right{
				text-align: center;
			}
			
			
		
			.hotel{
				margin: auto;
			}
			
			.title{
				font-size: 30px;
				text-align: center;
			}	
			
			.right{
				width: 100px;
			}	
			
			.hotel tr td span{
				font-size: 18px;
				
			}
			
			#button{
				padding: 0  10px;
				margin-left:10px;
			}
			
			#text{
				height: 20px;
				width: 250px;
			}
			
			#button{
				height: 25px;
				width: 120px;
				
			}
			
		</style>
		
	</head>
	<body>
		<div class="title">房间预订</div>
		<form action="customeradd" method="post">
			
			<table border="0" cellspacing="0" cellpadding="0" class="hotel">
				<tr><td class="right" style="border-right: none;"><span>姓名:</span></td><td style="border-left: none;"><input type="text" name="tbname" id="text"/></td></tr>
				<tr><td class="right" style="border-right: none;"><span>身份证号:<span></span></td><td style="border-left: none;"><input type="text" name="tbidnumber" id="text"/></td></tr>
				<tr><td class="right" style="border-right: none;">
				 <span>房间类型</span></td><td style="border-left: none;">			    
				 <tr><td class="right" style="border-right: none;"><span>入住人数</span></td><td style="border-left: none;"><select name="tbcustomnumber"><option>1人</option><option>2人</option><option>3人及以上</option></select>  </tr>		
				 <tr><td class="right" style="border-right: none;"><span>备注：</span></td><td style="border-left: none;"><textarea rows="10" cols="50" name="remarks"></textarea></tr>
			    <tr><td class="right" style="border-right: none;"></td><td style="border-left: none;"><input type="submit" name="button" id="button" value="预约"><input type="reset" name="button" id="button" value="重新填写"></tr>
			</table>
			
		</form>
		
	</body>
</html>