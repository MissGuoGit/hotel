<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="../css/comm.css"/>
		
	</head>
	<body>
		<form action="newsadd" method="post">
			<p class="path">酒店管理系统/信息中心/发布信息</p>
			<table border="0" cellspacing="0" cellpadding="0" class="tb">
				<tr>
					<td class="lable">推荐到：</td><td>
					    <select name="typename">
					    	<option value="1">今日通知</option>
					    	<option value="2">周边趣事</option>
					    	<option value="3">餐饮文化</option>
					    </select>
				    </td>
				</tr>
				<tr><td class="lable">标题</td><td><input type="text" name="tbtitle"/></td></tr>
				<tr><td class="lable">作者</td><td><input type="text" name="tbauthor"/></td></tr>
				<tr><td class="lable">来源</td><td><input type="text" name="tbsource"/></td></tr>
				<tr><td class="lable">时间</td><td><input type="text" name="tbctime"/></td></tr>
				<tr><td class="lable">内容</td><td><textarea name="tbcontents"></textarea></td></tr>
				<tr><td class="lable">&nbsp;</td><td><input type="submit" name="btnsave" value="保存" id="btnsave"/></td></tr>
			</table>
			
		</form>
		
	</body>
</html>