<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include flush="true" page="/common/alert.jsp"></jsp:include>
<html>
<head>
<title>单位推荐服务</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/j.js"></script>
<script>
	$(function(){
		var a = $("#but_1");
		var b = $("#bio_name");
		var c = $("#bio_no");
		var t = false;
		a.click(function () {
			if($.trim(b.val()) == "" && $.trim(c.val()) == ""){
				alert("信息不全！！！");
				return
			}
			form1.button2.disabled = true;
			form1.button.disabled = true;
			form1.action = "<%=request.getContextPath()%>/service/zj/tjhz/ServletDwtj.do";
			form1.submit();
		});
	});
</script>
</head>
<body>
<form name="form1" action="" method="post">
<table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
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
	<table border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td ><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
      </tr>
    </table></td>
    <td valign="bottom">查询条件&nbsp;&nbsp;&nbsp;提示：[请输入单位法人码或单位名称]</td>
  </tr>
</table>
<TABLE width="98%"  align="center" 
border=1 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class=tablebody>
    <TR> 
      <TD align="center" class="line2"> <table width="250" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="48%" align="right">单位法人码&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td width="50%" align="left"> <input name="bio_no" id="bio_no" type="text" maxlength="32" value=""></td>
          </tr>
        </table></TD>
    </TR>
    <TR> 
      <TD align="center" class="line1"> <table width="250" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="48%" align="right">单位名称&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td width="50%" align="left"> <input name="bio_name" id="bio_name" type="text" maxlength="32" value=""></td>
          </tr>
        </table></TD>
    </TR> 
</TABLE>
<br>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
    <TR align="center" class="line2"> 
      <TD>
        <input name="button2" type="button" id="but_1" class=BUTTONs3 value="确 定" onClick="doSubmit()"> 
        &nbsp;&nbsp;<INPUT class=BUTTONs3  type="reset" value="取 消" name=button> 
      </TD></TR>
</table> 
</form>     
</body>
</html>
