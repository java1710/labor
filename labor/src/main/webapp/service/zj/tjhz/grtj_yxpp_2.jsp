<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>匹配岗位选择</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

	function name(){
	
	  var zj = document.getElementById("zj.zpgzbm");
	  zj.checked="checked";
	}
</script>
</head>

<body  onload="name()">
<form action="<%=request.getContextPath()%>/service/zj/grqz/InsertGrTjXX.do" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">当前位置：职业介绍


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
            <td><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
          </tr>
        </table></td>
        <td valign="bottom">个人、单位信息&nbsp;&nbsp;&nbsp;提示：[点击单位名称查看单位详细信息，点击姓名查看个人详细信息]</td>
      </tr>
    </table>
  <tr>
    <td align="center" valign="top" style="padding-top:5px">
      <TABLE width="98%" border=0 cellPadding=0 cellSpacing=1 bordercolor="#9DCBEC" class=tablebody>
          <TBODY>
            <TR class="line2">
              <TD width="72">姓&nbsp;&nbsp;&nbsp;&nbsp;名：</td>
			  <td width="199"><a href="javascript:void(null)" style="cursor:hand" onclick="window.open('','','left=100 top=100 width=820,height=469 scrollbars')" >${zjgr.bip_name}</a></td>
			  <td width="183">性别：${zjgr.bip_sex.cd_name }</td>
			  <td width="117">居住地址：</td>
			  <td width="379">${zjgr.bip_res_address}</TD>
            </TR>
            <TR class="line1">
              <TD>单位名称：</td>
			  <td colspan="2"><a href="javascript:void(null)" style="cursor:hand" onclick="window.open('','','left=100 top=100 width=820,height=469 scrollbars')" >${zjdwxx.bio_name }</a></td>
			  <td width="117">单位地址：</td>
			  <td>${zjdwxx.bio_bua_address }</TD>
            </TR>
          </TBODY>
      </TABLE>
      <br>
	   <tr>
    <td align="center" valign="top">
	<table width="98%" border="0" cellpadding="0" cellspacing="0"   class="title">
      <tr>
        <td width="３０">
		<table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td ><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
          </tr>
        </table></td>
        <td  valign="bottom">待推荐岗位信息&nbsp;&nbsp;&nbsp;提示：[<font color='red'>不可选工种为服务次数已满工种,不能进行推荐匹配</font>] </td>
      </tr>
    </table>
      <TABLE width="98%" border=1 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class=tablebody>
          <TBODY>
            <TR>
              <TD align="center" class="line4">操作</TD>
              <TD align="center" class="line4">岗位名称</TD>
              <TD align="center" class="line4">男</TD>
              <TD align="center" class="line4">女</TD>
              <TD align="center" class="line4">年龄</TD>              
              <TD align="center" class="line4">性别不限</TD>
              <TD align="center" class="line4">推荐次数</TD>
              <TD align="center" class="line4">已成功</TD>
              <TD align="center" class="line4">户籍要求</TD>
              <TD align="center" class="line4">登记时间</TD>
            </TR>
            <c:forEach items="${zjdw}" var="d">
            <TR>
              <TD align="center" class="line4"><input id="zj.zpgzbm" type="radio" name="d.zpgzbm" value="${d.zpgzbm}" ></TD>
              <TD align="center" class="line4">${d.zpgzbm}</TD>
              <TD align="center" class="line4">${d.zprsn}</TD>
              <TD align="center" class="line4">${d.zprsnv }</TD>
              <TD align="center" class="line4">${d.zxnl}~${d.zdnl }</TD>              
              <TD align="center" class="line4">${d.xbbx}</TD>
              <TD align="center" class="line4">${d.num}</TD>
              <TD align="center" class="line4">${d.numHz}</TD>
              <TD align="center" class="line4">${d.hjxz}</TD>
              <TD align="center" class="line4">${d.djsj }</TD>
            </TR>
            </c:forEach>
      </TABLE>
    </td>
  </tr>
</table>
<br>
<table width="98%" align="center" border="0" cellspacing="0" cellpadding="0">
	<tr>
	<td align="center"  class="line2"><input name="button2" type="submit" class=BUTTONs3  value="确 定"  >&nbsp;&nbsp;
	    <input name="fh" type="button"class=BUTTONs3 onClick="toBack()" value="返 回"></td>
	</tr>
</table>
</form>
</body>
</html>
