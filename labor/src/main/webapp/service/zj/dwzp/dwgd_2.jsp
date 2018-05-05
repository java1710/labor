<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/common/import.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>手动归档列表</title>
<script>
 function guidang(){
     var flag = false;
		var deldata = form1.pkdata;
		if(deldata!=undefined){
			if(deldata.length!=undefined){
				for(var i=0;i<deldata.length;i++){
					if(deldata[i].checked){
						flag = true;
					}
				}
				if(!flag){
					alert("请至少选择一条您要归档的纪录！");
					return;
				}
			}else{
				if(!deldata.checked){
					alert("请至少选择一条您要归档的纪录！");
					return;
				}			
			}
		}else{
			alert("没有能够归档的纪录！");
			return;
		}
		if(window.confirm("您确定要归档吗？")){
			  form1.action="dwgd.do?method=dwgdcr";
			
		       form1.button1.disabled = true;
			   form1.button2.disabled = true; 
			
			 
			   form1.submit();
		}
    
    }
    function backPage(){
               form1.action="<%=request.getContextPath()%>/service/zj/dwzp/dwgd_1.jsp";
		       form1.button1.disabled = true;
			   form1.button2.disabled = true; 
			   form1.submit();
    }
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
</head>
<body>
<form name="form1" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr> 
    <td><table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">
          当前位置：职业介绍 &gt; 单位招聘 &gt; 手动归档</td>
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
        <td  valign="bottom">查询结果列表&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
    </table>
  <tr> 
    <td align="center" valign="top" > 
  
	<TABLE width="98%" border=1 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class="tablebody" id="mytable">
            <TR>
              <TD align="center" class="line4">序号</TD>
              <TD align="center" class="line4" >归档</TD>
              <TD align="center" class="line4" >单位名称 </TD>
              <TD align="center" class="line4" >单位地址 </TD>
              <TD align="center" class="line4" >联系电话 </TD>
              <TD align="center" class="line4" >登记日期 </TD>
            </TR>
           <c:forEach items="${list}" var="list">
              <TR>
              <TD align="center" class="line4">1</TD>
    
              <TD align="center" class="line4" >         
              <INPUT TYPE="checkbox" class="radio" name="pkdata" onclick="" value="${list.zpbh}"></TD>
                        
              <TD align="center" class="line4" >${list.bio_name}</TD>
              <TD align="center" class="line4" >${list.bio_bua_address}</TD>
              <TD align="center" class="line4" >${list.lxrsj}</TD>
              <TD align="center" class="line4" >${list.djsj}</TD>
            </TR>
            </c:forEach>
        </TABLE>
     </td>
  </tr>
</table>
<TABLE width="98%" align="center"
        border=0 cellPadding=0 cellSpacing=1 bordercolor="#9DCBEC" class="tablebody">
  <tr><td>&nbsp;</td></tr>
  <TR align="center"> 
    <TD height=25  class="line2">
     <input name="button1" type="button" class=BUTTONs3  value="确 定" onclick="guidang()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <INPUT name="button2" type="button" class="BUTTONs3" value="返回" onclick="backPage()">
    </TD>
  </TR>
</TABLE>
</form>
</body>


</html>
