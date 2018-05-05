<%@ page contentType="text/html; charset=UTF-8" %>
<%
	String flag = (String)request.getAttribute("flag");
	if(flag == "0"){
		out.print("<script>alert('该用户不存在或已被冻结，请核实!')</script>");
	}
%>
<html>
<head>
<title>条件匹配</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script>
	function changetotj(obj){
		if(obj.checked){
			document.all(yxpp.id).style.display="none";
			document.all.tjpp.style.display="";
			form1.flag.value = "tj";
		}
	}

	function changetoyx(obj){
		if(obj.checked){
			document.all(yxpp.id).style.display="";
			document.all.tjpp.style.display="none";
			form1.flag.value = "yx";
		}
	}

	function doSubmit(){
		form1.button.disabled = true;
		form1.button2.disabled = true;
		if(form1.flag.value=="tj"){
			form1.action = "<%=request.getContextPath()%>/service/zj/GrTj.do";
		}else{
			form1.action = "<%=request.getContextPath()%>/service/zj/grqz/GrTjYxPp.do";
		}
		form1.submit();
	}
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.11.1.js"></script>
<script type="text/javascript">
	$(function (){
	
		$("#citizenid").blur(function (){
		$.post("<%=request.getContextPath()%>/service/zj/grqz/GrTjName.do", { bip_citizenid :$("#citizenid").val()+":0"},
   		function(data){
     		  $("#name").val(data);
   		});
		})
		
		
		$("#dwbip_citizenid").blur(function (){
		$.post("<%=request.getContextPath()%>/service/zj/grqz/GrTjName.do", { bip_citizenid :$("#dwbip_citizenid").val()+":0"},
   		function(data){
     		  $("#dwbip_name").val(data);
   		});
		})
		
		
		
		
		$("#bio_no").blur(function (){
		$.post("<%=request.getContextPath()%>/service/zj/grqz/GrTjName.do", { bip_citizenid :$("#bio_no").val()+":1"},
   		function(data){
     		  $("#bio_name").val(data);
   		});
		})
   		
   		
   		
   
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
    <td align="center" > 
      <TABLE width="98%" 
        border=1 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class=tablebody>
        
        <tr>
			<td align="center" valign="top">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"   class="title">
			  <tr>
				<td width="38">
				<table width="38" border="0" cellspacing="0" cellpadding="0">
				  <tr>
					<td width="30"><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
				  </tr>
				</table></td>
				<td  valign="bottom" align="center">
				  <table border="0" cellspacing="0" cellpadding="0" width="70%">
				    <tr> 
				      <td>
					  	<input name="radiobutton" type="radio" class="radio" value="radiobutton" checked onclick="changetotj(this)">
					  	条件匹配
					  </td>
				      <td>
				      	<input name="radiobutton" type="radio" class="radio" value="radiobutton" onclick="changetoyx(this)">
				      	意向匹配
				      </td>

				    </tr>
				  </table>
				</td> 
			  </tr>
			</table>

            
            <TR> 
              </TR>
            <TR > 
              <TD align="center"> 
        	  <tr><td align="center">
        	  <form name="form1" action="" method="post">
              <table id="tjpp" width="273" border="0" cellspacing="0" cellpadding="0" height="84">
                  <tr> 
                    <td width="103">身份证号码</td>
                    <td width="194"> <input  id="citizenid" name="bip_citizenid" type="text" maxlength="18"></td>
                  </tr>
                  <tr> 
                    <td width="103">姓　　　名</td>
                    <td width="194"> <input id="name" name="bip_name" type="text" maxlength="32"></td>
                  </tr>
                </table>
                </TD>
            </TR>
            <TR > 
              <TD align="center"> 
        	  <tr><td align="center">
              <table id="yxpp" width="250" border="0" cellspacing="0" cellpadding="0" style="display:none">
                  <tr> 
                    <td width="103">身份证号码</td>
                    <td width="194"> <input id="dwbip_citizenid" name="dwbip_citizenid" type="text" maxlength="18"></td>
                  </tr>
                  <tr> 
                    <td width="103">姓　　　名</td>
                    <td width="194"> <input id="dwbip_name" name="dwbip_name" type="text" maxlength="32"></td>
                  </tr>    
                  <tr> 
                    <td width="103">单位法人码</td>
                    <td width="194"> <input  id="bio_no" name="bio_no" type="text" maxlength="32"></td>
                  </tr>   
                  <tr> 
                    <td width="103">单位&nbsp;&nbsp;&nbsp;名称</td>
                    <td width="194"><input id="bio_name" name="bio_name" type="text" maxlength="32"></td>
                  </tr>                                               
                </table>
                </TD>
            </TR>            
      </TABLE>
    </td>
  </tr>
</table>
<br>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
    <TR align="center"> 
      <TD height=25 class="line2">
        <input  name="button" type="button" class=BUTTONs3 value="确 定" onClick="doSubmit()">
        &nbsp;&nbsp; 
        <INPUT name="button2" class=BUTTONs3  type="reset" value="取 消"> 
      </TD></TR>
</table>     
<input type="hidden" name="flag" value="tj">
</form>
</body>
</html>