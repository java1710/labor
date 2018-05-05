<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center" width="90%">
		<tr>
			<td>序号</td>
			<td>书名</td>
			<td>价格</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${pageInfo.list }" var="b" varStatus="state">
			<tr>
				<td>${state.count +(pageInfo.pageNum-1)*pageInfo.pageSize}</td>
				<td>${b.userName }</td>
				<td>${b.userloginname }</td>
				<td>假装有修改</td>
			</tr>
		</c:forEach>
	</table>
	<br/>
	<div align="center">总页数:${pageInfo.pages },总记录数${pageInfo.total},当前页号${pageInfo.pageNum },第页记录数：${pageInfo.pageSize }</div>
	
	<div align="center"><a href="${pageInfo.firstPage}">首页</a>|<a href="${pageInfo.prePage}">上一页</a>|<a href="${pageInfo.nextPage}">下一页</a><a href="${pageInfo.lastPage}">尾页</a></div>
	<input type="button" value="添加 新帐号" onclick="javascript:location.href='../user.jsp'"/>
</body>
</html>