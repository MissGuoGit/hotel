<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>新增用户</title>

<link rel="stylesheet" type="text/css" href="../css/comm.css" />
</head>
<body>
<form action="usersadd" method="post">
<table  class="">
<tr><td>用户名:</td><td><input type="text" name="username"/></td></tr>
<tr><td>密码：</td><td><input type="password" name="password"/></td></tr>
<tr><td>真实姓名：</td><td><input type="text" name="truename"/></td></tr>
<tr><td>&nbsp;</td><td><input type="submit" value="新增"/></td></tr>
</table>
</form>
</body>
</html>