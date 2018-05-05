
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title>手动归档</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script>
    function chaxun(){
         var sfzhm=form1.sfzhm.value;
         var xm=form1.xm.value;
         var cxkssj=form1.cxkssj.value;
         var cxjssj=form1.cxjssj.value;
         var sfdj=form1.sfdj.value;
         var flag = false ;
         if(cxkssj+cxjssj != ""){
         	if(cxkssj != "" && cxjssj == ""){
	         	alert("登记时间起和登记时间止必须同时不能为空！");
	         	return;
         	
	         }else if(cxjssj != "" && cxkssj == ""){
	         	alert("登记时间起和登记时间止必须同时不能为空！");
	         	return;
	         }else{
	         	flag = true;
	         }
         }else{
         	 
         	 var temp = new Array();
         	 temp[0]=sfzhm;
         	 temp[1]=xm;
         	 temp[2]=sfdj;
	         var length = temp.length;
	         for(var i=0;i<length;i++){
	         	if(temp[i] != ""){
	         	 
	         		flag = true ;
	         	}
	         } 
         }
         
         if(!flag){
         	alert("至少一个查询条件不能为空！");
         	return;
         }
        form1.qd.disabled=true;
        form1.qx.disabled=true;
        form1.action="<%=request.getContextPath()%>/ldlsc_qzgd_Servlet";
        form1.submit();
    }
    function fanhui(){
        form1.qd.disabled=true;
        form1.qx.disabled=true;
        form1.action="<%=request.getContextPath()%>/service/zj/grqz/qzgd_1.jsp";
        form1.submit();
    }
</script>
</head>
<body>
<form method="post" action="" name="form1">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">
          当前位置：职业介绍 &gt; 个人求职 &gt; 手动归档</td>
        </tr>
        <tr>
          <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
        </tr>
      </table>
    </td>
  </tr>
</table>  
<table width="98%" align="center" border="0" cellpadding="0" cellspacing="0"   class="title">
  <tr>
    <td width="30">
		<table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td ><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
          </tr>
        </table>
    </td>
    <td  valign="bottom">查询条件&nbsp;&nbsp;&nbsp;</td>
  </tr>
</table>
<TABLE width="98%" align="center" border=0 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class=tablebody> 
    <TR> 
      <TD align="center" class="line2"> <table width="250" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="103">身份证号码</td>
            <td width="194"><input name="sfzhm" type="text" maxlength="18"  style='width:100%' ></td>
          </tr>
        </table></TD>
    </TR>
    <TR> 
      <TD align="center" class="line1"> <table width="250" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="103">姓　　　名</td>
            <td width="194"> <input name="xm" type="text" maxlength="32"  style='width:100%' ></td>
          </tr>
        </table></TD>
    </TR>
    <TR> 
      <TD align="center" class="line2"> <table width="250" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="103">登记时间起</td>
            <td width="194" > <textarea name="cxkssj"  style='width:100%' class='mask'  htcurl="url(<%=request.getContextPath() %>/common/htc/format.htc)"  rows="1" cols="10" mask='date' maxlength='10' ></textarea></td>
          </tr>
        </table></TD>
    </TR>
    <TR> 
      <TD align="center" class="line1"> <table width="250" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="103">登记时间止</td>
            <td width="194"> <textarea name="cxjssj"  style='width:100%' class='mask'  htcurl="url(<%=request.getContextPath() %>/common/htc/format.htc)"  rows="1" cols="10" mask='date' maxlength='10' ></textarea></td>
          </tr>
        </table></TD>
    </TR>
  
    <TR align="center"> 
      <TD height=25 class="line1"><table width="250" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="103">是否冻结</td>
            <td width="194"><select name="sfdj"  style='width:100%' >
				<option value="">请选择</option>
                <option value="1">冻结</option>
				<option value="2">正常</option>
              </select> </td>
          </tr>
        </table></TD>
    </TR>
</TABLE>
<br>
<table width="98%" align="center" border=0 cellPadding=0 cellSpacing=0>
	<TR align="center" class="line2"> 
      <TD>
        <INPUT name="qd" type="button" class="BUTTONs3" value="确 定" onClick="chaxun()"> 
        &nbsp;&nbsp; <INPUT name="qx" class="BUTTONs3" type="button" value="取 消" onClick="fanhui()">
      </TD>
    </TR>
</table>
</form>
</body>
</html>
