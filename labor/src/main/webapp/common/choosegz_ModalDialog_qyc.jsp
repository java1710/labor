<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/common/import.jsp"%>
<html>
<head>
<title>工种选择</title>
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script src="<%=request.getContextPath()%>/js/commonjs.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
	$(function(){
	
		$("#gw").change(function(){
		//var rtValue=$("#gw").val();
			var str=$("#gw").val();
			$.get("<%=request.getContextPath()%>/service/zj/dwzp/dwdj_1.do",{code:"zhong",str:str},function(data){
				$("#gz1").html(data);
				$("#gzdm").val($("#gw option:selected").val());
				$("#gzmc").val($("#gw option:selected").text());
			});
			
			$("#gz1").change();
		});
		$("#gz1").change(function(){
		//var rtValue=$("#gw").val();
			var str=$("#gz1").val();
			$.get("<%=request.getContextPath()%>/service/zj/dwzp/dwdj_1.do",{code:"gz1",str:str},function(data){
				$("#gz2").html(data);
				$("#gzdm").val($("#gz1 option:selected").val());
				$("#gzmc").val($("#gz1 option:selected").text());
			});
			$("#gz2").change();
		});
		$("#gz2").change(function(){
		//var rtValue=$("#gw").val();
			var str=$("#gz2").val();
			$.get("<%=request.getContextPath()%>/service/zj/dwzp/dwdj_1.do",{code:"gz2",str:str},function(data){
				$("#gz3").html(data);
				$("#gzdm").val($("#gz2 option:selected").val());
				$("#gzmc").val($("#gz2 option:selected").text());
			});
		});
	
		$("#gw").change();
	});


</script>
<script>
	var xmlHttp = false;
	function initGz1(){
		var gw = form1.gw.options[form1.gw.selectedIndex].value;
		createXMLHttpRequest();
		xmlHttp.onreadystatechange = gz1Processor;
		xmlHttp.open("get","<%=request.getContextPath()%>/servlet/common/AjaxServlet?flag=1&gw="+gw);
		xmlHttp.send(null);
	}
	function initGz2(){
		var gz1 = form1.gz1.options[form1.gz1.selectedIndex].value;
		createXMLHttpRequest();
		xmlHttp.onreadystatechange = gz2Processor;
		xmlHttp.open("get","<%=request.getContextPath()%>/servlet/common/AjaxServlet?flag=2&gw="+gz1);
		xmlHttp.send(null);
	}
	function initGz3(){
		var gz2 = form1.gz2.options[form1.gz2.selectedIndex].value;
		form1.gzdm.value = form1.gz2.options[form1.gz2.selectedIndex].value;
		form1.gzmc.value = form1.gz2.options[form1.gz2.selectedIndex].text;
		createXMLHttpRequest();
		xmlHttp.onreadystatechange = gz3Processor;
		xmlHttp.open("get","<%=request.getContextPath()%>/servlet/common/AjaxServlet?flag=3&gw="+gz2);
		xmlHttp.send(null);
	}
	function initGz4(){
		var gz3 = form1.gz3.options[form1.gz3.selectedIndex].value;
		form1.gzdm.value = form1.gz3.options[form1.gz3.selectedIndex].value;
		form1.gzmc.value = form1.gz3.options[form1.gz3.selectedIndex].text;
	}	
	function gz1Processor(){
		var responseText;
		if(xmlHttp.readyState==4){
			if(xmlHttp.status==200){
				responseText = xmlHttp.responseText;
				document.all.gz1td.removeChild(form1.gz1);
				document.all.gz1td.innerHTML=responseText;
				form1.gz2.innerHTML="";
				form1.gz3.innerHTML="";
			}
		}
	}
	function gz2Processor(){
		var responseText;
		if(xmlHttp.readyState==4){
			if(xmlHttp.status==200){
				responseText = xmlHttp.responseText;
				document.all.gz2td.removeChild(form1.gz2);
				document.all.gz2td.innerHTML=responseText;
				form1.gz3.innerHTML="";
			}
		}
	}
	function gz3Processor(){
		var responseText;
		if(xmlHttp.readyState==4){
			if(xmlHttp.status==200){
				responseText = xmlHttp.responseText;
				document.all.gz3td.removeChild(form1.gz3);
				document.all.gz3td.innerHTML=responseText;
				
			}
		}
	}
	function doSubmit(){
		if(form1.gw.value==""){
			alert("岗位一项为必选项!");
			return;
		}
		if(form1.gz1.value==""){
			alert("下属工种1一项为必选项!");
			return;
		}
		if(form1.gz2.value==""){
			alert("下属工种2一项为必选项!");
			return;
		}
		if(form1.gz3.length>1&&form1.gz3.value==""){
			alert("请确认细类一项的选择内容!") 
			return;
		}
		var selectedValue;
		var selectedText
		if(form1.gz3.value==""){
			selectedValue = "\""+form1.gz2.options[form1.gz2.selectedIndex].value+"\"";
			selectedText = form1.gz2.options[form1.gz2.selectedIndex].text;
		}else{
			selectedValue = "\""+form1.gz3.options[form1.gz3.selectedIndex].value+"\"";
			selectedText = form1.gz3.options[form1.gz3.selectedIndex].text;
		}
		window.returnValue="<option></option><option selected value="+selectedValue+">"+selectedText+"</option>";
		window.close();
	}
	function escQuit(){
		if(event.keyCode==27){
			window.close();
		}
	}
</script>
</head>
<body leftmargin="0" topmargin="0" onkeypress="escQuit();">
<form name="form1" style="method">
<table  border="0" cellpadding="0" cellspacing="0" align="center"  width="100%">
	<tr class ="line4"> 
	  <td >&nbsp;</td>
	  <td >&nbsp;</td>
	  <td >&nbsp;</td>
	  <td >&nbsp;</td>
	</tr>
	<tr class ="line1"> 
	  <td align="right" >大&nbsp;&nbsp;&nbsp;&nbsp;类</td>
	  <td id="gwtd">
		<select id="gw"  style="width:120px"  onchange="initGz1()">
			<%=SpecialtyOperation.getGwmc()%>
		</select>
		</td>
	  <td  align="right" >中&nbsp;&nbsp;&nbsp;&nbsp;类</td>
	  <td width="33%" id="gz1td">
		<select id="gz1" style="width:120px" >
			
		</select></td>
	</tr>
	<tr class ="line2" > 
	  <td  align="right" >小&nbsp;&nbsp;&nbsp;&nbsp;类</td>
	  <td id="gz2td">
		<select name="gz2" id="gz2" style="width:120px" >
			
		</select></td>
	  <td align="right" >细&nbsp;&nbsp;&nbsp;&nbsp;类</td>
	  <td id="gz3td">
		<select name="gz3" id="gz3" style="width:120px" onchange="updateSelect4(this,form1.slt4)">
		
		</select>
		</td>
	</tr>
	<tr class ="line2">
	  <td  align="right" >工种代码</td>
	  <td ><input type=text name="gzdm" id="gzdm" value="" readonly style="width:10em" maxlength="7">
	  </td>
	  <td  align="right" >工种名称</td>
	  <td  ><input type="text" name="gzmc" id="gzmc" value="" readonly style="width:10em">
	  </td>
	</tr>
  </table>
  <table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
  	<tr class ="line2">
	  <td  align="center">&nbsp;</td>
	</tr>
	<tr class ="line2">
	  <td  align="center"><input type="button" name="qued" value="确&nbsp;定" class="BUTTONs3" onclick="doSubmit()" style="cursor:hands"></td>
	</tr>
  </table>
 </form> 
</body>
</html>	