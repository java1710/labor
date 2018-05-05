<%@ page contentType="text/html; charset=UTF-8" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>手动归档</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script>
 function delete1(){
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
			   form1.action="<%=request.getContextPath()%>/ldlsc_qzgd_gd";
		       form1.button2.disabled = true;
			   form1.button22.disabled = true; 
			  
			   form1.submit();
		}
    
    }
     function fanhui(){
        form1.button2.disabled = true;
	    form1.button22.disabled = true; 
        form1.action="<%=request.getContextPath()%>/service/zj/grqz/qzgd_1.jsp";
        form1.submit();
    }
</script>
</head>
<%List<Map<String, Object>>list =(List<Map<String,Object>>)request.getAttribute("list");%>
<body>
<form method="post" action="" name="form1">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">
          当前位置：职业介绍 &gt; 个人求职 &gt; 手动归档<a href="../../ldlgl/syrygl/zyjs/dj_a.htm"></a></td>
        </tr>
        <tr>
          <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
        </tr>
      </table></td>
  </tr>
</table>  
<table width="98%" align="center" border="0" cellpadding="0" cellspacing="0"   class="title">
  <tr>
    <td width="38">
	<table width="30" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
      </tr>
    </table></td>
    <td  valign="bottom">查询结果&nbsp;&nbsp;&nbsp;</td>
  </tr>
</table>
<form name="form1" method="post">
<TABLE width="98%" align="center" border=1 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class=tablebody>    
        <TR class="line4" align="center"> 
          <TD width="6%">序号</TD>
          <TD width="6%">归档</TD>
          <TD width="11%">姓名</TD>
          <TD width="6%">性别</TD>
          <TD width="6%">年龄</TD>
          <TD width="13%">居住地址</TD>
          <TD width="14%">联系电话</TD>
          <TD width="23%">登记日期</TD>
        </TR>
        <c:forEach var="b" varStatus="a" items="${list}">
     <TR class="line4" align="center" > 
          <TD width="6%">${a.count}</TD>
          <TD width="6%"><INPUT TYPE="checkbox" class="radio" name="pkdata" onclick="" value="${b.qzbh}">${b.qzbh}</TD>
          <TD width="11%">${b.bip_name}</TD>
           <TD width="6%">${b.bip_sex}</TD>
          <TD width="6%">${b.bip_age}</TD>
          <TD width="13%" >${b.bip_res_address}</TD>
          <TD width="14%">${b.bip_con_contacttel}</TD>
          <TD width="23%">${b.djsj}</TD>  
        </TR> 
       	</c:forEach>
        <TR> 
          <TD height=25 colspan="9" align="center"><br>

        <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
          <tr align="center" class="line2" > 
            <td> 
              <input name="button2" type="button" class=BUTTONs3  value="确 定" onclick="delete1()">&nbsp;&nbsp;
              <input name="button22" type="reset" class=BUTTONs3  value="取 消" onclick="fanhui()">&nbsp;&nbsp;
            </td>
          </tr>
      </table></TD>
    </TR>
</TABLE>
</form>
</body>

</html>
