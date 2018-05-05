<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>推荐信回执</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/j.js"></script>
<script>
	function change() {
		if (document.form1.sfcg.value == 0) {
			document.all.cc.style.display = "";
			document.all.aa.style.display = "none";
			form1.yx.value = "";
		} else {
			document.all.cc.style.display = "none";
			document.all.aa.style.display = "";
			form1.bcgyy.value = "";
		}
	}
	$(function(){
		$("#qd").click( function () {
		$("#ff").attr("action","<%=request.getContextPath()%>/service/zj/tjhz/select_hz.do");
		$("#ff").submit();
	});
});
</script>
</head>
<body>
	<form id="ff" name="form1">
		<table width="98%" align="center" border="0" align="center"
			cellpadding="0" cellspacing="0">
			<tr>
				<td height="20" valign="bottom"><img
					src="<%=request.getContextPath()%>/styles/images/right/now.gif"
					width="11" height="12">当前位置：职业介绍 &gt; 推荐服务 &gt; 推荐信回执<a
					href="../../ldlgl/syrygl/zyjs/dj_a.htm"></a>
				</td>
			</tr>
			<tr>
				<td valign="bottom"
					background="<%=request.getContextPath()%>/styles/images/right/dsline.gif"
					height="8"><img
					src="<%=request.getContextPath()%>/styles/images/index/spacer.gif">
				</td>
			</tr>
		</table>
		<table width="98%" align="center" border="0" cellpadding="0"
			cellspacing="0" class="title">
			<tr>
				<td width="30">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td><img
								src="<%=request.getContextPath()%>/styles/css/bb_d.gif">
							</td>
						</tr>
					</table>
				</td>
				<td valign="bottom">推荐信回执</td>
			</tr>
		</table>
		<table width="98%" align="center" border=1 cellPadding=0 cellSpacing=0
			bordercolor="#FFFFFF" class=tablebody>
			<tr>
				<td width="45%" align="right" class="line2">是否成功</td>
				<td width="55%" height="25" align="left" class="line2"><font
					size="2"> <select id="sfcg" name="sfcg" style="width:160px"
						onchange="change()">
							<option value=0 selected>不成功</option>
							<option value=1>成功</option>
					</select> </font></td>
			</tr>
			<tr id="aa" style="display:none">
				<td align="right" class="line1">月 薪</td>
				<td height="25" align="left" class="line1"><input id="yx" name="yx"
					type="text" size="15">
				</td>
			</tr>
			<tr id="cc">
				<td align="right" class="line1" valign="middle">不成功原因</td>
				<td align="left" valign="middle" class="line1"><textarea id="bcg" name="bcg" rows="3" cols="30"></textarea>
				</td>
			</tr>
		</table>
		<br>
		<table width="98%" align="center" border="0" cellspacing="0"
			cellpadding="0" class="linetable">
			<tr>
				<td align="center" class="line2">
					<input type="hidden" name="xzz" value="<%=request.getParameter("a")%>">
					<input type="button"class="BUTTONs3" id="qd" name="baoc" value="回 执">&nbsp;&nbsp;
					<input name="button22" type="button" class=BUTTONs3 value="返 回" onclick="toBack()">
				</td>
			</tr>
		</table>
	</form>
</body>

</html>
