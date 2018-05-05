<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
</head>
<body  >
<form method="post" action="" name="form1" >
<table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12"> 
			当前位置：职业介绍 &gt; 个人求职 &gt; 求职登记</td >
	</tr>
	<tr>
		<td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td >
	</tr>

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
	</tr >
</table>
<table width="98%" border="0" cellspacing="0" cellpadding="0" style="display:block" id="c1" align="center">
  <tr >
    <td>
	    <table width="100%" border="0" cellspacing="1" cellpadding="0"   >
        <tr class="line1">
          <td width="14%" align="right">身份证号码</td >
          <td width="22%"><INPUT  name="bip_citizenid" style="WIDTH: 100%" value=""/></td >
          <td width="12%" align="right" >性　　别</td >
          <td width="16%"><INPUT  name="bip_citizenid" style="WIDTH: 100%" value=""/></td >
          <td width="12%" align="right">年　　龄</td >
          <td width="15%"><INPUT  name="bip_age" style="WIDTH: 100%" value="" readonly></td >
          <td width="9%" rowspan="5" align="center" class="line1" valign="top">

			</td >
        </tr>
        <tr class="line2">
          <td align="right">姓　　名</td >
          <td ><INPUT  name="bip_name" maxlength="32"  style="WIDTH: 100%" value=""></td >
          <td align="right">民　　族</td >
          <td ><INPUT  name="bip_minzu" style="WIDTH: 100%" value="" readonly></td >
          <td align="right">政治面貌</td >
          <td ><INPUT  name="bip_zzmm" style="WIDTH: 100%" value="" readonly></td >
        </tr > 
        <tr class="line1">
          <td align="right">婚姻状况</td >
          <td ><INPUT  name="hyzk" style="WIDTH: 100%" value="" readonly></td >
          <td align="right">户籍性质</td >
          <td ><INPUT  name="hjxz" style="WIDTH: 100%" value="" readonly></td >            
          <td align="right">人员类别</td >
          <td ><INPUT  name="rylb" style="WIDTH: 100%" value="" readonly></td >
        </tr >
        <tr class="line2">
          <td align="right" >健康状况</td >
          <td ><INPUT  name="jkzk" style="WIDTH: 100%" value="" readonly>
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
               <td ><INPUT  name="cjzk" style="WIDTH: 100%" value="" readonly></td >				
             </tr >
		      </table></td >
        </tr >
        <tr class="line1">
          <td align="right">视　　力</td >
          <td >左<INPUT  name="leftsl" maxlength="3" style="WIDTH: 29%" value="">
            右

            <INPUT  name="rightsl"   maxlength="3"  style="WIDTH: 29%" value="">
            </td >
          <td align="right">身　　高</td >
          <td ><INPUT  name="sg"   maxlength="3" style="WIDTH: 50%" value="">(厘米)</td >
          <td align="right">体　　重</td >
          <td ><INPUT  name="tz"   maxlength="3"  style="WIDTH: 45%" value="">(公斤)</td >
        </tr >
      </table>
      <table width="100%" border="0" cellpadding="0" cellspacing="1">
        <tr class="line2">
         <td width="13%" align="right">户口所在</td >
          <td ><select name="bip_hkszss" size="1" style="WIDTH: 100%" >
          </select></td >
        <td width="45" align="right">省(市)</td >
          <td ><select name="bip_hkszsq" size="1"  style="WIDTH: 100%" >
          </select></td >
        <td width="45" align="right" >市(区) </td >
          <td ><select name="bip_hkszzj" size="1"  style="WIDTH: 100%" >
          </select></td >
        <td width="45" align="right">镇(街)</td >
          <td ><select name="bip_hkszjc" size="1"  style="WIDTH: 100%" >
          </select></td >
        <td width="42" align="right" >居(村)</td >
        </tr >
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center"  style="word-break:break-all;width:fixed">
        <tr class="line1"> 
          <td width="13%" align="right" >工作简历</td >
					<td class="line1"><textarea name="gzjl" style="width:100%" ></textarea> 
	      <div align="left">
			<%--input type="button" class="BUTTON2" name="tj" value="添加" onclick="showGzjl()"--%>
		  </div></td >
          </tr >
      </table>
			<table width="100%"border="0" cellpadding="0" cellspacing="1" style="display:block"  style="word-break:break-all;width:fixed">
				<tr class="line2">
					<!-- 文化程度连动 modify by ys -->
					<td width="13%" align="right">文化程度</td >
					<td width="21%"><INPUT  name="whcd1" style="WIDTH: 100%" value="" readonly>
					</td >
					<td width="33%" align="right" colspan="2"><INPUT  name="whcd2" style="WIDTH: 100%" value="" readonly>
					</td >
					<td width="20%" align="right">所学专业</td >
					<td width="13%" ><input  name="sxzy" maxlength="32"   style="WIDTH: 100%" value=""></td >
				</tr>
				<tr class="line1">
					<td align="right">毕业学校</td >
					<td colspan="3"><input  name="byxx" maxlength="32"   style="WIDTH: 100%" value=""></td >
					<td width="20%" align="right">毕业时间(YYYY-MM)</td >
					<td width="13%" ><input  name="bysj" maxlength="32"   style="WIDTH: 100%" value=""></td >
				</tr>
				<tr class="line2">
					<td align="right">第二学历</td >
					<td colspan="5"><textarea name="qtxl" maxlength="15" style="width:100%" value=""></textarea></td >
				</tr>
				<tr class="line1">
					<td align="right"><span class="redtxt">*</span>固定电话</td >
					<td><INPUT  name="lxdh"    style="WIDTH: 100%" value="" maxlength="32"></td >
					<td width="12%" align="right" ><span class="redtxt">*</span>手　机</td >
					<td width="21%" ><INPUT  name="sj"   maxlength="11"  style="WIDTH: 100%" value="">
					</td>
					<td align="right">E-mail</td >
					<td><INPUT  name="email" maxlength="48"  style="WIDTH: 100%" value="">
					</td >
				</tr>
				<tr class="line2">
					<td align="right">邮政编码</td >
					<td ><INPUT  name="yzbm" maxlength="6"   style="WIDTH: 100%" value=""></td >
					<td align="right">联系人</td >
					<td ><INPUT  name="lxr" maxlength="32"    style="WIDTH: 100%" value=""></td >
					<td align="right" >联系人电话</td >
					<td ><INPUT  name="lxrdh" maxlength="32"   style="WIDTH: 100%" value=""></td >
				</tr>
				<tr class="line1">
				<td width="13%" align="right">居住地址</td >
				 <td colspan="5"><INPUT  name="jzdz" maxlength="32"   style="WIDTH: 100%" value=""></td >
				</tr >
				<tr class="line2">
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
	
      <table width="98%" border="0" cellspacing="0"  align="center" cellpadding="0" style="display:block" id="c5">
        <tr  align="center" >
          <td valign="top"> 
            <table id="zyjnTable" width="100%" border="0" cellpadding="0" cellspacing="1">
              <tr class="line1"> 
                <td width="13%" align="right">职业技能</td >
				<td width="19%"><select name="init_zyjn" size="1"  style="WIDTH: 100%"  onBlur="javascript:changeJNDJ();">
				  <option value=""></option></select></td >
                <td width="10%" align="right">技术等级</td >
                <td width="18%">
									<select name="init_jsdj" size="1"  style="WIDTH: 100%" >
									<option value=""></option>
									
				    </select></td >
                <td width="10%" align="right">从事年限</td >
                <td width="15%"> <INPUT  name="init_csnx"    style="WIDTH: 100%" maxlength="2"> </td >
				<!-- 动态添加预留字段 -->
				<INPUT TYPE="hidden"name="sczyjn">
				<!--  -->
                <td width="7%" align="center" > 
                  <input type="button"  value="添加" class="BUTTON2" onClick="addZyjnRows()"></td >
                <td width="8%" align="center"> 
                  <input type="button"  value="删除" class="BUTTON2" onClick="delRows('zyjn')"></td >
              </tr >
            </table>
            <table id="jywyTable" width="100%"  align="center" border="0" cellpadding="0" cellspacing="1"  style="word-break:break-all;width:fixed">
              <tr class="line2" align="center" > 
                <td width="13%" align="right">具有外语 </td >
                <td width="19%"><select name="init_jywy" size="1"  style="WIDTH: 100%">
									<option value="">
                </select></td >
                <td width="10%" align="right">熟练程度 </td >
                <td width="18%"><select name="init_wyslcd" size="1" style="WIDTH: 100%">
								<option value="">
                </select></td >
                <td width="10%" align="right">外语说明 </td >
                <td width="15%"><INPUT  name="init_wysm" style="WIDTH: 100%"></td >
								<!-- 动态添加预留字段 -->
								<INPUT TYPE="hidden"name="scjywy">
								<!--  -->
                <td width="7%" align="center"> 
                <input type="button"  value="添加" class="BUTTON2" onClick="addJywyRows()"></td >
                <td width="8%" align="center"> 
                  <input type="button"  value="删除" class="BUTTON2" onClick="delRows('jywy')"></td >
              </tr >
			  </table>
			  <table  width="100%" border="0" cellpadding="0" align="center"  cellspacing="1">
              <tr class="line1" align="center" >
                <td width="13%" align="right">计算机等级</td >
                <td width="19%"><select name="jsjdj" size="1"  style="WIDTH: 100%" ><option value="">
                </select></td >
                <td width="10%" align="right">熟练程度</td >
                <td width="18%"><select name="jsjslcd" size="1" style="WIDTH: 100%" ><option value=""></select></td >
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
          <td width="22%" ><select name="dwxz" size="1"  style="WIDTH: 100%" onChange="jjlx_dis()">
            <option value=""> 
            </select></td >
          <td width="10%" align="right">单位行业</td >
          <td width="21%" ><select name="dwhy" size="1"  style="WIDTH: 100%">
						<option value="">	
          </select></td >
          <td width="11%" align="right">经济类型</td >
          <td width="23%" ><select name="dwjjlx" size="1"  style="WIDTH: 100%">
					<option value="">		
          </select></td >
        </tr>
        <tr class="line2">
          <td align="right">工作地区</td >
          <td >
		     <select name="gzdq" size="1"  style="WIDTH: 100%">
			 <option value="">
             </select></td>
          <td align="right">工作地区</td >
          <td >
		     <select name="gzdq1" size="1"  style="WIDTH: 100%">
			 <option value="">
             </select></td>
          <td align="right">工作地区</td >
          <td >
		     <select name="gzdq2" size="1"  style="WIDTH: 100%">
			 <option value="">
             </select></td>

        </tr>
      </table>
		  <table width="100%" border="0" cellpadding="0" cellspacing="1">
		    <tr class="line2">
		      <td width="14%" align="right">是否接收短信</td >
		      <td width="17%"><input name="sfjsdx" type="checkbox" value="1"  class="radio" onClick="toShowDiv()"></td >
		      <td width="14%" align="right">是否参加培训</td >
		      <td width="14%"><input name="sfcjpx" type="checkbox" value="1"  class="radio"></td >
		      <td width="18%" align="right">是否接受职业指导</td >
		      <td width="23%"><input name="sfjszyzd" type="checkbox" value="1"  class="radio"></td >
		    </tr>
		</table>
			<div id="dxsj" style="display:none">
			<table width="100%" border="0" cellspacing="1" cellpadding="0">
				<tr>
			    <td width="80" align="right">接受短信时间</td >
			    <td ><textarea name="jsdxkssj" style='width:100%' class='mask'  htcurl="url(<%=request.getContextPath() %>/common/htc/format.htc)"  rows="1" cols="10" mask='date' maxlength='10' ></textarea></td >
			    <td width="55" align="right">结束时间</td >
			    <td ><textarea name="jsdxjssj" style='width:100%' class='mask'  htcurl="url(<%=request.getContextPath() %>/common/htc/format.htc)"  rows="1" cols="10" mask='date' maxlength='10' ></textarea></td >
			  </tr>
			</table>
			</div>
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
				<td width="110"><select name="qzgz1" size="1"  style="WIDTH: 100%"  >
						<option value=""></select></td >
			    <td width="50">用工形式</td>
				<td width="60"><select name="ygxs1" size="1"  style="WIDTH: 100%" onchange="changyxrx()">
						
                  </select></td >
			    <td width="50" align="right"><input name="xs" type="text" size="6" value="月薪"  class='inputline' readonly></td>
				<td width="140">
					<div id="yx" style="display:">
					<table><tr><td><input name="zdyx1" type="text" style="width:40px" onblur="checkJe(this);">
                  至

                  <input name="zgyx1" type="text" style="width:40px" onblur="checkJe(this);">
					元</td></tr></table>
					</div>
					<div id="rx" style="display:none">
					<table><tr><td><br><input name="zdrx1" type="text" style="width:40px" onblur="checkJe(this);">
                  至

                  <input name="zgrx1" type="text" style="width:40px" onblur="checkJe(this);">
					元<br><br></td></tr></table>
					</div>
				</td >
					<!-- 动态添加预留字段 -->
					<INPUT TYPE="hidden"name="scqzgz">
					<!--  -->
			    <td width="40"><input  type="button"  value="添加" class="BUTTON2" onClick="addqzgzRows()"></td >
			    <td width="40"><input  type="button"  value="删除" class="BUTTON2" onClick="delRows('qzgz')"></td >
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
      <input  type="button" class="BUTTONs3" name="bc"  value="保 存" onClick="toSubmit();"> 
      &nbsp;&nbsp; 
      <INPUT name="cz" type="reset" class="BUTTONs3" id="cz" value="取 消" onClick="valueReset();">
  </tr >
</TABLE>
</form>
</body>
</html>