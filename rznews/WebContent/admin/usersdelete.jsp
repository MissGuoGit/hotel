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

<form action="newsdelete" method="post">
<input type="hidden" name="id" value="<%=objbyid.get("id")%>"/>
主题：<input type="text" name="Title" disabled="disabled"  value="<%=objbyid.get("Title")%>"/>
作者：<input type="text" name="Author" disabled="disabled"  value="<%=objbyid.get("Author")%>"/>
内容：<input type="text" name="Contents" disabled="disabled"  value="<%=objbyid.get("Contents")%>"/>
时间：<input type="text" name="CreateTime" disabled="disabled"  value="<%=objbyid.get("CreateTime")%>"/>
类别：<input type="text" name="Typeld" disabled="disabled"  value="<%=objbyid.get("Typeld")%>"/>
来源：<input type="text" name="Source" disabled="disabled" value="<%=objbyid.get("Source")%>"/>
<input type="submit" value="删除"/>
</form>
	</body>
</html>



