<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String flag = (String)request.getAttribute("flag");
	if(flag == "0"){
		out.print("<script>alert('数据查询失败!')</script>");
	}
%>
<html>
<head>
<title>失败了-_-</title>
<script>
setTimeout("self.close();",1000)
</script>
</head>
<body  topmargin="0">
<table width="255" height="200" border="0" align="center">
<tr>
<td valign="top"><img src="<%=request.getContextPath() %>/styles/images/error/czsb.jpg" width="255" height="200"></td>
</tr>
</table>
</body>
</html>
