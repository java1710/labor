<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title></title>
<jsp:include flush="true" page="/common/alert.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css"
	rel="stylesheet" type="text/css">
<script src="<%=request.getContextPath()%>/js/j.js"></script>
<script>
	$(function(){
		var aa = "${s}";
		var a = aa.split(",");
		$("#i0").val(a[0]);
		$("#i1").val(a[1]);
		$("#i2").val(a[2]);
		$("#i3").val(a[3]);
		$("#i4").val(a[4]);
		$("#i5").val(a[5]);
		$("#i6").val(a[6]);
		$("#i7").val(a[7]);
		$("#i8").val(a[8]);	
		$("#i9").val(a[9]);
		$("#i10").val(a[10]);
		$("#i11").val(a[11]);
		$("#i12").val(a[12]);
		$("#i13").val(a[13]);
		$("#i14").val(a[14]);
		$("#i15").val(a[15]);
		$("#i16").val(a[16]);
		$("#i17").val(a[17]);
		$("#i18").val(a[18]);
		$("#i19").val(a[19]);
		$("#i20").val(a[20]);
		$("#i21").val(a[21]);	
		$("#i22").val(a[22]);
		$("#i23").val(a[23]);
		$("#i24").val(a[24]);
		$("#i25").val(a[25]);
		$("#i26").val(a[26]);
		$("#i27").val(a[27]);
		$("#i28").val(a[28]);
		$("#i29").val(a[29]);
		$("#i30").val(a[30]);
		$("#i31").val(a[31]);
		
		$("#i0").attr("readonly","readonly");
		$("#i1").attr("readonly","readonly");
		$("#i2").attr("readonly","readonly");
		$("#i3").attr("readonly","readonly");
		$("#i4").attr("readonly","readonly");
		$("#i5").attr("readonly","readonly");
		$("#i6").attr("readonly","readonly");
		$("#i7").attr("readonly","readonly");
		$("#i8").attr("readonly","readonly");
		$("#i9").attr("readonly","readonly");	
		$("#i10").attr("readonly","readonly");
		$("#i11").attr("readonly","readonly");
		$("#i12").attr("readonly","readonly");
		$("#i13").attr("readonly","readonly");
		$("#i14").attr("readonly","readonly");
		$("#i15").attr("readonly","readonly");
		$("#i16").attr("readonly","readonly");
		$("#i17").attr("readonly","readonly");
		$("#i18").attr("readonly","readonly");
		$("#i19").attr("readonly","readonly");
		$("#i20").attr("readonly","readonly");
		$("#i21").attr("readonly","readonly");
		$("#i22").attr("readonly","readonly");
		$("#i23").attr("readonly","readonly");
		$("#i24").attr("readonly","readonly");
		$("#i25").attr("readonly","readonly");
		$("#i26").attr("readonly","readonly");
		$("#i27").attr("readonly","readonly");
		$("#i28").attr("readonly","readonly");
		$("#i29").attr("readonly","readonly");
		$("#i30").attr("readonly","readonly");
		$("#i31").attr("readonly","readonly");
	});
</script>
</head>
<body>
	<form name="form1" action="" method="post">
		<table width="98%" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td valign="bottom"
					background="<%=request.getContextPath()%>/styles/images/right/dsline.gif"
					height="8"><img
					src="<%=request.getContextPath()%>/styles/images/index/spacer.gif">
				</td>
			</tr>
			<tr>
				<td height="20" valign="bottom">
					<table border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td><table border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td valign="middle"
											background="<%=request.getContextPath()%>/styles/images/right/tagm_on_bg.gif"
											class="white" style="padding-left:10px;padding-top:2px">登记信息</td>
									</tr>
								</table>
							</td>
						</tr>
					</table></td>
			</tr>
		</table>
		<table width="98%" align="center" border="0" cellpadding="0"
			cellspacing="0" onClick="collapseCon('1');" class="titlehand">
			<tr>
				<td width="60">
					<table width="38" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="30"><img
								src="<%=request.getContextPath()%>/styles/css/bb_d.gif">
							</td>
							<td width="8"><img
								src="<%=request.getContextPath()%>/styles/images/right/ico_up.gif"
								id="imgmini1">
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<table width="98%" border="0" cellspacing="0" cellpadding="0"
			style="display:block" id="c1" align="center"
			style="word-break:break-all;width:fixed">
			<tr>
				<td>
					<table width="100%" border="0" cellspacing="1" cellpadding="0">
						<tr class="line1">
							<td width="13%" align="right"><span class="redtxt"></span>身份证号码</td>
							<td width="20%"><INPUT id="i0" name="sfzhm"
								style="WIDTH: 100%" value="" />
							</td>
							<td width="13%" align="right"><span class="redtxt"></span>性
								别</td>
							<td width="20%"><input id="i1" name="xb" size="1"
								style="WIDTH: 100%" disabled>
							</td>
							<td width="13%" align="right">年 龄</td>
							<td width="20%"><INPUT id="i2" name="nl" style="WIDTH: 100%"
								value="" disabled>
							</td>
						</tr>
						<tr class="line2">
							<td align="right"><span class="redtxt"></span>姓 名</td>
							<td><INPUT id="i3" name="xm" maxlength="32"
								style="WIDTH: 100%" value="">
							</td>
							<td align="right"><span class="redtxt"></span>民 族</td>
							<td><input id="i4" name="mz" size="1" style="WIDTH: 100%">
							</td>
							<td align="right">政治面貌</td>
							<td><input id="i5" name="zzmm" size="1" style="WIDTH: 100%">
							</td>
						</tr>
						<tr class="line1">
							<td align="right">婚姻状况</td>
							<td><input id="i6" name="hyzk" size="1" style="WIDTH: 100%">
							</td>
							<td align="right"><span class="redtxt"></span>户籍性质</td>
							<td><input id="i7" name="hjxz" size="1" style="WIDTH: 100%">
							</td>
							<td align="right"><span class="redtxt"></span>人员类别</td>
							<td><input id="i8" name="rylb" size="1" style="WIDTH: 100%">
							</td>
						</tr>
						<tr class="line2">
							<td align="right">健康状况</td>
							<td><input id="i9" name="jkzk" size="1" style="WIDTH: 100%">
							</td>
							<td align="right">
								<table border="0" cellpadding="0" cellspacing="0">
									<tr class="line2" id="id1">
										<td align="right">残疾状况</td>
									</tr>
								</table>
							</td>
							<td class="line2" colspan="3">
								<table border="0" cellpadding="0" cellspacing="0" width="100%">
									<tr id="id2">
										<td><input id="i10" name="cjzk" size="1"
											style="WIDTH: 100%">
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr class="line1">
							<td align="right">视 力</td>
							<td>左<INPUT id="i11" name="zysl" maxlength="3"
								style="WIDTH: 34%" value=""> 右 <INPUT id="i12"
								name="yysl" maxlength="3" style="WIDTH: 34%" value=""></td>
							<td align="right">身 高</td>
							<td><INPUT id="i13" name="sg" maxlength="3"
								style="WIDTH: 65%" value="">(厘米)</td>
							<td align="right">体 重</td>
							<td><INPUT id="i14" name="tz" maxlength="3"
								style="WIDTH: 65%" value="">(公斤)</td>
						</tr>

						<tr class="line2">
							<td align="right"><span class="redtxt"></span>户口所在地</td>
							<td><input id="i15" name="dwszs" style="WIDTH: 100%"
								onchange="common(initCity(),'hkszd')">
							</td>
							<td align="right">市(区\县)</td>
							<td id="sqx"><input id="i16" name="dwszq"
								style="WIDTH: 100%" onchange="initVillage()">
							</td>
							<td align="right">街(镇\乡)</td>
							<td id="jzx"><input id="i17" name="dwszj"
								style="WIDTH: 100%"></td>
						</tr>

						<tr class="line2">
							<td align="right"><span class="redtxt"></span>文化程度</td>
							<td><input id="i18" name="whcd1" style="width:100%">
							</td>
							<td align="right">所学专业</td>
							<td><input id="i19" name="sxzy" maxlength="32"
								style="WIDTH: 100%" value="">
							</td>
							<td align="right">毕业时间</td>
							<td><input id="i20" name="bysj" maxlength="32"
								style="WIDTH: 100%" value="">
							</td>
						</tr>
						<tr class="line1">
							<td align="right">毕业学校</td>
							<td colspan="5"><input id="i21" name="byxx" maxlength="32"
								style="WIDTH: 100%" value="">
							</td>

						</tr>

						<tr class="line2">
							<td align="right"><span class="redtxt"></span>固定电话</td>
							<td><INPUT name="lxdh" id="i22" style="WIDTH: 100%" value=""
								maxlength="32">
							</td>
							<td width="12%" align="right"><span class="redtxt"></span>手
								机</td>
							<td width="21%"><INPUT id="i23" name="sj" maxlength="11"
								style="WIDTH: 100%" value=""></td>
							<td align="right">E-mail</td>
							<td width="21%"><INPUT id="i24" name="email" maxlength="48"
								style="WIDTH: 100%" value=""></td>
						</tr>
						<tr class="line1">
							<td align="right">邮政编码</td>
							<td><INPUT id="i25" name="yzbm" maxlength="6"
								style="WIDTH: 100%" value="">
							</td>
							<td align="right">联系人</td>
							<td><INPUT id="i26" name="lxr" maxlength="32"
								style="WIDTH: 100%" value="">
							</td>
							<td align="right">联系人电话</td>
							<td><INPUT id="i27" name="lxrdh" maxlength="32"
								style="WIDTH: 100%" value="">
							</td>
						</tr>
						<tr class="line2">
							<td width="13%" align="right">居住地址</td>
							<td colspan="5"><INPUT id="i28" name="jzdz" maxlength="32"
								style="WIDTH: 100%" value="">
							</td>
						</tr>
						<tr class="line1">
							<td align="right">第二学历</td>
							<td colspan="5"><textarea id="i29" name="qtxl"
									style="width:100%"></textarea>
							</td>
						</tr>
						<tr class="line2">
							<td width="13%" align="right">工作简历</td>
							<td class="line1" colspan="5"><textarea id="i30" name="gzjl"
									style="width:100%"></textarea></td>
						</tr>
						<tr class="line1">
							<td width="13%" align="right">其他说明</td>
							<td colspan="5"><textarea id="i31" name="qtsm"
									style="width:100%"></textarea>
							</td>
						</tr>
					</table></td>
			</tr>
		</table>
	</form>
</body>
</html>