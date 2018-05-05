<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.11.1.js"></script>
    <script type="text/javascript" >
    	$(function(){
    	
    		$.get("<%=request.getContextPath()%>/service/zj/tjhz/tjcx.do",{},function(data){
    			$.getJSON("<%=request.getContextPath()%>/service/zj/tjhz/tjcx.do",{},function(d){
    		
    				$("#xb").html(d.sex);
    				$("#hjxz").html(d.huji);
    				$("#rylb").html(d.per);
    				$("#gzgz").html(d.sp);
    				$("#dwlx").html(d.dwlx);
    				$("#hwlb").html(d.gwlb);
    				$("#zdxl1").html(d.ed1);
    				$("#zgxl2").html(d.ed2);
    			}); 
    		
    		});   		
    	});    
    </script>
    
  <script language="javascript">
//判断输入的日期是否正确
function CheckDate(INDate){ 
if (INDate==""){return true;}
if(INDate.indexOf('-',0)!=-1){	separate="-"}
else{
	if(INDate.indexOf('/',0)!=-1){separate="/"}
	else {return true;}
	}
	area=INDate.indexOf(separate,0)
	//获取年份
	subYY=INDate.substr(0,area)
	if(isNaN(subYY) || subYY<=0){
		return true;
	}		
	//转换月份
	subMM=INDate.substr(area+1,INDate.indexOf(separate,area+1)-(area+1))
	if(isNaN(subMM) || subMM<=0){
		return true;
	}
	if(subMM.length<2){subMM="0"+subMM}
	//转换日
	area=INDate.lastIndexOf(separate)
	subDD=INDate.substr(area+1,INDate.length-area-1)
	if(isNaN(subDD) || subDD<=0){
		return true;
	}
	if(eval(subDD)<10){subDD="0"+eval(subDD)}
	NewDate=subYY+"-"+subMM+"-"+subDD
	if(NewDate.length!=10){return true;}
    if(NewDate.substr(4,1)!="-"){return true;}
    if(NewDate.substr(7,1)!="-"){return true;}
	var MM=NewDate.substr(5,2);
	var DD=NewDate.substr(8,2);
	if((subYY%4==0 && subYY%100!=0)||subYY%400==0){ //判断是否为闰年
		if(parseInt(MM)==2){
			if(DD>29){return true;}
		}
	}else{
		if(parseInt(MM)==2){
			if(DD>28){return true;}
		}	
	}
	var mm=new Array(1,3,5,7,8,10,12); //判断每月中的最大天数
	for(i=0;i< mm.length;i++){
		if (parseInt(MM) == mm[i]){
			if(parseInt(DD)>31){
				return true;
			}else{
				return false;
			}
		}
	}
   if(parseInt(DD)>30){return true;}
   if(parseInt(MM)>12){return true;}
   return false;
   }
</script>
<script language="javascript">

function check(myform){

			if(!myform.djkssj.value==""||!myform.djjssj.value==""||!myform.tjkssj.value==""||!myform.tjjssj.value==""){
	if(!myform.djkssj.value==""||!myform.djjssj.value==""){
	if(CheckDate(myform.djkssj.value)){	
		alert("您输入的开始日期不正确！\n 请注意日期格式（如：2007-07-17）或闰年！");	
		return ;
	}else if(CheckDate(myform.djjssj.value)){
		alert("您输入的结止日期不正确！\n 请注意日期格式（如：2007-07-17）或闰年！");
		return;	
	}
	}if(!myform.tjkssj.value==""||!myform.tjjssj.value==""){
	if(CheckDate(myform.tjkssj.value)){
		alert("您输入的开始日期不正确！\n 请注意日期格式（如：2007-07-17）或闰年！");
		return;
	}else if(CheckDate(myform.tjjssj.value)){
		alert("您输入的结止日期不正确！\n 请注意日期格式（如：2007-07-17）或闰年！");
		return;	
	}
	}
	}
	myform.submit();
}
</script>
  
<title>推荐情况查询</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">

</head>
<body>
<form name="form1" action="<%=request.getContextPath()%>/service/zj/tjhz/tjcx1.do">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td><table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">当前位置：职业介绍 
            &gt; 推荐服务 &gt; 推荐情况查询</td>
        </tr>
        <tr> 
          <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td align="center" valign="top"><TABLE width="98%" border=0 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class=tablebody>
     <TR>
            <TD width="30" height=20 class="title"><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif" width="30" height="19"></TD>
            <TD class="title" style="padding-top:5px">查询条件</TD>
     </TR>
    </TABLE>
      <table width="98%" border="0" cellspacing="1" cellpadding="0">
        <tr class="line2">
          <td width="13%" align="right">性　　别</td>
          <td width="13%"><select id="xb" name="xb" style="width:100%">
				<option value=""/>
				
          </select>          </td>
          <td width="13%" align="right">户籍性质</td>
          <td width="13%"><select  id="hjxz" name="hjxz" style="width:100%">
				<option value="">
				
          </select>          </td>
          <td width="13%" align="right" >年　　龄</td>
          <td width="13%"><input id="zxnl1" name="zxnl" style="WIDTH: 100%" maxlength="2"></td>
          <td width="5%" align="center">至</td>
          <td width="13%"><input id="zdnl2" name="zdnl" style="WIDTH: 100%" maxlength="2"></td>
        </tr>
        <tr class="line1">
          <td align="right">人员类别</td>
          <td><select id="rylb" name="rylb" style="width:100%">
				<option value="">
			
          </select>          </td>
          <td align="right">求职岗位</td>
          <td><select id="gzgz" name="qzgz" style="width:100%">
			<option value="">
          </select>          </td>
          <td align="right">学　　历</td>
          <td><select id="zdxl1" name="zdxl" style="width:100%">
				 <option value="">
				
          </select>          </td>
          <td align="center">至</td>
          <td><select id="zgxl2" name="zgx2" style="width:100%">
				<option value="">
				
          </select>          </td> 
        </tr>
        <tr class="line2">
          <td align="right">单位类型</td>
          <td><select id="dwlx" name="dwlx" style="WIDTH: 100%">
						<option value="">请选择</option>
						
            </select></td>
          <td align="right">岗位类别</td>
          <td><select id="hwlb" name="gwlb" style="WIDTH: 100%">
						<option value="">请选择</option>
						
						</select></td>
          <td align="right">登记时间</td>
          <td><textarea name="djkssj" style="width: 100%;" class="mask" htcurl="url(<%=request.getContextPath() %>/common/htc/format.htc)" rows="1" cols="10" mask="date" maxlength="10" ></textarea></td>
          <td align="center">至</td>
          <td><textarea name="djjssj" style="width: 100%;" class="mask" htcurl="url(<%=request.getContextPath() %>/common/htc/format.htc)" rows="1" cols="10" mask="date" maxlength="10" ></textarea></td>
        </tr>
        <tr class="line1">
		  <td align="right">回执状态</td>
          <td><select name="sfcg" style="width: 100%;"> 
		  <option value=""> 
		  <option value="1">成功 
		  <option value="0">未成功 
 
 
		  <option value="-1">未回执 
 
 
          </option></option></option></option></select>          </td>
          <td width="60" align="right">推荐时间</td>
          <td width="100" align="center"><textarea name="tjkssj" style="width: 100%;" class="mask" htcurl="url(<%=request.getContextPath() %>/common/htc/format.htc)" rows="1" cols="10" mask="date" maxlength="10"></textarea></td>
          <td width="15" align="center">至</td>
          <td width="100" align="center"><textarea name="tjjssj" style="width: 100%;" class="mask" htcurl="url(<%=request.getContextPath() %>/common/htc/format.htc)" rows="1" cols="10" mask="date" maxlength="10"></textarea></td>
        </tr>
      </table>
      <table width="98%%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr class="line2">
          <td align="center">
            <input name="bc" type="button" class="BUTTONs3" value="查 询" onclick="check(form1)" >
            &nbsp;&nbsp;&nbsp;&nbsp;<INPUT name="qk" type="reset"class=BUTTONs3  value="取 消">
          </td>
        </tr>
      </table>
  </tr>
</table>
</form>
</body>
</html>
