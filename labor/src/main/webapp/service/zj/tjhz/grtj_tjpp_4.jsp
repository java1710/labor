<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>条件匹配岗位选择</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #0033CC}
-->
</style>
<script>
	
	function namees() {
	
		var  zjzpgzbm = document.getElementById("zj.zpgzbm");
		zjzpgzbm.checked="checked";
	}
</script>


</head>

<body onload="namees()">
<form action="<%=request.getContextPath()%>/service/zj/grqz/InsertGrTjXX.do" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="20" valign="bottom">ch<img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">当前位置：职业介绍

            &gt; 推荐服务 &gt; 个人推荐服务</td>
        </tr>
        <tr>
          <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
        </tr>
      </table></td>
  </tr>
   <tr>
    <td align="center" valign="top">
	<table width="98%" border="0" cellpadding="0" cellspacing="0"   class="title">
      <tr>
        <td width="30">
		<table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td ><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
          </tr>
        </table></td>
		

        <td  valign="bottom">单位名称：&nbsp;&nbsp;&nbsp;单位地址：</td>

		<td  valign="bottom">请选择相应的岗位&nbsp;&nbsp;&nbsp;提示:[<font color='red'>不可选单位为该岗位服务次数已满单位,不能进行推荐匹配</font>]</td>

      </tr>
    </table>
  <tr>
    <td align="center" valign="top" >

        <TABLE width="98%" border=1 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class=tablebody>
          <TBODY>

            <TR>
              <TD align="center" class="line4" width="4%">操作</TD>
			  <TD align="center" class="line4" width="24%">单位名称</TD>
              <TD align="center" class="line4" width="20%">岗位名称</TD>
              <TD align="center" class="line4" width="4%">总人数</TD>
              <TD align="center" class="line4" width="4%">男</TD>
              <TD align="center" class="line4" width="4%">女</TD>
			  <TD align="center" class="line4" width="4%">性别不限</TD>
              <TD align="center" class="line4" width="4%">匹配人数</TD>
              <TD align="center" class="line4" width="4%">未回执</TD>
              <TD align="center" class="line4" width="4%">已成功</TD>
              <TD align="center" class="line4" width="12%">登记时间</TD>

            </TR>
          
            <c:forEach  items="${zjdw}" var="d">
			<TR>
              <TD align="center" class="line4" width="4%"><input  id="zj.zpgzbm"  name="d.zpgzbm" value="${d.zpgzbm}" type="radio"/></TD>
			  <TD align="center" class="line4" width="24%"><a>${d.bio_name}</TD>
              <TD align="center" class="line4" width="20%">${d.zpgzbm}</TD>
              <TD align="center" class="line4" width="4%">${d.zrs}</TD>
              <TD align="center" class="line4" width="4%">${d.zprsn}</TD>
              <TD align="center" class="line4" width="4%">${d.zprsnv}</TD>
			  <TD align="center" class="line4" width="4%">${d.xbbx}</TD>
              <TD align="center" class="line4" width="4%">${d.num}</TD>
              <TD align="center" class="line4" width="4%">${d.whz}</TD>
              <TD align="center" class="line4" width="4%">${d.numHz }</TD>
              <TD align="center" class="line4" width="12%">${d.djsj}</TD>

            </TR>
			</c:forEach>
          </TBODY>
        </TABLE>
      </td>
  </tr>
</table>
<br>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center"  class="line2"> 
    <input name="button2322" type="submit" class=BUTTONs3 value="确 定" >&nbsp;&nbsp;
     <input name="button232" type="button"class=BUTTONs3 onClick="toBack()" value="返 回"></td>
    </tr>
</table>
</form>
</body>
</html>
