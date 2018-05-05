<%@ page contentType="text/html; charset=UTF-8" import="com.oracle.labor.common.codetable.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<script>
	function AS(){
		var sfzhm=form1.sfzhm.value;
		var name=form1.xm.value;
		var xb=form1.xb.value;
		var age1=form1.nl1.value;
		var age2=form1.nl2.value;
		var xl1=form1.xl1.value;
		var xl2=form1.xl2.value;
		var hyzk=form1.hyzk.value;
		var jkzk=form1.jkzk.value;
		var djrq1=form1.djrq1.value;
		var djrq2=form1.djrq2.value;
		var zzmm =form1.zzmm.value;
		var qzgw =form1.qzgw.value;
		var rylb=form1.rylb.value;
		var hjxz=form1.hjxz.value;
		var cxfw =form1.cxfw.value;
		var flag=false;
		if(sfzhm!=""||name!=""||xb!=""||age1!=""||age2!=""||xl1!=""||xl2!=""
		||hyzk!=""||jkzk!=""||djrq1!=""||djrq2!=""||zzmm!=""||qzgw!=""||rylb!=""||hjxz!=""||cxfw!=""){
		form1.action="<%=request.getContextPath()%>/Ldlsc_Servlet";
        form1.submit();
		}else{
		alert("至少有一个条件不能为空");
		}
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
</head>
<body>

<form  method="post" name="form1">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">
          当前位置：职业介绍 &gt; 个人求职 &gt; 信息查询</td>
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
        <td  valign="bottom">查询条件&nbsp;&nbsp;&nbsp;提示：[默认统计职介为本职介]</td>
      </tr>
    </table>
    </td>
  </tr>
</table>       
<TABLE width="98%" align="center"
	border="0" cellPadding="0" cellSpacing="0" bordercolor="#FFFFFF" class="tablebody">
	<tr>
    <td width="100%" valign="top">		
		<TABLE width="100%" align="center"
			border="0" cellPadding="0" cellSpacing="1" bordercolor="#FFFFFF" class="tablebody">
        <tr class="line2"> 
			<td width="85" align="right" class="line2">身份证号码</td>
			<td colspan="3" align="center" class="line2"><input type="text" name="sfzhm" style="WIDTH: 100%" maxlength="18" ></td>
        </tr>
        <tr class="line1">
        	<td align="right" >姓　　名</td>
			<td align="center" ><input type="text" name="xm"  style="WIDTH: 100%" ></td>
			<td width="55" align="right" >性　　别</td>
			<td align="center" ><select name="xb"  style="WIDTH: 100%">
				<%=SexOperation.getOption()%>
			  </select></td>
        </tr>
        <tr class="line2"> 
			<td align="right" >年　　龄</td>
			<td align="center" ><input type="text" name="nl1" maxlength="2" style="WIDTH: 100%"></td>
			<td width="50" align="center" >到</td>
			<td align="center" ><input type="text" name="nl2" maxlength="2" style="WIDTH: 100%"></td>
        </tr>
        <tr class="line1">
			<td align="right">学　　历</td>
			<td align="center" ><select  name="xl2" style="WIDTH: 100%">
			<%=EducationallevelOperation.getOption()%>
	
			</select></td>
			<td align="center" >到</td>
			<td align="center" ><select  name="xl1" style="WIDTH: 100%">
			<%=EducationallevelOperation.getOption()%>
		
			</select></td>     
        </tr>
        <tr class="line2">
        	<td align="right" class="line2">婚姻状况</td>
			<td align="center" class="line2"><select  name="hyzk" style="WIDTH: 100%">
			<%=MarriageOperation.getOption()%>
				
			</select></td>   
			<td align="right" class="line2">健康状况</td>
			<td align="center" class="line2"><select  name="jkzk" style="WIDTH: 100%">
			<%=HealthstateOperation.getOption()%>
				
			</select></td>
        </tr>
        <tr class="line1"> 
			<td align="right" >登记日期</td>
			<td align="center" ><textarea type="text" name="djrq1"  style='width:110%' class='mask'  htcurl="url(<%=request.getContextPath()%>/common/htc/format.htc)"  rows="1" cols="10" mask='date' maxlength='10' ></textarea>
			<td align="center" >到</td>
			<td align="center"><textarea type="text" name="djrq2"  style='width:110%' class='mask'  htcurl="url(<%=request.getContextPath()%>/common/htc/format.htc)"  rows="1" cols="10" mask='date' maxlength='10' ></textarea></td>
        </tr>
        <tr class="line2"> 
			<td align="right" class="line2">政治面貌</td>
			<td align="center" class="line2"><select  name="zzmm" style="WIDTH: 100%">
			<%=PoliticsaspectOperation.getOption()%>
			
			</select></td>
			<td align="right" class="line2">求职岗位</td>
			<td align="center" class="line2"><select name="qzgw" style="WIDTH: 100%" onclick="">
				<%=ZjdgwlbOperation.getOption()%>				
			</select></td>
        </tr>
        <tr class="line1">
        	<td align="right">人员类别</td>
			<td align="center" ><select  name="rylb" style="WIDTH: 100%">
			<%=PersonneltypeOperation.getOption()%>
		
			</select></td>
			<td align="right" >户籍性质</td>
			<td align="center" ><select  name="hjxz" style="WIDTH: 100%">
			<%=RprtypeOperation.getOption()%>
	
			</select></td>
        </tr>
        <tr class="line2"> 
			<td align="right" class="line2">查询范围</td>
			<td align="center" class="line2"><select name="cxfw" style="WIDTH: 100%">
				<option value="0"> </option>
				<option value="1">当前</option>
				<option value="2">归档</option>
				<option value="3">全部</option>
			</select></td>
			<td align="right" class="line2">&nbsp;</td>
			<td align="center" class="line2">&nbsp;</td>
        </tr>
      </table>
      <table width="100%" 
        border="0" cellPadding="0" cellSpacing="0" bordercolor="#FFFFFF" class="tablebody">
        <tr align="center" class="line1"> 
          <td> <input name="cx" type="submit" class="BUTTONs3" value="查 询" onClick="AS()"> 
            &nbsp;&nbsp;<input name="qk" type="reset" class="BUTTONs3" value="取 消"> </td>
        </tr>
      </table> 
    </td>
  </tr>
</table>
</form>

</body>

</html>
