<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>dwdj_3_updateBase</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script src="<%=request.getContextPath()%>/js/commonjs.js"></script>
<script type="text/javascript" src="js/jquery-1.11.1.min.js">
</script>
<script type="text/javascript">
	$(function(){
    		$.get("dwdj_1.do",{},function(data){
    		alert(data);
    			//$("#dwxz").html(data);
    				
    		});
    	
    	});
</script>

</head>
<body>
<form name="form1" action="" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="20" valign="bottom">
		  h<img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">
		  当前位置：职业介绍 &gt; 单位登记 &gt; 新增单位基本信息</td>
        </tr>
        <tr>
          <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
        </tr>
      </table>
    </td>
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
        <td  valign="bottom">基本信息&nbsp;&nbsp;&nbsp;[提示：单位登记有效期为12天,使用修改功能可以延长有效期12天]</td>
      </tr>
    </table>
  <tr>
    <td align="center" valign="top" > 
      <table width="98%" border="0" cellspacing="0" cellpadding="0" style="display:block">
       
        <tr>
          <td valign="top"><table width="100%" border="0" cellspacing="1" cellpadding="0">
              <tr class="line2">
                <td width="13%" align="right"><span class="redtxt">*</span>单位法人码</td>
                <td width="18%" >
			      <input name="dwfrm" style="WIDTH: 100%" maxlength="32" value="" onblur="window.location.href='<%=request.getContextPath()%>/service/zj/dwzp/dwdj_2.jsp'"></td>
                <td width="13%" align="right" ><span class="redtxt">*</span>单位全称</td>
                <td width="20%" >
               	  <INPUT  name="dwqc"  style="WIDTH: 100%" maxlength="64" value="" onkeyup="copyValue();"></td>
                <td width="14%" align="right" >单位简称</td>
                <td width="20%" >
                  <INPUT  name="dwjc" style="WIDTH: 100%" maxlength="32"  value="" ></td>
              </tr>
              <tr class="line1">
                <td align="right" ><span class="redtxt">*</span>单位性质</td>
                <td width="18%"><select id="dwxz" style="WIDTH: 100%;">
                  
                </select></td>
                <td align="right" ><span class="redtxt">*</span>经济类型</td>
                <td ><select name="dwjjlx" style="WIDTH: 100%">
               
                 
				</select></td>
                <td align="right" ><span class="redtxt">*</span>单位行业</td>
                <td ><select name="dwhy" style="WIDTH: 100%">
				
			
				</select></td>
              </tr>
              <tr class="line2">
				
                <td align="right" >邮政编码</td>
                <td ><INPUT  name="yzbm"  style="WIDTH: 100%" maxlength="32"></td>
                <td align="right" >传真机号</td>
                <td ><input  name="czjh" style="WIDTH: 100%" maxlength="32" value=""></td>
                <td align="right" >Email</td>
                 <td >
				    <INPUT  name="email" style="WIDTH: 100%" maxlength="64" value=""></td>
              </tr>
              <tr class="line1">
                <td align="right" ><span class="redtxt">*</span>注册省(市)</td>
                <td ><select id="dwszs" style="WIDTH: 100%" onchange="initCity()">
   
                	
                </select></td>
                <td align="right" >市(区\县)</td>
                <td id="sqx"><select id="dwszq" style="WIDTH: 100%" onchange="initVillage()">
                </select></td>
                <td align="right" >街(镇\乡)</td>
                <td id="jzx"><select name="dwszj" style="WIDTH: 100%" >
                </select>
                </td>
              </tr>
              <tr class="line2">
                  <td align="right" ><span class="redtxt">*</span>经营地址</td>
                  <td colspan="5">
				    <INPUT  name="lxdz" style="WIDTH: 100%" maxlength="64" value=""></td>
              </tr>

                    </table>
 			</td>
        </tr>
      </table>
		<br>
<TABLE width="100%" border=0 cellPadding=0 cellSpacing=1 class="tablebody" align="center">
  <TR align="center"> 
    <TD class="line2"> <input name="bc" type="button" class="BUTTONs3" value="保 存" onClick="doInsert();">
      &nbsp;&nbsp;
      <INPUT name="fh" type="button" onclick="window.location.href='<%=request.getContextPath() %>/service/zj/dwzp/dwdj_1_querybase.jsp';" class="BUTTONs3" value="返 回"> 
    </TD>
  </TR>
</TABLE>
</td>
</tr>
</table>
</form>
</body>
</html>