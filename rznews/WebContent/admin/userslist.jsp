<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<%
List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("list");
String pagestr = (String)request.getAttribute("pagestr");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/comm.css" />
</head>
<body>
<p class="path">酒店信息系统/用户管理/用户列表</p>
<table border="0" cellspacing="0" cellpadding="0" class="tb tblis">
 <tr><td style="width:50px;">ID</td><tdstyle="width:300px;">用户名</td><tdstyle="width:300px;">密码</td><td style="width:300px;">真实姓名</td><td>操作</td></tr>
  <%for (Map<String, Object> m : list) { %>
  <tr>
      		<td><%=m.get("id")%></td>
      		<td><%=m.get("username")%></td>
      		<td><%=m.get("password")%></td>
      		<td><%=m.get("truename")%></td>
      		<td><a href="usersedit?id=<%=m.get("id")%>">修改</a> <a href="usersdelete?id=<%=m.get("id")%>">删除</a></td>
  </tr>
  <%}%>
</table>
</body>
</html>
