<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/common/import.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>匹配条件选择</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script>
	function doSubmit(){
		
		var dwhy =  document.getElementById("dwhy");
		
		if(dwhy.value.length!=0){
			form1.action = "<%=request.getContextPath()%>/service/zj/grqz/GrTjPkDw.do";
			form1.submit();
		}else{
			alert("请选择岗位");
			zpgzbh.focus();
			return ;
		}
		
	}
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.11.1.js"></script>
<script type="text/javascript">


	$(function (){
		
		$(".zpgzbhname").click(function (){
		
		
		$.post("<%=request.getContextPath()%>/service/zj/GrTjDt.do", { name: $(this).val()},
  		 function(data){
  	
  		 var str = data.split(":");
  		
  		 	$("#dwxz").html(str[0]);
  		 	$("#dwhy").html(str[1]);
  		 	$("#dwjjlx").html(str[2]);
  			 $("#ppfw").html(str[3]);
    	
     
  		 });
  		 
  		 
  		
  		 
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
		<table border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td ><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
          </tr>
        </table></td>
        <td  valign="bottom">个人基础信息&nbsp;&nbsp;&nbsp;提示：[点击姓名可查看个人详细信息]</td>
      </tr>
    </table>
    	<TABLE width="98%" border=0 cellPadding=0 cellSpacing=1 bordercolor="#9DCBEC" class=tablebody>
			<TBODY>
            <TR>
              <TD width="98%" align="left" class="line2">
              	&nbsp;姓名:<a href="javascript:void(null)" style="cursor:hand" onclick="window.open('<%=request.getContextPath() %>/','grjbxx','left=100 top=100 width=820,height=469 scrollbars')" ></a> &nbsp;&nbsp;&nbsp;&nbsp;
              	性别： &nbsp;&nbsp;&nbsp;&nbsp;             
              	居住地址：
              </TD>
            </TR>
        </TABLE>
        <table width="98%" border="0" cellpadding="0" cellspacing="0"   class="title">
	      <tr>
	        <td width="30">
			<table border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td ><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
	          </tr>
	        </table></td>
	        <td  valign="bottom">选择单位条件:&nbsp;&nbsp;&nbsp;</td>
	      </tr>
	    </table>
        <TABLE width="98%" border=0 cellPadding=0 cellSpacing=1 bordercolor="#9DCBEC" class=tablebody>

            <TR>
              <TD width="115" align="right" class="line2" rowspan="<bean:write name='gzSum' scope='request' />">查找单位招聘工作为</TD>
              <TD class="line2">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
					<td width="33%">
						<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1">
                        
                        <tr>
                        <c:forEach items="${list}" var="bip">
                          <td width="3%" class="line1 right5" align="center">
                          ${bip.cd_name}
                          </td>
                          <td width="3%" class="line1 right5" align="center">
                          <input class="zpgzbhname"    id="zpgzbh"  name= "zpgzbh" type="radio"  value="${bip.cd_id}">
                          </td>
                           </c:forEach>
                          <td width="30%" class="line2" align="center">&quot;</td>
                          </tr>
                    </table></td>
            </tr>
      </table>
    </TD>
  </TR>
</TABLE>
        <TABLE width="98%" align="center" border=0 cellPadding=0 cellSpacing=1 bordercolor="#9DCBEC" class=tablebody>
            <TR>
              <TD width="13%" align="right" class="line1">单位性质</TD>
              <TD width="20%" align="center" class="line1">
                <select id="dwxz"  name="dwxz" size="1"  style="WIDTH: 100%" onChange="sfxsjjlx()">
      			
                </select></TD>
              <TD width="13%" align="right" class="line1">单位行业</TD>
              <TD width="20%" align="center" class="line1">
             
				<select  id="dwhy"  name="dwhy" size="1"  style="WIDTH: 100%">

			
				
                </select></TD>
                <TD  width="13%" align="right" class="line2">经济类型</TD>
              <TD  width="20%" align="center" class="line2">
			  <select id = "dwjjlx" name="dwjjlx" size="1"  style="WIDTH: 100%">
				
              </select></TD>
            </TR>
            <TR>
                <TD align="right" class="line1">性别</TD>
              <TD align="center" class="line1">
			  <select name="xb" size="1"  style="WIDTH: 100%">
				${map.bip_sex }
              </select> </TD>
              <TD align="right" class="line1">应届毕业生</TD>
              <TD align="left" class="line1"> 
			     <SELECT  NAME="ppfw" style="WIDTH: 100%">
			     	${map.bip_t_newgraduate }
				</SELECT>
              </TD>
             
              <TD align="right" class="line2">文化程度</TD>
              <TD align="center" class="line2">
			  <select name="whcd" size="1"  style="WIDTH: 100%">
				${map.bip_whcd }
                </select></TD>
            </TR>
            <TR>
             <TD align="right" class="line2">工种匹配范围</TD>
              <TD align="center" class="line2">
				<SELECT  id="ppfw"  NAME="gzppfw" style="WIDTH: 100%">
				
				</SELECT>
			  </TD>
            </TR>
        </TABLE>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td align="center"  class="line2"> <input name="button2" type="button"class=BUTTONs3  value="确 定" onClick="doSubmit()">
	    &nbsp;&nbsp;<input name="button232" type="button"class=BUTTONs3 onClick="toBack()" value="返 回"></td>
	</tr>
</table>
</body>
</html>
