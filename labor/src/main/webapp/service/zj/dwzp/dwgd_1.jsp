<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.11.1.min.js"></script>

<script>
     function chaxun(){
         var sfzhm=form1.dwfrm.value;
         var xm=form1.dwqc.value;
         var cxkssj=form1.djrqq.value;
         var cxjssj=form1.djrqz.value;
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
        form1.bc.disabled=true;
        form1.qx.disabled=true;
       // form1.action="<%=request.getContextPath()%>/service/zj/dwzp/dwgd_2.jsp";
        form1.action="dwgd.do?method=dwgd1";
        
      	
        form1.submit();
    }
    function donothing(){
        form1.bc.disabled=true;
        form1.qx.disabled=true;
        form1.action="<%=request.getContextPath()%>/service/zj/dwzp/dwgd_1.jsp";
        form1.submit();
    }
</script>
<title>手动归档查询条件页面</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
</head>
<body>
<form name="form1" method="post" action="">
<table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">
      当前位置：职业介绍 &gt; 单位招聘 &gt; 手动归档</td>
    </tr>
    <tr>
      <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
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
    <td valign="bottom">查询条件&nbsp;&nbsp;&nbsp;</td>
  </tr>
</table>
      <TABLE width="98%" align="center"
        border=1 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class=tablebody>
            <TR>
			  <TD align="center" class="line2"> <table width="297" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td width="90" align="right">单位法人码</td>
				  <td width="23"  align="right"></td>
                  <td width="160"><input name="dwfrm" type="text" maxlength="18" style='width:100%'></td>
				  <td width="24"  align="right"></td>

                </tr>
              </table></TD>
          </TR>
          <tr>
		    <TD align="center" class="line1"> <table width="297" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td width="90"  align="right">单位名称</td>
				  <td width="23"  align="right"></td>
                  <td width="160"><input name="dwqc" type="text" maxlength="64" style='width:100%'></td>
				  <td width="24"  align="right"></td>

                </tr>
              </table></TD>
           </tr>
           <tr>
		    <TD align="center" class="line2"> <table width="297" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td width="90"  align="right">登记时间起</td>
				  <td width="23"  align="right"></td>
                  <td width="160"><textarea name="djrqq" style='width:100%' class='mask'  htcurl="url(<%=request.getContextPath() %>/common/htc/format.htc)"  rows="1" cols="10" mask='date' maxlength='10' ></textarea></td>
		  <td width="24"  align="right"></td>
        </tr>
      </table></TD>
  </TR>
  <tr>
    <TD align="center" class="line1"> <table width="297" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td width="90"  align="right">登记时间止</td>
		  <td width="23"  align="right"></td>
          <td width="160"><textarea name="djrqz" style='width:100%' class='mask'  htcurl="url(<%=request.getContextPath() %>/common/htc/format.htc)"  rows="1" cols="10" mask='date' maxlength='10' ></textarea></td>
				  <td width="24"  align="right"></td>
                </tr>
              </table></TD>
          </TR>
          <tr>
		   
          </TR>
          <tr>
		    <TD align="center" class="line1"> <table width="297" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td width="90"  align="right">是否冻结</td>
				  <td width="23"  align="right"></td>
                  <td width="160"><select name="sfdj" style="width:100%">
										<option value="">请选择</option>
										<option value="1">冻结</option>
										<option value="0">正常</option>
                    </select></td>
				  <td width="24"  align="right"><br><br></td>

                </tr>
              </table></TD>
          </TR>
      </TABLE>
<br>
<TABLE width="98%"  align="center"
        border=0 cellPadding=0 cellSpacing=1 class="tablebody">
  <TR align="center"> 
    <TD height=25 class="line2"> <input name="bc" type="button" class="BUTTONs3" value="确 定" onClick="chaxun()">
      &nbsp;&nbsp; 
      <INPUT name="qx" type="reset" class="BUTTONs3" value="取 消" onclick="donothing()"> 
      &nbsp;&nbsp; 
    </TD>
  </TR>
</TABLE>
</form>
</body>
</html>
