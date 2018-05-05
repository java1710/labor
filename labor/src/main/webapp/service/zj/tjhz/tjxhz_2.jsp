<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/j.js"></script>
<script>
    function doSubmit(){
    	var a ;
   		a = $("input:checked").val()
		form1.button22.disabled = true;
		form1.button23.disabled = true;
		form1.action="<%=request.getContextPath()%>/service/zj/tjhz/tjxhz_3.jsp?a=" + a;
		form1.submit();
	
	}
</script>
</head>
<body>
<form name=form1 action="" method=post>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr> 
	  <td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">当前位置：职业介绍 
	    &gt; 推荐服务 &gt; 推荐信回执</td>
	</tr>
	<tr> 
	  <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
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
    <td  valign="bottom">查询结果&nbsp;&nbsp;&nbsp;提示：[点击姓名查看个人详细信息，点击单位名称查看单位详细信息]</td>
  </tr>
</table>
<TABLE width="98%" 
border=1 align="center" cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class=tablebody>
    <TR> 
      <TD align="center" class="line4" >序号</TD>
      <TD align="center" class="line4">选择</TD>
      <TD align="center" class="line4" >姓名</TD>
      <TD align="center" class="line4" > 性别</TD>
      <TD align="center" class="line4" >单位名称</TD>
      <TD align="center" class="line4" >招聘工种</TD>
      <TD align="center" class="line4" >推荐日期</TD>
	  
    </TR>
     <c:forEach var="Tjhz" items="${xxx}" varStatus="ci">
    <TR> 
      <TD align="center" class="line2" >${ci.count}</TD>
      <TD align="center" class="line2"  ><input name="aaa" class="xzz" type="radio" value="${ci.count - 1}"></TD>
      <TD align="center" class="line2"  >${Tjhz[0]}</TD>
      <TD align="center" class="line2" >${Tjhz[1]}</TD>
      <TD align="center" class="line2"  >${Tjhz[2]}</TD>
      <TD align="center" class="line2"  >${Tjhz[3]}</TD>
      <TD align="center" class="line2"  >${Tjhz[4]}</TD>
	  
    </TR>
     </c:forEach>
</TABLE>  
<br>
<TABLE width="98%" 
		border=0 align="center" cellPadding=0 cellSpacing=0 bordercolor="#9DCBEC" class=tablebody>
		<tr class="line1"> 
		  <TD height=20 align="center">		  
			<input name="button22" type="button"class=BUTTONs3  value="确 定"  onclick="doSubmit()">&nbsp;&nbsp;

			<input name="button23" type="button"class=BUTTONs3  value="返 回"  onclick="toBack()">
	</TD></TR>
</TABLE>
</form>
</body>
</html>
