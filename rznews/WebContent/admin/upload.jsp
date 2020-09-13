<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/comm.css" />
</head>
<body>
<form action="UploadHandleServlet" enctype="multipart/form-data" method="post">
			<p class="path">酒店管理/增加房间</p>
		<table border="0" cellspacing="0" cellpadding="0" class="tb">
				<tr>
					<td class="lable">房间类别</td><td>
					    <select name="tbroomtype">
					    	<option value="1">商务房</option>
					    	<option value="2">单人间</option>
					    	<option value="3">双人间</option>
					    	<option value="4">总统套房</option>
					    	<option value="5">标间</option>
					    </select>
				    </td>
				</tr>
				<tr><td class="lable" >房间号</td><td ><input type="text" name="tbroomnuber"  style="width: 80px;"/></td></tr>
				<tr><td class="lable">房间价格</td><td><input type="text" name="tbroomprice"  style="width: 80px;"/></td></tr>
				<tr><td class="lable">房间名字</td><td><input type="text" name="tbroomname"  style="width: 80px;"/></td></tr>
				<tr><td class="lable">上传图片</td><td><input type="file" name="file"></td><br/>
					<tr>
					<td class="lable">准备推荐到</td><td>
					    <select name="typeid">
					    	<option value="1">今日特惠</option>
					    	<option value="2">优质公寓</option>
					    	<option value="3">智能名宿</option>
					    	
					    </select>
				    </td>
				</tr>
				<tr><td class="lable">&nbsp;</td><td><input type="submit" name="btnsave" value="增加" id="btnsave"/></td></tr>
			</table>
			</form>
</body>
</html>