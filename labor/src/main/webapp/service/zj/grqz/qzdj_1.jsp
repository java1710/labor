<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title></title>
<jsp:include flush="true" page="/common/alert.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script src="<%=request.getContextPath() %>/js/commonjs.js"></script>
<script src="<%=request.getContextPath() %>/js/jquery-1.11.1.js"></script>
<script>

$(function(){
	
	$("#mz").load("../../nations/01");
});



</script>
</head>
<body>
<form name="form1" action="qzdj_2.do" method="post">
<table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td height="20" valign="bottom">
		<img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12"> 
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
		<td valign="bottom">登记信息&nbsp;&nbsp;&nbsp;提示：[个人初始登记有效期为:15天,使用修改功能可以延长有效期:12次]</td >
	</tr >
</table>
<table width="98%" border="0" cellspacing="0" cellpadding="0" style="display:block" id="c1" align="center" style="word-break:break-all;width:fixed">
  <tr >
    <td>
	    <table width="100%" border="0" cellspacing="1" cellpadding="0"   >
        <tr class="line1">
          <td width="13%" align="right"><span class="redtxt">*</span>身份证号码</td >
          <td width="20%"><INPUT  id="sfzhm" name="sfzhm" style="WIDTH: 100%"  value="" /></td >
          <td width="13%" align="right" ><span class="redtxt">*</span>性　　别</td >
          <td width="20%"><select name="xb" id="xb" size="1"  style="WIDTH: 100%" disabled></select></td >
          <td width="13%" align="right">年　　龄</td >
          <td width="20%"><INPUT id="nl"  name="nl"   style="WIDTH: 100%" value="${Age} " disabled></td >
        </tr>
        <tr class="line2">
          <td align="right"><span class="redtxt">*</span>姓　　名</td >
          <td ><INPUT id="xm" name="xm" maxlength="32"  style="WIDTH: 100%" value="${Name}"></td >
          <td align="right"><span class="redtxt">*</span>民　　族</td >
          <td ><select id="mz" name="mz" size="1"  style="WIDTH: 100%" ></select></td >
          <td align="right">政治面貌</td >
          <td ><select id="zzmm" name="zzmm" size="1"  style="WIDTH: 100%" ></select></td >
        </tr > 
        <tr class="line1">
          <td align="right">婚姻状况</td >
          <td ><select id="hyzk" name="hyzk" size="1"  style="WIDTH: 100%" ></select></td >
          <td align="right"><span class="redtxt">*</span>户籍性质</td >
          <td ><select id="hjxz" name="hjxz" size="1"  style="WIDTH: 100%" ></select></td >            
          <td align="right"><span class="redtxt">*</span>人员类别</td >
          <td ><select id="rylb" name="rylb" size="1"  style="WIDTH: 100%" ></select></td >
        </tr >
        <tr class="line2">
          <td align="right" >健康状况</td >
          <td ><select id="jkzk" name="jkzk" size="1"  style="WIDTH: 100%"></select>
          </td >
		 <td align="right">
				     <table border="0" cellpadding="0" cellspacing="0">
							<tr class="line2" id="id1"  ><td align="right">残疾状况</td ></tr >
				    </table>
		 </td>
		 <td class="line2" colspan="3">
			     <table border="0" cellpadding="0" cellspacing="0" width="100%" > 
             <tr id="id2"  >
               <td ><select id="cjzk" name="cjzk" size="1"  style="WIDTH: 100%" ></select></td >				
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
        <td ><select id="dwszs" name="dwszs" style="WIDTH: 100%"></select></td>
        <td align="right" >市(区\县)</td>
        <td id="sqx" ><select id="dwszq" name="dwszq" style="WIDTH: 100%" ></select></td>
        <td  align="right" >街(镇\乡)</td>
        <td id="jzx"><select id="dwszj" id="dwszj" name="dwszj" style="WIDTH: 100%" ></select></td>
        </tr >
        
			<tr class="line2">
				<td align="right"><span class="redtxt">*</span>文化程度</td >
				<td><select id="whcd1" name="whcd1" style="width:100%" ></select></td>
				<td align="right">所学专业</td >
				<td ><input  name="sxzy" maxlength="32"   style="WIDTH: 100%" value=""></td >
				<td align="right">毕业时间</td >
				<td ><input  name="bysj" maxlength="32"   style="WIDTH: 100%" value="" maxlength="8"></td >
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
				 <td colspan="5"><textarea id="qtsm" name="qtsm" style="width:100%"></textarea></td >
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
				<td id="o2" width="19%"><select id="init_zyjn" name="init_zyjn" size="1"  style="WIDTH: 100%"></select></td >
                <td width="11%" align="right">技术等级</td >
                <td width="18%"><select id="init_jsdj" name="init_jsdj" size="1"  style="WIDTH: 100%" ></select></td >
                <td width="11%" align="right">从事年限</td >
                <td width="15%"> <INPUT  id="init_csnx" name="init_csnx"  style="WIDTH: 100%" maxlength="2"> </td>
                <td width="7%" align="center" > 
                  <input id="zyjntj" name="zyjntj" type="button"  value="添加" class="BUTTON2"></td >
                <td width="8%" align="center"> 
                  <input id="zyjnqc" type="button"  value="清空" class="BUTTON2"></td >
              </tr >
            </table>
            <div id="panel_1" > </div>
            <!-- 外语 div+css+jQuery -->
            <table id="jywyTable" width="100%"  align="center" border="0" cellpadding="0" cellspacing="1"  style="word-break:break-all;width:fixed">
              
              <tr class="line2" align="center" > 
                <td width="13%" align="right">具有外语 </td >
                <td width="19%">
                	<select class="init_jywy" id="init_jywy" size="1"  style="WIDTH: 100%"></select></td >
                <td width="11%" align="right">熟练程度 </td >
                <td width="18%">
                	<select id="init_wyslcd" size="1" style="WIDTH: 100%"></select>
                </td >
                <td width="11%" align="right">外语说明 </td >
                <td width="15%"><INPUT  id="init_wysm" style="WIDTH: 100%"></td >
                <td width="7%" align="center"> 
                	<input id="wytj" name="wytj" type="button"  value="添加" class="BUTTON2"></td >
                <td width="8%" align="center"> 
                  	<input id="wyqc" name="wyqc" type="button"  value="清空" class="BUTTON2"></td >
              </tr >             	
			</table>
			<div id="panel_2" > </div>
			  <table  width="100%" border="0" cellpadding="0" align="center"  cellspacing="1">
              <tr class="line1" align="center" >
                <td width="13%" align="right">计算机等级</td >
                <td width="19%"><select id="jsjdj" name="jsjdj" size="1"  style="WIDTH: 100%" ></select></td >
                <td width="11%" align="right">熟练程度</td >
                <td width="18%"><select id="jsjslcd" name="jsjslcd" size="1" style="WIDTH: 100%" ></select></td >
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
          <td width="22%" ><select id="dwxz" name="dwxz" size="1"  style="WIDTH: 100%" ></select></td >
          <td width="10%" align="right">单位行业</td >
          <td width="21%" ><select id="dwhy" name="dwhy" size="1"  style="WIDTH: 100%"></select></td >
          <td width="11%" align="right">经济类型</td >
          <td width="23%" ><select id="dwjjlx" name="dwjjlx" size="1"  style="WIDTH: 100%"></select></td >
        </tr>
        <tr class="line2">
          <td align="right">工作地区</td >
          <td ><select id="gzdq" name="gzdq" size="1"  style="WIDTH: 100%"></select></td>
             <td></td>
             <td></td>
             <td></td>
             <td></td>
        </tr>
      </table>
		  <table width="100%" border="0" cellpadding="0" cellspacing="1">
		    <tr class="line2">
		      <td width="14%" align="right">是否接收短信</td >
		      <td width="17%"><input name="sfjsdx" type="checkbox" value=""  class="radio" ></td >
		      <td width="14%" align="right">是否参加培训</td >
		      <td width="14%"><input name="sfcjpx" type="checkbox" value=""  class="radio"></td >
		      <td width="18%" align="right">是否接受职业指导</td >
		      <td width="23%"><input name="sfjszyzd" type="checkbox" value=""  class="radio"></td >
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
			<table id="qzgzTable" width="100%" border=0 cellPadding=0 cellSpacing=1  class="tablebody" style="display:block"  >
			  <tr class="line1" align="center">
			    <td width="40"><span class="redtxt">*</span>工种</td>
				<td id="o1" width="110"><select class="qzgz1" id="qzgz1" name="qzgz1" size="1"  style="WIDTH: 100%"></select></td >
			    <td width="50">用工形式</td>
				<td width="80"><select class="ygxs1" id="ygxs1" name="ygxs1" size="1"  style="WIDTH: 100%"></select></td >
			    <td width="50" align="right">月薪</td>
				<td width="140">
					<div id="yx" style="display:">
					<table><tr><td>
					<input id="zdyx1" name="zdyx1" type="text" style="width:40px" maxlength="6">
                  	至
					<input id="zgyx2" name="zgyx2" type="text" style="width:40px" maxlength="6" >
					元</td></tr></table>
					</div>
				</td >
					<!--  -->
			    <td width="40"><input  type="button" id="gztj" name="gztj" value="添加" class="BUTTON2" ></td >
			    <td width="40"><input  type="button" id="gzqc" name="gzsc" value="清空" class="BUTTON2"></td >
			  </tr >
			</table>
			
		</td>
	</tr>	
</table>
<table width="98%"  id="c8"
  border=0 cellPadding=0 cellSpacing=1 align="center"   class="tablebody" style="display:block"  >
  <tr align="center" >
  	<td>
			<div id="panel_3"></div>
			
		</td>
	</tr>	
</table>
<!-- <div id="panel_3"></div>	 -->
<TABLE width="98%" border=0 cellPadding="0" cellSpacing=1 align="center"   class="tablebody">
  <tr align="center">
    <td colspan="9">
      &nbsp;&nbsp; 
  </tr >
  <tr align="center">
    <td colspan="9" class="line2">
      <input  type="button" id="baocun" class="BUTTONs3" name="bc"  value="保 存"> 
      &nbsp;&nbsp; 
      <INPUT name="cz" type="reset" class="BUTTONs3" id="cz" value="取 消" onClick="valueReset();">
      <input name="hkszd" type="hidden">
  </tr >
</TABLE>
</form>
</body>
</html>