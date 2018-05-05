<%@ page contentType="text/html; charset=UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
</head>
<% List<Map<String, Object>>list =(List<Map<String,Object>>)request.getAttribute("list");%>
<body>
<form method="post" name="form1">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">
          当前位置：职业介绍 &gt; 个人求职 &gt; 信息查询</td>
        </tr>
        <tr>
          <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
        </tr>
      </table></td>
  </tr>
</table>  
<table width="98%" align="center" border="0" cellpadding="0" cellspacing="0"   class="title">
  <tr>
    <td width="30">
	<table border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
      </tr>
    </table></td>
    <td  valign="bottom">查询结果&nbsp;&nbsp;&nbsp;提示：[共有xx条记录，点击姓名可查看详细信息，点击推荐可对该人员进行推荐]</td>
  </tr>
</table>
<table width="98%" align="center" border=1 cellpadding=0 cellspacing=0 bordercolor="#FFFFFF" class=tablebody>
  <tr>
    <td width="30" align="center" class="line4">序号</td>
    <td width="50" align="center" class="line4">姓名</td>
    <td width="30" align="center" class="line4">性别</td>
    <td width="30" align="center" class="line4">年龄</td>
    <td width="80" align="center" class="line4">联系电话</td>
    <td width="70" align="center" class="line4">登记日期</td>
    <td width="110" align="center" class="line4">登记职介</td>
    <td width="60" align="center" class="line4">归档日期</td>
  </tr>
  <c:forEach var="b" varStatus="a" items="${list}">
  <tr align="center" class=line2>
    <td>${a.count}</td>
    <td>${b.bip_name}<a href="javascript:void(null)" style="cursor:hand" onclick="window.open('<%=request.getContextPath()%>/service/zj/grqzgl/xxIndex.jsp?grbh=','','left=100 top=100 width=820,height=469 scrollbars')" ></a></td>
    <td>${b.bip_sex}</td>
    <td>${b.bip_age}</td>
    <td>${b.bip_con_contacttel}</td>
    <td>${b.djsj}</td>
    <td>无</td>
    <td>${b.gdsj}</td>
  </tr>
  </c:forEach>
</table>
<table width="98%" align="center" border="0" cellspacing="1" cellpadding="0">
  <tr class="line2" align="center">
    <td><input name="dy" type="button" class="BUTTONs3"  value="打 印" onclick="doPrint()">&nbsp;&nbsp;
    <input name="fh" type="button" class="BUTTONs3"  value="返 回" onClick="window.location.href='<%=request.getContextPath() %>/service/zj/grqz/xxcx_1.jsp'"></td>
  </tr>
</table>
</form>
</body>
</html>
