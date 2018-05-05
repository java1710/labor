<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include flush="true" page="/common/alert.jsp"></jsp:include>
<%@ include file="/common/import.jsp" %>
<html>

<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script language="javascript">
function checkeNO(NO){
	var str=NO;
	 //在JavaScript中，正则表达式只能使用"/"开头和结束，不能使用双引号
	var Expression=/^\d{17}[\d|X]|^\d{15}$/; 
	var objExp=new RegExp(Expression);
	if(objExp.test(str)==true){
		return true;
	}else{
		alert("您输入的身份证号码不正确!");
	}
}
</script>
<script language="javascript">
function check(myform){
	if(form1.bip_citizenid.value==""){
		alert("请输入身份证号码!");
		return false;
	}
	if(checkeNO(form1.bip_citizenid.value)){
		return true;
		
	}
	
}
</script>

<script type="text/javascript">
	function huitian1(){
		
	var p=document.getElementById("bip_citizenid").value;

	var xhr=new XMLHttpRequest();
		xhr.open("get","<%=request.getContextPath()%>/service/zj/grqz/grdj_dj.do?bip_citizenid="+p,true);		
	xhr.onreadystatechange=function(){
		if(xhr.readyState==4){
			var nn=xhr.responseText.split(",");
			if(nn[1]=="w"){
			alert("无此用户");
			}	
				document.getElementById("bip_name").value=nn[0];
			
			}
			}
			xhr.send(null);
}
</script>
<script>
	function dosubmit(){
		if(form1.bip_citizenid.value==""&form1.bip_name.value==""){
			alert("请填写至少一项信息！");
			return;
		}
		form1.button.disabled = "true";
		form1.button2.disabled = "true";
		form1.action="<%=request.getContextPath()%>/service/zj/grqz/grdj_dj.do?flag=selectGrByPid";
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
          当前位置：职业介绍 &gt; 个人求职 &gt; 冻结解冻</td>
        </tr>
        <tr>
          <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
        </tr>
    </table></td>
  </tr>
</table>  
<table width="98%" align="center" border="0" cellpadding="0" cellspacing="0"  class="titlehand" >
	<tr > 
		<td width="30"> 
	  	<table  border="0" cellspacing="0" cellpadding="0">
          <TR> 
            <TD ><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></TD>
          </TR>
      	</table>
      </td>    
      <td valign="bottom">查询条件&nbsp;&nbsp;&nbsp;提示：[请输入你要冻结解冻的人员的身份证号码或姓名]</td >
   </tr>
</table>
<TABLE width="98%" 
    border="1" cellPadding="0" cellSpacing="0" bordercolor="#FFFFFF" class="tablebody" align="center">        
    <TR> 
      <TD align="center" class="line2"> <table width="250" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="103">身份证号码</td>
            <td width="194"> <input id="bip_citizenid" name="bip_citizenid" type="text" maxlength="18"  style='width:100%' onblur="if(check(form1))huitian1();"></td>
          </tr>
        </table></TD>
    </TR>
    <TR> 
      <TD align="center" class="line2"> <table width="250" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="103">姓　　　名</td>
            <td width="194"> <input id="bip_name" name="bip_name" type="text" maxlength="18" value="" style='width:100%'></td>
          </tr>
        </table></TD>
    </TR>
 </TABLE>
<table width="98%"><tr><td>&nbsp;</td></tr></table>
<table width="98%" border="0" align="center">
  <TR align="center"  class="line2"> 
    <TD>
      <INPUT name="button" type="button" class="BUTTONs3" value="确 定" onClick="dosubmit()">
   
      &nbsp;&nbsp; <INPUT class="BUTTONs3" type="reset" value="取 消" name="button2">
    </TD>
  </TR>
</table>
</form>
</body>

</html>
