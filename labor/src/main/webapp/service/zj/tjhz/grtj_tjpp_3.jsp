<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/common/import.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>条件匹配单位列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {color: #003366}
-->
</style>
<script>
	function doSubmit(){
		form1.action = "<%=request.getContextPath()%>/service/zj/grqz/GrTjPkDwGw.do";
		form1.submit();
		var radio = form1.radio;
		var flag = false;
		for(var i = 0; i < radio.length; i++){
			if(radio[i].checked == true){
				flag = true;
				break;
			}
		}
		if(!flag){	
	
		}else{
			alert("请勾选单位!");
			return;
		}
		
	}
	function name() {
		var  bio_id = document.getElementById("bio_id");
		bio_id.checked="checked";
	}
</script>
</head>
<body onload="name()">
<form name="form1" action="" method="post">
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
		<table  border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
          </tr>
        </table></td>
        <td  valign="bottom">请选择单位进行推荐服务</td>
      </tr>
    </table>
  <tr> 
    <td align="center" valign="top" style="padding-top:5px">
        <TABLE width="98%" border=1 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class=tablebody>
          <TBODY>
            <TR> 
              <TD align="center" class="line4">操作</TD>
              <TD align="center" class="line4">单位名称</TD>
              <TD align="center" class="line4">单位地址</TD>
              <TD align="center" class="line4">联系电话</TD>
              <TD align="center" class="line4">登记时间</TD>
            </TR>
            <c:forEach items="${zjdwxx}" var="d">
            <TR> 
              <TD align="center" class=line2><input  id="bio_id" value="${d.bio_no}:${d.bio_name}" name="bio_id" type="radio" class="radio" value="<bean:write name='grtjForm' property='bio_id' />" ></TD>
              <TD align="center" class=line1>${d.bio_name}<a href="javascript:void(null)" style="cursor:hand" onclick="window.open('<%=request.getContextPath()%>/ldlsc/tjhz/dwtj.do?method=queryDwByID&bio_id=','dwjbxx','left=100 top=100 width=820,height=469 scrollbars')" ></a></TD>
              <TD align="center" class=line2>${d.bio_bua_address }</TD>
              <TD align="center" class=line2>${d.lxrsj }</TD>
              <TD align="center" class=line1>${d.djsj }</TD>
            </TR>
            </c:forEach>
           </TBODY>
        </TABLE>
      </td>
  </tr>
  <tr>
    <td align="center" style="padding-top:5px" class="line2"><br>
      <table border="0" cellspacing="5" cellpadding="0">
        <tr> 
          <td> <input name="button2" type="button"class=BUTTONs3  value=确定 onClick="doSubmit()"></td>
          <td> <input name="button232" type="button"class=BUTTONs3 onClick="toBack()" value="返 回"></td>
        </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
