<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>dwdj_3_updateBase</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="<%=request.getContextPath()%>/styles/css/common.css"
			rel="stylesheet" type="text/css">
		<script src="<%=request.getContextPath()%>/js/commonjs.js"></script>
		<script type="text/javascript"
			src="<%=request.getContextPath()%>/js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript">
	$(function(){
	$("#dwfrm").blur(function(){
	
		
          
			
			var frm=$("#dwfrm").val();
	
			$.getJSON("dwdjInfo.do",{frm:frm,code:"blur"},function(data){
				if(data!=null){
					
					if(confirm("用户已存在是否显示该用户")){
				$("#dwbh").val(data.bio_id);
				$("#dwqc").val(data.bio_name);
				$("#dwjc").val(data.bio_shortname);
				$("#dwxz").val(data.bio_orgtype);
				$("#dwjjlx").val(data.cdg_regtype);
				$("#dwhy").val(data.bio_industry);
				$("#yzbm").val(data.bio_bua_postcode);
				$("#czjh").val(data.bio_con_fax);
				$("#email").val(data.bio_con_mail);
				
			
				$.get("dwdjInfo.do",{code:"dwszs",textd:data.bio_rga_regioncode},function(d){
					
					$("#dwszj").html(d);
				});
			
				
				$("#lxdz").val(data.bio_bua_address);
				}
				else{
					$("$dwfrm").val("");
				}
	}				
		else{
			if($("#dwfrm").val()!=""){
			
			alert("该单位首次登记请仔细输入信息");
		}
		}		
				







				
				
			
			});
			
			
		});
		
		$("#bc").click(function(){
	var reg=/[a-zA-Z_0-9]$/
        
       var regtoo=/[0-9]$/
        
       var regthree=/[_a-z0-9]+@([_a-z0-9]+\.)+[a-z0-9]{2,3}$/;   
	
	
		
	if($("#dwfrm").val()==""){
				alert("单位法人码不能为空");
			
				return;
			}
	if($("#lxdz").val()==""){
			alert("经营地址不能为空");
			
		return;
		}
		if($("#dwqc").val()==""){
			alert("单位全称不能为空");
			
			return;
		}
		if($("#dwxz").val()==""){
			alert("单位性质不能为空");
			
		return;
		}
		if($("#dwjjlx").val()==""){
			alert("经济类型不能为空");
		
		return;
		
		}	
		if($("#dwhy").val()==""){
			alert("单位行业不能为空");
			
		return;
		
		}	
		if($("#dwszj").val()==""){
			alert("街区不能为空");
			

		return;
		}
		if(!reg.test(form1.dwfrm.value)){
		    alert("单位法人码不允许输入中文");
		   
		    return;
		}
		if(form1.yzbm.value!=""&&!regtoo.test(form1.yzbm.value)){
		    alert("邮政编码只允许输入数字！");
		 
		    return;
		}
		if(form1.czjh.value!=""&&!regtoo.test(form1.czjh.value)){
		    alert("传真机号只允许输入数字！");
		    
		    return;
		}
		if(form1.email.value!=""&&!regthree.test(form1.email.value)){
		    alert("Email格式输入不正确，请重新输入！");
		   
		    return;
		}
		
		
		
		
		$("#bc").attr("disabled",true);
			form1.submit();
	

	});
	
	
	});

</script>


		<script type="text/javascript">
$(function(){
	
//单位性质
	$.get("dwdj_1.do",{code:"dwxz"},function(data){
		$("#dwxz").html(data);
	});
	//单位经济
	$.get("dwdj_1.do",{code:"dwjjlx"},function(data){
		$("#dwjjlx").html(data);
	});
	//单位行业
	$.get("dwdj_1.do",{code:"dwhy"},function(data){
		$("#dwhy").html(data);
	});
	
	//省
	$.get("dwdj_1.do",{code:"dwszs"},function(data){
		var c=$("#dwszs").html(data);
	});
	$("#dwszs").change(function(){
		var p=$("#dwszs").val();
		
		$.get("dwdj_1.do",{code:"dwszq",province:p},function(data){
		$("#dwszq").html(data);
		
		});
		$("#dwszq").change();
	});
	$("#dwszq").change(function(){
		var c=$("#dwszq").val();
	$.get("dwdj_1.do",{code:"dwszj",city:c},function(data){
		$("#dwszj").html(data);
	
	
	});
	
	});
	
	


});


</script>
		<script>
	var xmlHttp = false;
	function initCity(){
		var province = form1.dwszs.options[form1.dwszs.selectedIndex].value;
		createXMLHttpRequest();
		xmlHttp.onreadystatechange = cityProcessor;
		xmlHttp.open("get","<%=request.getContextPath()%>/ldlsc/dw/dwdj.do?method=initRegion&obj=city&selectname=dwszq&provinceid="+province);
		xmlHttp.send(null);
	}
	function initVillage(){
		var city = form1.dwszq.options[form1.dwszq.selectedIndex].value;
		createXMLHttpRequest();
		xmlHttp.onreadystatechange = villageProcessor;
		xmlHttp.open("get","<%=request.getContextPath()%>/ldlsc/dw/dwdj.do?method=initRegion&obj=village&selectname=dwszj&cityid="+city);
		xmlHttp.send(null);
	}
	function cityProcessor(){
		var responseText;
		if(xmlHttp.readyState==4){
			if(xmlHttp.status==200){
				responseText = xmlHttp.responseText;
				document.all.sqx.removeChild(form1.dwszq);
				document.all.sqx.innerHTML=responseText;
				form1.dwszj.innerHTML="";
			}
		}
	}
	function villageProcessor(){
		var responseText;
		if(xmlHttp.readyState==4){
			if(xmlHttp.status==200){
				responseText = xmlHttp.responseText;
				document.all.jzx.removeChild(form1.dwszj);
				document.all.jzx.innerHTML=responseText;
			}
		}
	}
	function doInsert(){

								
		form1.bc.disabled=true;
		form1.fh.disabled=true;
		form1.action="<%=request.getContextPath()%>
	/service/zj/dwzp/dwdj_3.jsp";
		form1.submit();
	}
	function copyValue() {
		form1.dwjc.value = form1.dwqc.value;
	}
</script>
	</head>
	<body>
		<form name="form1" action="dwdjInfo.do" method="post">
			<input type="hidden" name="dwdj" value="dwdj2" />
			<input type="hidden" name="dwbh" id="dwbh" />
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td>
						<table width="98%" border="0" align="center" cellpadding="0"
							cellspacing="0">
							<tr>
								<td height="20" valign="bottom">
									<img
										src="<%=request.getContextPath()%>/styles/images/right/now.gif"
										width="11" height="12">
									当前位置：职业介绍 &gt; 单位登记 &gt; 新增单位基本信息
								</td>
							</tr>
							<tr>
								<td valign="bottom"
									background="<%=request.getContextPath()%>/styles/images/right/dsline.gif"
									height="8">
									<img
										src="<%=request.getContextPath()%>/styles/images/index/spacer.gif">
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td align="center" valign="top">
						<table width="98%" border="0" cellpadding="0" cellspacing="0"
							class="title">
							<tr>
								<td width="30">
									<table border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td>
												<img src="<%=request.getContextPath()%>/styles/css/bb_d.gif">
											</td>
										</tr>
									</table>
								</td>
								<td valign="bottom">
									基本信息&nbsp;&nbsp;&nbsp;[提示：单位登记有效期为12天,使用修改功能可以延长有效期12天]
								</td>
							</tr>
						</table>
						<tr>
							<td align="center" valign="top">
								<table width="98%" border="0" cellspacing="0" cellpadding="0"
									style="display: block">

									<tr>
										<td valign="top">
											<table width="100%" border="0" cellspacing="1"
												cellpadding="0">
												<tr class="line2">
													<td width="13%" align="right">
														<span class="redtxt">*</span>单位法人码
													</td>
													<td width="18%">
														<input name="dwfrm" id="dwfrm" style="WIDTH: 100%"
															maxlength="32">
													</td>
													<td width="13%" align="right">
														<span class="redtxt">*</span>单位全称
													</td>
													<td width="20%">
														<INPUT name="dwqc" id="dwqc" style="WIDTH: 100%"
															maxlength="64" value="" onkeyup=
	copyValue();;
>
													</td>
													<td width="14%" align="right">
														单位简称
													</td>
													<td width="20%">
														<INPUT name="dwjc" id="dwjc" style="WIDTH: 100%"
															maxlength="32" value="">
													</td>
												</tr>
												<tr class="line1">
													<td align="right">
														<span class="redtxt">*</span>单位性质
													</td>
													<td width="18%">
														<select id="dwxz" name="dwxz" style="WIDTH: 100%;">

														</select>
													</td>
													<td align="right">
														<span class="redtxt">*</span>经济类型
													</td>
													<td>
														<select id="dwjjlx" name="dwjjlx" style="WIDTH: 100%">


														</select>
													</td>
													<td align="right">
														<span class="redtxt">*</span>单位行业
													</td>
													<td>
														<select id="dwhy" name="dwhy" style="WIDTH: 100%">


														</select>
													</td>
												</tr>
												<tr class="line2">

													<td align="right">
														邮政编码
													</td>
													<td>
														<INPUT name="yzbm" id="yzbm" style="WIDTH: 100%"
															maxlength="32">
													</td>
													<td align="right">
														传真机号
													</td>
													<td>
														<input name="czjh" id="czjh" style="WIDTH: 100%"
															maxlength="32" value="">
													</td>
													<td align="right">
														Email
													</td>
													<td>
														<INPUT name="email" id="email" style="WIDTH: 100%"
															maxlength="64" value="">
													</td>
												</tr>
												<tr class="line1">
													<td align="right">
														<span class="redtxt">*</span>注册省(市)
													</td>
													<td>
														<select id="dwszs" name="dwszs" style="WIDTH: 100%"
															onchange="initCity()">
															${Regioncode }

														</select>
													</td>
													<td align="right">
														市(区\县)
													</td>
													<td id="sqx">
														<select id="dwszq" name="dwszq" style="WIDTH: 100%"
															onchange="initVillage()">
														</select>
													</td>
													<td align="right">
														街(镇\乡)
													</td>
													<td id="jzx">
														<select id="dwszj" name="dwszj" style="WIDTH: 100%">
														</select>
													</td>
												</tr>
												<tr class="line2">
													<td align="right">
														<span class="redtxt">*</span>经营地址
													</td>
													<td colspan="5">
														<INPUT name="lxdz" id="lxdz" style="WIDTH: 100%"
															maxlength="64" value="">
													</td>
												</tr>

											</table>
										</td>
									</tr>
								</table>
								<br>
								<TABLE width="100%" border=0 cellPadding=0 cellSpacing=1
									class="tablebody" align="center">
									<TR align="center">
										<TD class="line2">
											<input id="bc" type="button" class="BUTTONs3" value="保 存">
											
											&nbsp;&nbsp;
											<INPUT name="fh" type="button"
												onclick="window.location.href='<%=request.getContextPath()%>/service/zj/dwzp/dwdj_1_querybase.jsp';"
												class="BUTTONs3" value="返 回">
										</TD>
									</TR>
								</TABLE>
							</td>
						</tr>
			</table>
		</form>
	</body>
</html>