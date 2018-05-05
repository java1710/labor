<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script src="<%=request.getContextPath() %>/js/commonjs.js"></script>
<script>
	var xmlHttp = false;
	function showDialog(){
		var dx,dy;
		var dx=(screen.height/2-105)+"";
	   	var dy=(screen.width/2-200)+"";
		var rValue,iTem;
		rValue=window.showModalDialog("<%=request.getContextPath()%>/common/choosegz_ModalDialog_qyc.jsp","四级联动","dialogTop="+dx+";dialogLeft="+dy+";dialogHeight=210px;dialogWidth=400px;help=no;fullscreen=1;status=no;center=yes");
		if(rValue != null){
			var id = document.getElementById("o1");
			var qzgz1 = document.getElementById("qzgz1");
			id.removeChild(qzgz1);
			id.innerHTML="<select name='qzgz1' size='1'  style='WIDTH: 100%'  onclick='showDialog()'>"+rValue+"</select>";
		}
		return;
	}
	function izshowDialog(){
		var dx,dy;
		var dx=(screen.height/2-105)+"";
   		var dy=(screen.width/2-200)+"";
		var rValue,iTem;
		rValue=window.showModalDialog("<%=request.getContextPath()%>/common/choosegz_ModalDialog_qyc.jsp","四级联动","dialogTop="+dx+";dialogLeft="+dy+";dialogHeight=210px;dialogWidth=400px;help=no;fullscreen=1;status=no;center=yes");
		if(rValue != null){
			var id = document.getElementById("o2");
			var init_zyjn = document.getElementById("init_zyjn");
			id.removeChild(init_zyjn);
			id.innerHTML="<select name='init_zyjn' size='1'  style='WIDTH: 100%' onclick='izshowDialog()'>"+rValue+"</select>";
		}
		return;
	}
	function common(method,obj){
		
	}
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
	
	function addZyjnRows(){
		var init_zyjn = form1.init_zyjn;
		var init_jsdj = form1.init_jsdj;
		var init_csnx = form1.init_csnx;
		if(init_zyjn.value=="" ||init_jsdj.value==""||init_csnx.value==""){
			alert("该添加项必须填写完毕后，才能继续添加");
			return;
		}
		var iz_index = init_zyjn.selectedIndex;
		var ij_index = init_jsdj.selectedIndex;
		
		var iz_text = init_zyjn.options[iz_index].text;
		var iz_value = init_zyjn.options[iz_index].value;
		
		var ij_text = init_jsdj.options[ij_index].text;
		var ij_value = init_jsdj.options[ij_index].value;
		zyjnTable.insertRow();
		var table1Length = zyjnTable.rows.length-1;
		zyjnTable.rows(table1Length).insertCell().innerHTML = "<td></td>";
		zyjnTable.rows(table1Length).insertCell().innerHTML = "<td>"+iz_text+"<input type='hidden' name='jn_iz' value='"+iz_value+"'>"+"</td>";
		zyjnTable.rows(table1Length).insertCell().innerHTML = "<td></td>";
		zyjnTable.rows(table1Length).insertCell().innerHTML = "<td>"+ij_text+"<input type='hidden' name='jn_ij' value='"+ij_value+"'>"+"</td>";
		zyjnTable.rows(table1Length).insertCell().innerHTML = "<td></td>";
		zyjnTable.rows(table1Length).insertCell().innerHTML = "<td>"+init_csnx.value+"<input type='hidden' name='jn_ic' value='"+init_csnx.value+"'>"+"</td>";
		init_csnx.value = "";
		init_zyjn.value = "";
		init_jsdj.value = "";
	}
	function addJywyRows(){
		var init_jywy = form1.init_jywy;
		var init_wyslcd = form1.init_wyslcd;
		var init_wysm = form1.init_wysm;
		if(init_jywy.value=="" ||init_wyslcd.value==""||init_wysm.value==""){
			alert("该添加项必须填写完毕后，才能继续添加");
			return;
		}
		var ij_index = init_jywy.selectedIndex;
		var iw_index = init_wyslcd.selectedIndex;
		
		var ij_text = init_jywy.options[ij_index].text;
		var ij_value = init_jywy.options[ij_index].value;
		
		var iw_text = init_wyslcd.options[iw_index].text;
		var iw_value = init_wyslcd.options[iw_index].value;
		
		jywyTable.insertRow();
		var table1Length = jywyTable.rows.length-1;
		jywyTable.rows(table1Length).insertCell().innerHTML = "<td></td>";
		jywyTable.rows(table1Length).insertCell().innerHTML = "<td>"+ij_text+"<input type='hidden' name='wy_ij' value='"+ij_value+"'>"+"</td>";
		jywyTable.rows(table1Length).insertCell().innerHTML = "<td></td>";
		jywyTable.rows(table1Length).insertCell().innerHTML = "<td>"+iw_text+"<input type='hidden' name='wy_iw' value='"+iw_value+"'>"+"</td>";
		jywyTable.rows(table1Length).insertCell().innerHTML = "<td></td>";
		jywyTable.rows(table1Length).insertCell().innerHTML = "<td>"+init_wysm.value+"<input type='hidden' name='wy_sm' value='"+init_wysm.value+"'>"+"</td>";
		init_wysm.value = "";
		init_jywy.value = "";
		init_wyslcd.value = "";
	}

	function addqzgzRows(){
		var qzgz1 = form1.qzgz1;
		var ygxs1 = form1.ygxs1;
		var zdyx1 = form1.zdyx1;
		var zgyx2 = form1.zgyx2;
		if(qzgz1.value=="" ||ygxs1.value==""||zdyx1.value==""||zgyx2.value=="" ){
			alert("该添加项必须填写完毕后，才能继续添加");
			return;
		}
		var qzgz1_index = qzgz1.selectedIndex;
		var ygxs1_index = ygxs1.selectedIndex;
		
		var qzgz1_text = qzgz1.options[qzgz1_index].text;
		var qzgz1_value = qzgz1.options[qzgz1_index].value;
		
		var ygxs1_text = ygxs1.options[ygxs1_index].text;
		var ygxs1_value = ygxs1.options[ygxs1_index].value;
		
		qzgzTable.insertRow();
		var table1Length = qzgzTable.rows.length-1;
		qzgzTable.rows(table1Length).insertCell().innerHTML = "<td></td>";
		qzgzTable.rows(table1Length).insertCell().innerHTML = "<td>"+qzgz1_text+"<input type='hidden' name='gz_qzgz1' value='"+qzgz1_value+"'>"+"</td>";
		qzgzTable.rows(table1Length).insertCell().innerHTML = "<td></td>";
		qzgzTable.rows(table1Length).insertCell().innerHTML = "<td>"+ygxs1_text+"<input type='hidden' name='gz_ygxs1' value='"+ygxs1_value+"'>"+"</td>";
		qzgzTable.rows(table1Length).insertCell().innerHTML = "<td></td>";
		qzgzTable.rows(table1Length).insertCell().innerHTML = "<td>"+zdyx1.value+"<input type='hidden' name='gz_zdyx1' value='"+zdyx1.value+"'>&nbsp;&nbsp;&nbsp;&nbsp;"+
		zgyx2.value+"<input type='hidden' name='gz_zgyx2' value='"+zgyx2.value+"'>"+"</td>";
		qzgz1.value = "";
		ygxs1.value = "";
		zdyx1.value = "";
		zgyx2.value = "";
	}
	// 删除方法
	function delRows(tableid){
		var table1Length = tableid.rows.length;
		if(table1Length > 1){
			tableid.deleteRow(table1Length-1);
		}else{
			alert("没有你要删除的选项！");
		}
	}
	function baochun(){
		/*var nl = form1.nl;		
		var hkszd = form1.hkszd.value;
		var dwszj = form1.dwszj.value;
		var dwszq = form1.dwszq.value;
		var dwszs = form1.dwszs.value;
		if(form1.sfdb.checked){
			form1.sfdb.value = 1;
		}else{
			form1.sfdb.value = 0;
		}
		if(form1.sftk.checked){
			form1.sftk.value = 1;
		}else{
			form1.sftk.value = 0;
		}
		if(form1.sfyjgxbys.checked){
			form1.sfyjgxbys.value = 1;
		}else{
			form1.sfyjgxbys.value = 0;
		}
		if(form1.sffytw.checked){
			form1.sffytw.value = 1;
		}else{
			form1.sffytw.value = 0;
		}
		if(form1.sfwfzr.checked){
			form1.sfwfzr.value = 1;
		}else{
			form1.sfwfzr.value = 0;
		}
		if(form1.sfrhfl.checked){
			form1.sfrhfl.value = 1;
		}else{
			form1.sfrhfl.value = 0;
		}
		if(form1.sfnzf.checked){
			form1.sfnzf.value = 1;
		}else{
			form1.sfnzf.value = 0;
		}
		if(form1.sfllsf.checked){
			form1.sfllsf.value = 1;
		}else{
			form1.sfllsf.value = 0;
		}
		if(form1.sfczjyyhz.checked){
			form1.sfczjyyhz.value = 1;
		}else{
			form1.sfczjyyhz.value = 0;
		}
		if(form1.sfjsdx.checked){
			form1.sfjsdx.value = 1;
		}else{
			form1.sfjsdx.value = 0;
		}
		if(form1.sfcjpx.checked){
			form1.sfcjpx.value = 1;
		}else{
			form1.sfcjpx.value = 0;
		}
		if(form1.sfjszyzd.checked){
			form1.sfjszyzd.value = 1;
		}else{
			form1.sfjszyzd.value = 0;
		}
		if(dwszj != ""){
			hkszd = dwszj;
		}else if(dwszq != ""){
			hkszd = dwszq;
		}else{
			hkszd = dwszs;
		}
		
		if(form1.sfzhm.value == "" ){
			alert("身份证号为必添项，请填写完全！");
			form1.sfzhm.focus();
			return;
		}else{
			if(!checksfzh(form1.sfzhm.value)){
			form1.sfzhm.focus();
			return;
			}
		}
		
		if(form1.xb.value == "" ){
			alert("性别为必添项，请选择一个！");
			form1.xb.focus();
			return;
		}
		if(form1.xm.value == "" ){
			alert("姓名项为必添项，请填写完全！");
			form1.xm.focus();
			return;
		}
		if(form1.mz.value == "" ){
			alert("民族项为必添项，请选择一个！");
			form1.mz.focus();
			return;
		}
		if(form1.hjxz.value == "" ){
			alert("带*项为必添项，请选择一个！");
			form1.hjxz.focus();
			return;
		}
		if(form1.rylb.value == "" ){
			alert("人员类别项为必添项，请选择一个！");
			form1.rylb.focus();
			return;
		}
		if(hkszd == "" ){
			alert("户口所在地项为必添项，请选择一个！");
			form1.dwszs.focus();
			return;
		}
		if(form1.whcd1.value == "" ){
			alert("文化程度项为必添项，请选择一个！");
			form1.whcd1.focus();
			return;
		}
		if(form1.qzgz1.value == "" && form1.gz_qzgz1 == undefined ){
			alert("工种项为必添项，请选择一个！");
			form1.qzgz1.focus();
			return;
		}else if(form1.qzgz1.value != "" && form1.gz_qzgz1 == undefined){
			alert("工种选择后，必须点添加才能继续操作");
			return;
		}
		if(form1.init_zyjn.value != "" && form1.jn_iz == undefined){
			alert("职业技能选择后，必须点添加才能继续操作");
			return;
		}
		if(form1.init_jywy.value != "" && form1.wy_ij == undefined){
			alert("具有外语选择后，必须点添加才能继续操作");
			return;
		}*/
		form1.action = "<%=request.getContextPath()%>/servlet/grqz/GrqzServlet?flag=3";
		form1.bc.dispacted = true;
		form1.cz.dispacted = true;
		form1.zyjntj.dispacted = true;
		form1.zyjnsc.dispacted = true;
		form1.wytj.dispacted = true;
		form1.wysc.dispacted = true;
		form1.gztj.dispacted = true;
		form1.gzsc.dispacted = true;
        form1.submit();
	}
	function doSubmit(){
		form1.bc.disabled = true;
		form1.cz.disabled = true;
		form1.action="<%=request.getContextPath()%>/servlet/grqz/GrqzServlet?flag=1";
		form1.submit();
	}
</script>
</head>
<body>
<form name="form1" action="" method="post">
<table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12"> 
			当前位置：职业介绍 &gt; 个人求职 &gt; 求职登记</td >
	</tr>
	<tr>
		<td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td >
	</tr>
	<tr>
		<td height="20" valign="bottom">
		<table border="0" cellpadding="0" cellspacing="0" >
            <tr >
              <td ><table border="0" cellspacing="0" cellpadding="0">
                  <tr>
						<td valign="middle" background="<%=request.getContextPath()%>/styles/images/right/tagm_on_bg.gif" class="white" style="padding-left:10px;padding-top:2px">登记信息</td >
						<td><img src="<%=request.getContextPath()%>/styles/images/right/tagr_on_x.gif" width="23" height="18"></td >
                  </tr>
              </table></td>
              <td><table border="0" cellspacing="0" cellpadding="0">
                 <tr>
					 <td background="<%=request.getContextPath()%>/styles/images/right/tagm_off_bg.gif" style="padding-top:2px">
					 查看失业信息
					 </td >
              <td ><img src="<%=request.getContextPath()%>/styles/images/right/tagr_off_all.gif" width="23" height="18"></td >
            </tr >
              </table></td >
              <td ><table border="0" cellspacing="0" cellpadding="0">
                  <tr >
                      <td background="<%=request.getContextPath()%>/styles/images/right/tagm_off_bg.gif"style="padding-top:2px"><a href="#" class="link04">查看培训信息</a></td >
                      <td ><img src="<%=request.getContextPath()%>/styles/images/right/tagr_off_end.gif" width="23" height="18"></td >
                  </tr >
              </table>
            </td > 
          </tr >
      </table>
    </td > 
  </tr >
</table>
<table width="98%" align="center" border="0" cellpadding="0" cellspacing="0"  
	onClick="collapseCon('1');" class="titlehand">
	<tr > 
		<td width="60"> <table width="38" border="0" cellspacing="0" cellpadding="0">
				<tr> 
					<td width="30"><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td >
					<td width="8"><img src="<%=request.getContextPath()%>/styles/images/right/ico_up.gif" id="imgmini1"></td >
				</tr >
		</table></td >
		<td valign="bottom">++登记信息++&nbsp;&nbsp;&nbsp;提示：[个人初始登记有效期为:15天,使用修改功能可以延长有效期:12次]</td >
	</tr >
</table>
<table width="98%" border="0" cellspacing="0" cellpadding="0" style="display:block" id="c1" align="center" style="word-break:break-all;width:fixed">
  <tr >
    <td>
	    <table width="100%" border="0" cellspacing="1" cellpadding="0"   >
        <tr class="line1">
          <td width="13%" align="right"><span class="redtxt">*</span>身份证号码</td >
          <td width="20%"><INPUT  name="sfzhm" style="WIDTH: 100%"  value="${sfzhm }" /></td >
          <td width="13%" align="right" ><span class="redtxt">*</span>性　　别</td >
          <td width="20%">
          	<select name="xb" size="1"  style="WIDTH: 100%" disabled>
          	${Sex }
				
            </select></td >
          <td width="13%" align="right">年　　龄</td >
          <td width="20%"><INPUT  name="nl"   style="WIDTH: 100%" value="" disabled></td >
        </tr>
        <tr class="line2">
          <td align="right"><span class="redtxt">*</span>姓　　名</td >
          <td ><INPUT  name="xm" maxlength="32"  style="WIDTH: 100%" value=""></td >
          <td align="right"><span class="redtxt">*</span>民　　族</td >
          <td ><select name="mz" size="1"  style="WIDTH: 100%" >
			${Nation }		
            </select></td >
          <td align="right">政治面貌</td >
          <td ><select name="zzmm" size="1"  style="WIDTH: 100%" >
			${Politicsaspect }	
            </select>                </td >
        </tr > 
        <tr class="line1">
          <td align="right">婚姻状况</td >
          <td ><select name="hyzk" size="1"  style="WIDTH: 100%" >
			${Marriage }		
            </select></td >
          <td align="right"><span class="redtxt">*</span>户籍性质</td >
          <td ><select name="hjxz" size="1"  style="WIDTH: 100%" >
			${Rprtype }
            </select></td >            
          <td align="right"><span class="redtxt">*</span>人员类别</td >
          <td ><select name="rylb" size="1"  style="WIDTH: 100%" >
			${Personneltype }		
              </select></td >
        </tr >
        <tr class="line2">
          <td align="right" >健康状况</td >
          <td ><select name="jkzk" size="1"  style="WIDTH: 100%">
         	${Healthstate }	 
               </select>
          </td >
		 <td align="right">
				     <table border="0" cellpadding="0" cellspacing="0">
							<tr class="line2" id="id1"  >
                <td align="right">残疾状况</td >
             </tr >
				    </table></td>
				 <td class="line2" colspan="3">
			     <table border="0" cellpadding="0" cellspacing="0" width="100%" > 
             <tr id="id2"  >
               <td ><select name="cjzk" size="1"  style="WIDTH: 100%" >
                 ${Deformity } 
	               </select></td >				
             </tr >
		      </table></td >
        </tr >
        <tr class="line1">
          <td align="right">视　　力</td >
          <td >左<INPUT  name="zysl" maxlength="3" style="WIDTH: 34%" value="">
            右 <INPUT  name="yysl"   maxlength="3"  style="WIDTH: 34%" value="">
            </td >
          <td align="right">身　　高</td >
          <td ><INPUT  name="sg"   maxlength="3" style="WIDTH: 65%" value="">(厘米)</td >
          <td align="right">体　　重</td >
          <td ><INPUT  name="tz"   maxlength="3"  style="WIDTH: 65%" value="">(公斤)</td >
        </tr >
  
        <tr class="line2">
        <td align="right"><span class="redtxt">*</span>户口所在地</td>
        <td ><select name="dwszs" style="WIDTH: 100%" onchange="common(initCity(),'hkszd')">
            ${Regioncode }	
            </select></td>
        <td align="right" >市(区\县)</td>
        <td id="sqx" ><select name="dwszq" style="WIDTH: 100%" onchange="initVillage()">
            </select></td>
        <td  align="right" >街(镇\乡)</td>
        <td id="jzx">
            <select name="dwszj" style="WIDTH: 100%" >
            </select>
        </td>
        </tr >
        
			<tr class="line2">
				<td align="right"><span class="redtxt">*</span>文化程度</td >
				<td><select name="whcd1"  style="width:100%" >
				 ${Educationallevel }	
				</select>
				</td>
				<td align="right">所学专业</td >
				<td ><input  name="sxzy" maxlength="32"   style="WIDTH: 100%" value=""></td >
				<td align="right">毕业时间</td >
				<td ><input  name="bysj" maxlength="32"   style="WIDTH: 100%" value=""></td >
			</tr>
				<tr class="line1">
					<td align="right">毕业学校</td >
					<td colspan="5"><input  name="byxx" maxlength="32"   style="WIDTH: 100%" value=""></td >
					
				</tr>
				
				<tr class="line2">
					<td align="right"><span class="redtxt">*</span>固定电话</td >
					<td><INPUT  name="lxdh"    style="WIDTH: 100%" value="" maxlength="32"></td >
					<td width="12%" align="right" ><span class="redtxt">*</span>手　机</td >
					<td width="21%" ><INPUT  name="sj"   maxlength="11"  style="WIDTH: 100%" value="">
					</td>
					<td align="right">E-mail</td >
					<td width="21%"><INPUT  name="email" maxlength="48"  style="WIDTH: 100%" value="">
					</td >
				</tr>
				<tr class="line1">
					<td align="right">邮政编码</td >
					<td ><INPUT  name="yzbm" maxlength="6"   style="WIDTH: 100%" value=""></td >
					<td align="right">联系人</td >
					<td ><INPUT  name="lxr" maxlength="32"    style="WIDTH: 100%" value=""></td >
					<td align="right" >联系人电话</td >
					<td ><INPUT  name="lxrdh" maxlength="32"   style="WIDTH: 100%" value=""></td >
				</tr>
				<tr class="line2">
				<td width="13%" align="right">居住地址</td >
				 <td colspan="5"><INPUT  name="jzdz" maxlength="32"   style="WIDTH: 100%" value=""></td >
				</tr >
				<tr class="line1">
					<td align="right">第二学历</td >
					<td colspan="5"><textarea name="qtxl"  style="width:100%" ></textarea></td >
				</tr>
				<tr class="line2"> 
		          <td width="13%" align="right" >工作简历</td >
				  <td class="line1" colspan="5"><textarea name="gzjl" style="width:100%" ></textarea> </td >
		          </tr >
				<tr class="line1">
				<td width="13%" align="right">其他说明</td >
				 <td colspan="5"><textarea name="qtsm" style="width:100%"></textarea></td >
				</tr >
			</table>
		</td >
	</tr>
</table>
	
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="titlehand" onClick="collapseCon('4');">
	<tr >
		<td width="60"> 
			<table width="37" border="0" cellpadding="0" cellspacing="0">
				<tr > 
					<td width="30"><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif" height="19"></td >
					<td width="7"><img src="<%=request.getContextPath()%>/styles/images/right/ico_up.gif" id="imgmini4"></td >
				</tr >
			</table>
		</td >
		<td valign="bottom">其它信息</td >
	</tr >
</table>
	 
<TABLE width="98%" border=0  align="center" cellPadding=0 cellSpacing=1  class="tablebody" style="display:block" id="c4">
  <tr class="line2">
      <td width="12%" align="right"><input name="sfdb" type="checkbox"  class="radio" value=""></td >
      <td colspan="18%">          低保人员</td >
      <td width="12%" align="right" ><input name="sftk" type="checkbox" class="radio" value="" ></td >
      <td width="18%" >          特困人员</td >
      <td width="12%" align="right" ><input type="checkbox" name="sfyjgxbys"  class="radio" value="" >  </td >
      <td width="26%" > 应届高校毕业生 </td >
  </tr >
  <tr class="line1">
      <td width="12%" align="right"><input name="sffytw" type="checkbox"  class="radio" value="" ></td >
      <td colspan="18%">          复员退伍</td >
      <td width="12%" align="right" ><input type="checkbox" name="sfwfzr"  class="radio" value=""></td >
      <td width="18%" >          外埠转入</td >
      <td width="12%" align="right" ><input type="checkbox" name="sfrhfl"  class="radio" value="">  </td >
      <td width="26%" > 是否人户分离 </td >
  </tr >
  <tr class="line2">
      <td width="12%" align="right"><input name="sfnzf" type="checkbox"  class="radio" value="" ></td >
      <td colspan="18%">          农转非</td >
      <td width="12%" align="right" ><input type="checkbox" name="sfllsf"  class="radio" value="" ></td >
      <td width="18%" >          两劳释放</td >
      <td width="12%" align="right" ><input type="checkbox" class="radio" name="sfczjyyhz" value="">  </td >
      <td width="26%" > 是否持再就业优惠证</td >
  </tr >
</table>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="titlehand" onClick="collapseCon('5');">
  <tr>
    <td width="60"> 
      <table width="37" border="0" cellpadding="0" cellspacing="0">
        <tr > 
          <td width="30"><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif" height="19"></td >
          <td width="7"><img src="<%=request.getContextPath()%>/styles/images/right/ico_up.gif" id="imgmini5"></td >
        </tr >
      </table>
    </td >
    <td valign="bottom">具有信息</td >
  </tr >
</table>
	
      <table width="98%" border="0" cellspacing="0"  align="center" cellpadding="0" style="display:block" id="jnTable">
        <tr  align="center" >
          <td valign="top"> 
            <table id="zyjnTable" width="100%" border="0" cellpadding="0" cellspacing="1">
              <tr class="line1"> 
                <td width="13%" align="right">职业技能</td >
				<td id="o2" width="19%"><select name="init_zyjn" size="1"  style="WIDTH: 100%" onclick="izshowDialog()">
				  </select></td >
                <td width="10%" align="right">技术等级</td >
                <td width="18%">
									<select name="init_jsdj" size="1"  style="WIDTH: 100%" >
									${Qualification}
				    </select></td >
                <td width="10%" align="right">从事年限</td >
                <td width="15%"> <INPUT  name="init_csnx"  style="WIDTH: 100%" maxlength="2"> </td>
                <td width="7%" align="center" > 
                  <input name="zyjntj" type="button"  value="添加" class="BUTTON2" onClick="addZyjnRows()"></td >
                <td width="8%" align="center"> 
                  <input name="zyjnsc" type="button"  value="删除" class="BUTTON2" onClick="delRows(zyjnTable)"></td >
              </tr >
            </table>
            <table id="jywyTable" width="100%"  align="center" border="0" cellpadding="0" cellspacing="1"  style="word-break:break-all;width:fixed">
              <tr class="line2" align="center" > 
                <td width="13%" align="right">具有外语 </td >
                <td width="19%"><select name="init_jywy" size="1"  style="WIDTH: 100%">
								${Language }	
                </select></td >
                <td width="10%" align="right">熟练程度 </td >
                <td width="18%"><select name="init_wyslcd" size="1" style="WIDTH: 100%">
								${Proficiency }
                </select></td >
                <td width="10%" align="right">外语说明 </td >
                <td width="15%"><INPUT  name="init_wysm" style="WIDTH: 100%"></td >
                <td width="7%" align="center"> 
                <input name="wytj" type="button"  value="添加" class="BUTTON2" onClick="addJywyRows()"></td >
                <td width="8%" align="center"> 
                  <input name="wysc" type="button"  value="删除" class="BUTTON2" onClick="delRows(jywyTable)"></td >
              </tr >
			</table>
			  <table  width="100%" border="0" cellpadding="0" align="center"  cellspacing="1">
              <tr class="line1" align="center" >
                <td width="13%" align="right">计算机等级</td >
                <td width="19%"><select name="jsjdj" size="1"  style="WIDTH: 100%" >
                ${Computergrade }
                </select></td >
                <td width="10%" align="right">熟练程度</td >
                <td width="18%"><select name="jsjslcd" size="1" style="WIDTH: 100%" >
                ${Proficiency }
                </select></td >
				<td width="10%"></td><td width="15%"></td><td width="7%"></td><td width="8%"></td>
              </tr >
            </table>
            </td >
        </tr >
      </table>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="titlehand" onClick="collapseCon('6');">
  <tr>
    <td width="60"> 
      <table width="37" border="0" cellpadding="0" cellspacing="0">
        <tr > 
          <td width="30"><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif" height="19"></td >
          <td width="7"><img src="<%=request.getContextPath()%>/styles/images/right/ico_up.gif" id="imgmini6"></td >
        </tr >
      </table>
    </td >
    <td valign="bottom">择业信息</td >
  </tr >
</table>
<table width="98%" border="0" cellspacing="0" align="center"  cellpadding="0" id="c6" style="display:block">
  <tr align="center" >
    <td>
    	<TABLE width="100%" border=0 cellPadding=0 cellSpacing=1 class="tablebody">
        <tr class="line1">
          <td width="13%" align="right">单位性质</td >
          <td width="22%" ><select name="dwxz" size="1"  style="WIDTH: 100%" >
           ${Orgtype } 
            </select></td >
          <td width="10%" align="right">单位行业</td >
          <td width="21%" ><select name="dwhy" size="1"  style="WIDTH: 100%">
							${Industry }
          </select></td >
          <td width="11%" align="right">经济类型</td >
          <td width="23%" ><select name="dwjjlx" size="1"  style="WIDTH: 100%">
					${Regtype }
          </select></td >
        </tr>
        <tr class="line2">
          <td align="right">工作地区</td >
          <td >
		     <select name="gzdq" size="1"  style="WIDTH: 100%">
			${Regioncode }
             </select></td>
             <td></td>
             <td></td>
             <td></td>
             <td></td>
        </tr>
      </table>
		  <table width="100%" border="0" cellpadding="0" cellspacing="1">
		    <tr class="line2">
		      <td width="14%" align="right">是否接收短信</td >
		      <td width="17%"><input name="sfjsdx" type="checkbox" value="1"  class="radio" ></td >
		      <td width="14%" align="right">是否参加培训</td >
		      <td width="14%"><input name="sfcjpx" type="checkbox" value="1"  class="radio"></td >
		      <td width="18%" align="right">是否接受职业指导</td >
		      <td width="23%"><input name="sfjszyzd" type="checkbox" value="1"  class="radio"></td >
		    </tr>
		</table>
    </td >
  </tr >
</table>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="titlehand" onClick="collapseCon('7');">
  <tr >
    <td width="60"> 
      <table width="37" border="0" cellpadding="0" cellspacing="0">
        <tr > 
          <td width="30"><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif" height="19"></td >
          <td width="7"><img src="<%=request.getContextPath()%>/styles/images/right/ico_up.gif" id="imgmini7"></td >
        </tr >
      </table>
    </td >
    <td valign="bottom">择业工种</td >
  </tr >
</table>
<table width="98%"  id="c7"
  border=0 cellPadding=0 cellSpacing=1 align="center"   class="tablebody" style="display:block"  >
  <tr align="center" >
  	<td>
			<table id="qzgzTable" width="100%" 
			  border=0 cellPadding=0 cellSpacing=1  class="tablebody" style="display:block"  >
			  <tr class="line1" align="center">
			    <td width="40"><span class="redtxt">*</span>工种</td>
				<td id="o1" width="110"><select name="qzgz1" size="1"  style="WIDTH: 100%"  onclick="showDialog()">
						</select></td >
			    <td width="50">用工形式</td>
				<td width="80"><select name="ygxs1" size="1"  style="WIDTH: 100%">
						${Employtype }
                  </select></td >
			    <td width="50" align="right">月薪</td>
				<td width="140">
					<div id="yx" style="display:">
					<table><tr><td><input name="zdyx1" type="text" style="width:40px" >
                  至

                  <input name="zgyx2" type="text" style="width:40px" >
					元</td></tr></table>
					</div>
				</td >
					<!--  -->
			    <td width="40"><input  type="button" name="gztj" value="添加" class="BUTTON2" onClick="addqzgzRows()"></td >
			    <td width="40"><input  type="button" name="gzsc" value="删除" class="BUTTON2" onClick="delRows(qzgzTable)"></td >
			  </tr >
			</table>
		</td>
	</tr>	
</table>	
<TABLE width="98%" border=0 cellPadding="0" cellSpacing=1 align="center"   class="tablebody">
  <tr align="center">
    <td colspan="9">
      &nbsp;&nbsp; 
  </tr >
  <tr align="center">
    <td colspan="9" class="line2">
      <input  type="button" class="BUTTONs3" name="bc"  value="保 存" onClick="baochun()"> 
      &nbsp;&nbsp; 
      <INPUT name="cz" type="reset" class="BUTTONs3" id="cz" value="取 消" onClick="valueReset();">
      <input name="hkszd" type="hidden">
  </tr >
</TABLE>
</form>
</body>
</html>