<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #3300FF}
-->
</style>
<script type="text/javascript">


function name (){
	var bip_name = document.getElementById("bip_name");
	bip_name.checked="checked";
	var bio_name = document.getElementById("bio_name");
	bio_name.checked="checked";
}

function nameshowone(){
	
	var bip_namev = document.getElementById("zjgr.bip_name").value;
	if(bip_namev.length==0){
		alert("人员有未回执推荐或以冻结");
		return ;
	}
	
	var bio_namev = document.getElementById("zjdwxx.bio_name").value;
	if(bio_namev.length==0){
		alert("公司回执或以冻结");
		return ;
	}
	
	window.location.href='<%=request.getContextPath()%>/service/zj/tjhz/grtj_yxpp_2.jsp';
}




</script>

</head>
<body onload="name()">
<form action="">
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
        <td  valign="bottom">个人信息&nbsp;&nbsp;&nbsp;提示：[点击姓名查看详细信息]</td>
      </tr>
    </table>
  <tr> 
    <td align="center" > <TABLE width="98%" border=1 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class=tablebody>		  
		  <TBODY>
            <TR> 
              <TD align="center" class="line4">操作</TD>
              <TD align="center" class="line4">姓名</TD>
              <TD align="center" class="line4">性别</TD>
              <TD align="center" class="line4">年龄</TD>
              <TD align="center" class="line4">居住地址</TD>
              <TD align="center" class="line4">联系电话</TD>
              <TD align="center" class="line4">登记日期</TD>
              <TD align="center" class="line4">登记职介</TD>
            </TR>
            <TR> 
              <TD align="center" class="line4"><input  id="bip_name"  type="radio"></TD>
              <TD align="center" class="line4">${zjgr.bip_name}<input  id="zjgr.bip_name" type="hidden" value="${zjgr.bip_name}"></TD>
              <TD align="center" class="line4">${zjgr.bip_sex.cd_name }</TD>
              <TD align="center" class="line4">${zjgr.bip_age }</TD>
              <TD align="center" class="line4">${zjgr.bip_res_address}</TD>
              <TD align="center" class="line4">${zjgr.bip_con_telephone }</TD>
              <TD align="center" class="line4">${zjgr.djsj }</TD>
              <TD align="center" class="line4">登记职介</TD>
            </TR>
      </TABLE>
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
        <td  valign="bottom">单位信息&nbsp;&nbsp;&nbsp;提示：[点击单位名称查看详细信息]</td>
      </tr>
    </table>
      <TABLE width="98%" border=1 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class=tablebody>
          <TBODY>       
            <TR> 
              <TD align="center" class="line4">操作</TD>
              <TD align="center" class="line4">单位名称</TD>
              <TD align="center" class="line4">单位地址</TD>
              <TD align="center" class="line4">联系电话</TD>
              <TD align="center" class="line4">登记时间</TD>
              <TD align="center" class="line4">登记职介</TD>
            </TR>
            <TR> 
              <TD align="center" class="line4"><input id="bio_name" type="radio" ></TD>
              <TD align="center" class="line4">${zjdwxx.bio_name }<input  id="zjdwxx.bio_name" type="hidden" value="${zjdwxx.bio_name}"></TD>
              <TD align="center" class="line4">${zjdwxx.bio_bua_address }</TD>
              <TD align="center" class="line4">${zjdwxx.lxrsj}</TD>
              <TD align="center" class="line4">${zjdwxx.djsj }</TD>
              <TD align="center" class="line4">登记职介</TD> 
            </TR>		
          </TBODY>
        
      </TABLE>
    </td>
  </tr>
</table>
<br>
<table width="98%" align="center" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td align="center"  class="line2"><input name="button2" type="button"class=BUTTONs4  value="推荐匹配" onClick="nameshowone()">
	&nbsp;&nbsp;<input name="button3" type="button"class=BUTTONs3  value="返 回" onClick="toBack();">
	</td>
  </tr>
</table>
</form>
</html>
