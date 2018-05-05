<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>dwtjfw_tjhmc.jsp</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css"
	rel="stylesheet" type="text/css">
</head>
<body>
	<table align="center" border=0>
		<TR>
			<TD width="7%" align="center" class="line4">序号</TD>
			<TD width="6%" align="center" class="line4">身份证号码</TD>
			<TD width="12%" align="center" class="line4">姓名</TD>
			<TD width="6%" align="center" class="line4">性别</TD>
			<TD width="6%" align="center" class="line4">年龄</TD>
			<TD width="24%" align="center" class="line4">联系电话</TD>
			<TD width="12%" align="center" class="line4">居住地址</TD>
		</TR>
		<c:forEach items="${xinxi}" varStatus="sum" var="s">
			<TR>
			<TD width="7%" align="center" class="line4">${sum.count}</TD>
			<TD width="6%" align="center" class="line4">${s[0]}</TD>
			<TD width="12%" align="center" class="line4">${s[1]}</TD>
			<TD width="6%" align="center" class="line4">${s[2]}</TD>
			<TD width="6%" align="center" class="line4">${s[3]}</TD>
			<TD width="24%" align="center" class="line4">${s[4]}</TD>
			<TD width="12%" align="center" class="line4">${s[5]}</TD>
			</TR>
		</c:forEach>
		<tr>
			<TD align="left" class="line4" colspan="7">
				希望贵单位将与上述求职者洽谈的结果通知本推荐单位。如达成聘用意向，请告知贵单位的单位法人码及聘用人员的身份证号码或姓名，以免我们向其他用人单位继续推荐。

			</TD>
		</tr>
		<tr>
			<TD align="left" class="line4" colspan="7">推荐单位联系地址:&nbsp;&nbsp;${dwdz}</TD>
		</tr>
		<tr>
			<TD align="left" class="line4" colspan="7">联系电话:&nbsp;&nbsp;${lxdh}</TD>
		</tr>
		<tr align="left">
			<TD align="center" class="line2" colspan="7"><input
				type="button" name="button" class="BUTTONs3" value="打印"
				onclick="window.print()"></TD>
		</tr>
	</table>
</body>
</html>
