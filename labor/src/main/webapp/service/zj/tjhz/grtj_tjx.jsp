<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<html>
<head>
<title>个人推荐信</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
</head>
<body>
<form name="form1" method="post" action="">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td>
<table width="98%" id="heade" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">当前位置：职业介绍 
            &gt; 推荐服务 &gt; 个人推荐服务</td>
        </tr>
        <tr> 
          <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
        </tr>
      </table>    
    </td>
  </tr>
  <tr> 
    <td align="center" valign="top" style="padding-top:5px">
<TABLE width="98%" border=0 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class=tablebody>
          <TBODY>
           <TR> 
              <TD align="center" colspan="3" class="line1 pt16c">&nbsp;</TD>
            </TR>
            <TR>
              <TD align="center" colspan="3" height="25" class="line1 pt16c">${zjgr.bip_name}求职人员推荐介绍信</TD>
            </TR>
            <TR> 
              <TD align="center"  colspan="3" height="25" class="line1">编号：001201212</TD>
            </TR>
            <tr>
            <td align="center"  colspan="3" height="25" class="line1"><b>推荐信有效期：12天(yyyyMMdd)</b></td>
            </tr>
			  <tr class="line1"> 
				<td colspan="3"> 
				  <div align="left">
					<U><br>
					<span class="pt11"></span></U>：</div>
				</td>
			  </tr >
			  <tr class="line1"> 
				<td colspan="3" height="25"><span class="pt11"> &nbsp;&nbsp;&nbsp;&nbsp;现介绍&nbsp;<u class="pt11">${zjgr.bip_name}</u>&nbsp;同志应聘&nbsp;<u class="pt11">${zpgzbm}</U>&nbsp;岗位，请予接洽。</span>
			  <tr class="line1"> 
				<td colspan="3" height="25"><span class="pt11">&nbsp;&nbsp;&nbsp;&nbsp;请用人单位在面试求职人员后，填写下列面试回执单，并交由求职人员带回本中心，以便下次继续为您服务。(提示：当前推荐信为您单位第xx封推荐信) </span></td>
			 
			  <tr class="line1">
			    <td colspan="3" height="25">&nbsp;&nbsp;&nbsp;&nbsp;<span class="pt11">招聘单位地址：<U>${zjdwxx.bio_bua_address }</U></span></td>
		    </tr>
			  <tr class="line1">
                <td width="273" height="25">&nbsp;&nbsp;&nbsp;&nbsp;<span class="pt11">招聘单位联系人：&nbsp;<U>${zjdwxx.dwlxr}</U></span></td>
                <td width="269" height="25"><div id="lxdh"><span class="pt11">招聘单位联系电话：<U>${zjdwxx.lxrsj}</U></span></div></td>
                <td width="207" height="25">&nbsp;</td>
		    </tr>
			  <tr class="line1">
                <td height="25">&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td height="25"><div id="lxdh"><span class="pt11">&nbsp; </span></div></td>
                <td height="25"><span class="pt11">推荐单位盖章：</span></td>
		    </tr>
			  <tr class="line1">
                <td height="25">&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td height="25"><div id="lxdh"><span class="pt11">&nbsp; </span></div></td>
                <td height="25"><span class="pt11"><U><%=Calendar.getInstance().get(Calendar.YEAR)%></U>年<U><%=Calendar.getInstance().get(Calendar.MONTH)%></U>月<U><%=Calendar.getInstance().get(Calendar.DATE)%></U>日</span></td>
		    </tr>
          </TBODY>
      </TABLE>
      <TABLE width="98%" border=0 cellPadding=0 cellSpacing=0 class=tablebody>
          <TBODY>
          	<tr><td colspan="3"><hr color="black" border="1"></td></tr>
            <TR> 
              <TD align="center" colspan="3" class="line1 pt16c">&nbsp;</TD>
            </TR>
            <TR>
              <TD align="center" class="line1 pt16c" colspan="3">${zjgr.bip_name}求职人员推荐信回执</TD>
            </TR>
            <TR> 
              <TD align="center" class="line1" colspan="3">编号：xxxx</TD>
            </TR>
            <tr class="line1"> 
				<td colspan="3" > 
				  <div align="left">
					<br>
					<span class="pt11"><U>xxxx></U>职业介绍服务中心：</span></div>
				</td>
			  </tr>
			  <tr class="line1"> 
				<td colspan="3" height="25">&nbsp;&nbsp;&nbsp;&nbsp;<span class="pt11">你中心<U></U>年<U></U>月<U></U>日推荐来的 <U></U> 同志，经我单位面试考核，符合下列情况，现将结果反馈告知。（“√”）</span>
			<tr class="line1"> 
				<td colspan="3" height="25">&nbsp;&nbsp;&nbsp;&nbsp;<span class="pt11">□ 我单位有意录用（单位招工、劳务派遣企业、社区公益性就业组织、其他。应聘月薪____________元）。</span></td>
			 
		    <tr class="line1">
			    <td colspan="3" height="25">&nbsp;&nbsp;&nbsp;&nbsp;<span class="pt11">□ 我单位无意录用。原因： _______________________________</span></td>
		    </tr>
			  <tr class="line1">
                <td height="25">&nbsp;&nbsp;&nbsp;&nbsp;<span class="pt11">用人单位名称：<U>${zjdwxx.bio_name }</U>　　</span></td>
                <td width="163" height="25"><div id="lxdh"><span class="pt11">&nbsp;</span></div></td>
                <td width="155" height="25">&nbsp;</td>
		    </tr>
			  <tr class="line1">
                <td height="25" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;<span class="pt11">用人单位联系电话：<U>${zjdwxx.lxrsj}</U> </span></td>
		    </tr>
			  <tr class="line1">
                <td height="25">&nbsp;&nbsp;&nbsp;&nbsp;<span class="pt11">联系人：<U>${zjdwxx.dwlxr}</U></span></td>
                <td height="25"><div id="lxdh"><span class="pt11">&nbsp; </span></div></td>
                <td height="25">&nbsp;</td>
		    </tr>
			  <tr class="line1">
                <td height="25">&nbsp;&nbsp;&nbsp;&nbsp;<span class="pt11">________年____月_____日</span></td>
                <td height="25"><div id="lxdh"><span class="pt11">&nbsp;用人单位签章： </span></div></td>
                <td height="25">&nbsp;</td>
		    </tr>
	  		<tr class="line1"> 
				<td colspan="3" height="25"><span class="pt11">职介联系地址：</td>
            </tr>	
			  <tr class="line1">
                <td height="25" colspan="2"><span class="pt11">邮政编码：&nbsp;&nbsp;&nbsp;&nbsp;职介联系电话：</span></td>
                <td height="25"><span class="pt11">服务经办人：</span></td>
		    </tr>     
	  		<tr class="line1"> 
				<td colspan="3" height="25"><span class="pt11">身份证号码：</td>
            </tr>			                        			                       			    
          </TBODY>       
      </TABLE>
      <TABLE width="98%" border=0 cellPadding=0 cellSpacing=0 class=tablebody>
  		<tr><td colspan="2"><hr color="black" border="1"></td></tr>
  		<tr class="line1"> 
			<td rowspan="4" width="50" valign="top"><span class="pt11">注意：</td>
			<td colspan="2"><span class="pt11"><b>推荐信有效期为12天(yyyyMMdd)。</b></td>
        </tr>
		<tr class="line1"> 
			<td><span class="pt11">请求职者在有效期内将回执交回本推荐单位处理。</td>
		</tr>
  		<tr class="line1"> 
			<td><span class="pt11">逾期本推荐单位网络系统将视同求职成功，其个人资料将被自动删除。</td>
        </tr>	
  		<tr class="line1"> 
			<td><span class="pt11">求职者如再求职，需要新办理登记手续。</td>
        </tr>
      </table>      
      </td>
  </tr>
</table>
<br>
<table id="but" width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr class="line2" align="center"> 
  <td> <input name="dy" type="button"class=BUTTONs3  value="打 印" onClick="window.print()">&nbsp;&nbsp;<input name="button5" type="button" class="BUTTONs3"  value="返 回" onClick="backPage()"></td>
</tr>
</table>
 </form>
</body>
</html>
