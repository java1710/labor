<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/common/import.jsp" %>
<html>
<head>
<script type="text/javascript">
	function toBack(){
			form1.button2.disabled = true;
			form1.action = "<%=request.getContextPath()%>/service/zj/tjhz/dwtjfw_1.jsp";
			form1.submit();
	}
</script>
<title>单位匹配列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #0033CC}
-->
</style>
</head>
<body>
<form name="form1" action="" method="post">
<table width="98%" align="center"   border="0" align="center" cellpadding="0" cellspacing="0">
	<tr> 
  	<td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">当前位置：职业介绍 
    &gt; 推荐服务 &gt; 单位推荐服务</td>
	</tr>
	<tr> 
  	<td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
	</tr>
</table>
<table width="98%" align="center"  border="0" cellpadding="0" cellspacing="0"   class="title">
  <tr>
    <td width="30">
	<table  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td ><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
      </tr>
    </table></td>
    <td  valign="bottom">查询结果&nbsp;&nbsp;&nbsp;提示：[点击单位名称可查看单位详细信息]</td>
  </tr>
</table>
<TABLE width="98%" align="center"  border=1 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class=tablebody>  

		<!-- 页面跳转标志，1代表使用单位编号查询 -->
        <TR> 
          <TD align="center" class="line4">操作</TD>
          <TD align="center" class="line4">单位名称</TD>
          <TD align="center" class="line4">单位地址</TD>
          <TD align="center" class="line4">联系电话</TD>
          <TD align="center" class="line4">登记时间</TD>
        </TR>
        <c:forEach items="${shuju}" var="s">
        	<TR> 
        	  <TD align="center" class="line2"><a href="<%=request.getContextPath()%>/service/zj/tjhz/ServletTJXX.do?farenma=${s[4]}">推荐</a></TD>
        	  <TD align="center" class="line2"><a href="<%=request.getContextPath()%>/service/zj/tjhz/dwtjfw_4xinxi.do?bj=dw&&farenma=${s[4]}">${s[0]}</a></TD>
        	  <TD align="center" class="line2">${s[1]}</TD>
        	  <TD align="center" class="line2">${s[2]}</TD>
        	  <TD align="center" class="line2">${s[3]}</TD>
        	</TR>        
        </c:forEach>
</TABLE>
<br>
<table width="98%" border="0" align="center" cellspacing="0" cellpadding="0">
  <tr> 
     <td class="line2" align="center">
		<input name="button2" type="button"class=BUTTONs3  value="返 回" onClick="toBack()">
	 </td>
  </tr>
</table>
</form>
</body>

</html>
