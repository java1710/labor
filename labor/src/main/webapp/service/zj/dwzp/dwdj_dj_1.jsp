<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>冻结解冻</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script>
	function doSubmit(){
		if(form1.bio_no.value==""&form1.bio_name.value==""){
			alert("请填写至少一项信息！");
			return;
		}
		form1.button1.disabled="true";
		form1.button2.disabled="true";
		form1.action="<%=request.getContextPath()%>/service/zj/dwzp/dwdj_dj.do?flag=selectDwById";
			form1.submit();
	}
	function huitian2(){
		
	var p=document.getElementById("bio_no").value;

	var xhr=new XMLHttpRequest();
		xhr.open("get","<%=request.getContextPath()%>/service/zj/dwzp/dwdj_dj.do?bio_no="+p,true);		
	xhr.onreadystatechange=function(){
		if(xhr.readyState==4){
			var nn=xhr.responseText.split(",");
			if(nn[1]=="w"){
			alert("无此用户");
			}
				document.getElementById("bio_name").value=nn[0];
			
			}
			}
			xhr.send(null);
}
	
</script>
</head>
<body>
<form method="post"  name="form1" action="">
<table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
	  <td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">
				当前位置：职业介绍 &gt; 单位招聘 &gt; 冻结/解冻</td>
	</tr>
	<tr>
	  <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
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
      <td valign="bottom">查询条件&nbsp;&nbsp;&nbsp;提示：[请输入你要冻结解冻的单位的单位法人码或单位名称]</td >
   </tr>
</table>
<TABLE width="98%"  align="center"
border=1 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class=tablebody>
    <TR>
		<TD align="center" class="line2"> 
			<table width="297" border="0" cellspacing="0" cellpadding="0">
	            <tr> 
	               <td width="90" align="right">单位法人码</td>
					<td width="23"  align="right"></td>
	                <td width="160"><input id="bio_no" name="bio_no" type="text" maxlength="64" style='width:100%' onblur="huitian2()"></td>
					<td width="24"  align="right"></td>
	             </tr>
             </table>
        </TD>
     </TR>
     <tr>
		<TD align="center" class="line1"> 
			<table width="297" border="0" cellspacing="0" cellpadding="0">
              	<tr> 
                  <td width="90"  align="right">单位名称</td>
				  <td width="23"  align="right"></td>
                  <td width="160"><input id="bio_name" name="bio_name" type="text" maxlength="64" style='width:100%'></td>
				  <td width="24"  align="right"></td>
                </tr>
            </table>
        </TD>
     </tr>	
</TABLE>
<table width="98%"><tr><td>&nbsp;</td></tr></table>
<table width="98%" border="0" align="center">
  <TR align="center"  class="line2"> 
    <TD>
      <INPUT name="button1" type="button"class="BUTTONs3" value="确 定" onClick="doSubmit()">
      &nbsp;&nbsp;<INPUT class="BUTTONs3" type="reset" value="取 消" name="button2"> 
    </TD>
  </TR>
</table>
</form>
</body>
</html>
