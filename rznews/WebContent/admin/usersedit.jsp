<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
  	Map<String, Object> objbyid = (Map<String, Object>)request.getAttribute("objbyid");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="../css/comm.css"/>
		
	</head>
	<body>
<form action="usersedit" method="post">
<input type="hidden" name="id" value="<%=objbyid.get("id")%>"/>
用户名<input type="text" name="username" value="<%=objbyid.get("username")%>"/>
密码<input type="password" name="password" value="<%=objbyid.get("password")%>"/>
真实姓名<input type="text" name="truename" value="<%=objbyid.get("truename")%>"/>
<input type="submit" value="保存"/>
</form>
	</body>
</html>
