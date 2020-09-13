<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.regex.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="../css/comm.css"/>
	</head>
<body>
<%
List<Map<String, Object>> list = (List<Map<String, Object>>)request.getAttribute("list");
String pagestr = (String)request.getAttribute("pagestr");
%>
<p class="path">酒店管理系统/客户信息</p>

<table border="0" cellspacing="0" cellpadding="0" class="tb tblis">
       <tr>
       	 <td style="width:10px;">ID</td><td style="width:80px;">房间类别</td><td style="width:80px;">姓名：</td><td style="width:80px;">电话号码</td><td style="width:80px;">入住人数 </td><td style="width:80px;">备注</td><td style="width:80px;">操作</td>   
       </tr>
       <% for(Map<String, Object> m:list){ %>
        <tr>
       		<td><%=m.get("id")%></td>
       		<td data-typeid="<%=m.get("tbroomnumber")%>" class="typename"></td>
       		<td><%=m.get("tbname")%></td>
       		<td><%=m.get("tbidnumber")%></td>
       		<td><%=m.get("tbcustomnumber")%></td>
       		<td><%=m.get("remarks")%></td>
       		<td><a href="customerdelete?id=<%=m.get("id")%>">>删除</a></td>
       </tr>
    	<% } %>
    </table>
    
    <div class="pager">
       		<%=pagestr%>
    </div>
     <script src="../js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
    	$("td.typename").each(function(index,item){
    		var tbroomtype=$(item).attr("data-typeid");
    		//console.log(typeid);
    		switch(tbroomtype)
    		{
    			case "1":$(item).text("商务房"); break;
    			case "2":$(item).text("单人间"); break;
    			case "3":$(item).text("双人间"); break;
    			case "4":$(item).text("总统套房"); break;
    			case "5":$(item).text("标间"); break;
    		}
    	});
    </script>
</body>
</html>