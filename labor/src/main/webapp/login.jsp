<%@ page contentType="text/html; charset=UTF-8"%> 
<%@ include file="/common/import.jsp"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>：：劳动力市场：：</title>
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
</head>
<script>
function onKeyDownEnter(){
	if (window.event.keyCode==13)
	{
		confirmlogin();
	}
}

function confirmlogin(){

	if (form1.userloginname.value==""){
		alert("用户名不能为空！");
		form1.userloginname.focus();
		return;
	}
	if (form1.userpassword.value==""){
		alert("密码不能为空！");
		form1.userpassword.focus();
		return;
	}
	window.location.href="<%=request.getContextPath()%>/index.jsp";
}
</script>
<logic:equal name="flag" value="pswdx">
	<script>alert("用户名或密码错误");</script>
</logic:equal>
<body>
<form name="form1" method="post" action="">
<table width="778" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="swflash.cab#version=7,0,19,0" width="615" height="117">
      <param name="movie" value="<%=request.getContextPath()%>/styles/images/mh/logo.swf">
      <param name="quality" value="high">
      <embed src="<%=request.getContextPath()%>/styles/images/mh/logo.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="615" height="117"></embed>
    </object></td>
    <td width="163" height="117" valign="top" background="<%=request.getContextPath()%>/styles/images/mh/toprightbg.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="60" height="40">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="20" align="right">用户名：</td>
        <td><input type="text" name="userloginname" style="width:80" maxlength="20" value=""></td>
      </tr>
      <tr>
        <td height="20" align="right">密　码：</td>
        <td><input type="password" name="userpassword" maxlength="15" style="width:80"></td>
      </tr>
      <tr>
        <td height="30">&nbsp;</td>
        <td align="right" style="padding-right:22"><a href="javascript:onclick=confirmlogin()" onkeydown="onKeyDownEnter()" name="denglu"><img src="<%=request.getContextPath()%>/styles/images/mh/bt_logon.gif" width="43" height="17" border="0"></a></td>
      </tr>
    </table></td>
  </tr>
</table></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="602" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="188"><img src="<%=request.getContextPath()%>/styles/images/mh/tzgg_tit.gif" width="188" height="39"></td>
            <td width="8"><img src="<%=request.getContextPath()%>/styles/images/mh/scdt_t1.gif" width="8" height="39"></td>
            <td width="406"><img src="<%=request.getContextPath()%>/styles/images/mh/scdt_t2.gif" width="139" height="39"><img src="<%=request.getContextPath()%>/styles/images/mh/scdt_t3.gif" width="267" height="39"></td>
          </tr>
          <tr>
            <td valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="3">
              <tr>
                <td width="12%" align="right"><img src="<%=request.getContextPath()%>/styles/images/mh/arrow1.gif" width="8" height="8"></td>
                <td width="88%" height="20"><a href="syym/tz1.htm" target="_blank">劳动和社会保障局通告 京劳社发〔2006〕4号</a></td>
              </tr>
              <tr>
                <td align="right"><img src="<%=request.getContextPath()%>/styles/images/mh/arrow1.gif" width="8" height="8"></td>
                <td height="20"><a href="syym/tz2.htm" target="_blank">关于促进高失业率地区失业人员就业有关问题的通知</a></td>
              </tr>
              <tr>
                <td align="right"><img src="<%=request.getContextPath()%>/styles/images/mh/arrow1.gif" width="8" height="8"></td>
                <td height="20"><a href="syym/tz3.htm" target="_blank">关于贯彻《国务院关于解决农民工问题的若干意见》的意见</a></td>
              </tr>
              <tr>
                <td align="right"><img src="<%=request.getContextPath()%>/styles/images/mh/arrow1.gif" width="8" height="8"></td>
                <td height="20"><a href="syym/tz4.htm" target="_blank">关于加强旅行社劳动管理工作有关问题的通知</a></td>
              </tr>
              <tr>
                <td align="right"><img src="<%=request.getContextPath()%>/styles/images/mh/arrow1.gif" width="8" height="8"></td>
                <td height="20"><a href="syym/tz5.htm" target="_blank">关于自谋职业人员享受社会保险补助政策衔接有关问题的通知</a></td>
              </tr>
              <tr>
                <td align="right"><img src="<%=request.getContextPath()%>/styles/images/mh/arrow1.gif" width="8" height="8"></td>
                <td height="20"><a href="syym/tz6.htm" target="_blank">关于做好二○○六年技工学校招生工作的通知</a></td>
              </tr>
              <tr>
                <td align="center">&nbsp;</td>
                <td height="25" align="right"><a href="#" class="link01">&lt;更多&gt;</a></td>
              </tr>
            </table></td>
            <td><img src="<%=request.getContextPath()%>/styles/images/mh/scdt_l.gif" width="8" height="177"></td>
            <td class="scdtbg"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="128" valign="middle"><img src="<%=request.getContextPath()%>/styles/images/mh/pic.gif" width="128" height="128"></td>
                <td><table width="94%" border="0" align="center" cellpadding="0" cellspacing="3">
                  <tr>
                    <td width="12%" align="center"><img src="<%=request.getContextPath()%>/styles/images/mh/a1.gif" width="3" height="5"></td>
                    <td width="88%" height="20"><a href="syym/dt1.htm" target="_blank">本市出台再就业资金管理办法</a></td>
                  </tr>
                  <tr>
                    <td align="center"><img src="<%=request.getContextPath()%>/styles/images/mh/a1.gif" width="3" height="5"></td>
                    <td height="20"><a href="syym/dt2.htm" target="_blank">张小建副部长在全国高技能人才评价工作视频会议上的讲话</a></td>
                  </tr>
                  <tr>
                    <td align="center"><img src="<%=request.getContextPath()%>/styles/images/mh/a1.gif" width="3" height="5"></td>
                    <td height="20"><a href="syym/dt3.htm" target="_blank">河北省承德市启动实施2006“就业再就业援助工程”</a></td>
                  </tr>
                  <tr>
                    <td align="center"><img src="<%=request.getContextPath()%>/styles/images/mh/a1.gif" width="3" height="5"></td>
                    <td height="20"><a href="syym/dt4.htm" target="_blank">劳动和社会保障部发布第六批新职业</a></td>
                  </tr>
                  <tr>
                    <td align="center"><img src="<%=request.getContextPath()%>/styles/images/mh/a1.gif" width="3" height="5"></td>
                    <td height="20"><a href="syym/dt5.htm" target="_blank">人才缺口约2万 新职业咖啡师月薪上万</a></td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                    <td height="25" align="right"><a href="#" class="link01">&lt;更多&gt;</a></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="294"><img src="<%=request.getContextPath()%>/styles/images/mh/jyjl_tit.gif" width="294" height="25"></td>
              <td width="4"><img src="<%=request.getContextPath()%>/styles/images/mh/zxfg_t1.gif" width="4" height="25"></td>
              <td><img src="<%=request.getContextPath()%>/styles/images/mh/zxfg_t2.gif" width="304" height="25"></td>
            </tr>
            <tr>
              <td valign="top"><table width="94%" border="0" align="center" cellpadding="0" cellspacing="3">
                <tr>
                  <td width="12%" align="center"><img src="<%=request.getContextPath()%>/styles/images/mh/arrow1.gif" width="8" height="8"></td>
                  <td width="88%" height="20"><a href="syym/jy1.htm" target="_blank">[云南]能力促创业计划实施方案</a></td>
                </tr>
                <tr>
                  <td align="center"><img src="<%=request.getContextPath()%>/styles/images/mh/arrow1.gif" width="8" height="8"></td>
                  <td height="20"><a href="syym/jy2.htm" target="_blank">澳大利亚、新西兰社区就业考察报告</a></td>
                </tr>
                <tr>
                  <td align="center"><img src="<%=request.getContextPath()%>/styles/images/mh/arrow1.gif" width="8" height="8"></td>
                  <td height="20"><a href="syym/jy3.htm" target="_blank">浅谈社区建设与社区就业问题</a></td>
                </tr>
                <tr>
                  <td align="center"><img src="<%=request.getContextPath()%>/styles/images/mh/arrow1.gif" width="8" height="8"></td>
                  <td height="20"><a href="syym/jy4.htm" target="_blank">浙江省绍兴市就业服务“新三化”建设实施方案</a></td>
                </tr>
                <tr>
                  <td align="center"><img src="<%=request.getContextPath()%>/styles/images/mh/arrow1.gif" width="8" height="8"></td>
                  <td height="20"><a href="syym/jy5.htm" target="_blank">英国的职业介绍</a></td>
                </tr>
				<tr>
                  <td align="center"><img src="<%=request.getContextPath()%>/styles/images/mh/arrow1.gif" width="8" height="8"></td>
                  <td height="20"><a href="syym/jy6.htm" target="_blank">德国社区就业有关情况介绍</a></td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="25" align="right"><a href="#" class="link01">&lt;更多&gt;</a></td>
                </tr>
              </table></td>
              <td><img src="<%=request.getContextPath()%>/styles/images/mh/zxfg_l.gif" width="4" height="156"></td>
              <td valign="top"><table width="94%" border="0" align="center" cellpadding="0" cellspacing="3">
                <tr>
                  <td width="12%" align="center"><img src="<%=request.getContextPath()%>/styles/images/mh/arrow1.gif" width="8" height="8"></td>
                  <td width="88%" height="20"><a href="syym/fg1.htm" target="_blank">关于贯彻《国务院关于解决农民工问题的若干意见》的意见</a></td>
                </tr>
                <tr>
                  <td align="center"><img src="<%=request.getContextPath()%>/styles/images/mh/arrow1.gif" width="8" height="8"></td>
                  <td height="20"><a href="syym/fg2.htm" target="_blank">关于贯彻落实国务院进一步加强就业再就业工作通知若干问题的意见</a></td>
                </tr>
                <tr>
                  <td align="center"><img src="<%=request.getContextPath()%>/styles/images/mh/arrow1.gif" width="8" height="8"></td>
                  <td height="20"><a href="syym/fg3.htm" target="_blank">关于印发《小额担保贷款管理实施暂行办法》的通知</a></td>
                </tr>
                <tr>
                  <td align="center"><img src="<%=request.getContextPath()%>/styles/images/mh/arrow1.gif" width="8" height="8"></td>
                  <td height="20"><a href="syym/fg4.htm" target="_blank">关于印发《鼓励用人单位招用本市农村就业困难人员岗位补贴试行办法》的通知</a></td>
                </tr>
                <tr>
                  <td align="center"><img src="<%=request.getContextPath()%>/styles/images/mh/arrow1.gif" width="8" height="8"></td>
                  <td height="20"><a href="syym/fg5.htm" target="_blank">关于印发《关于实施农村社会养老保险制度建设指导意见的具体办法》的通知</a></td>
                </tr>
				<tr>
                  <td align="center"><img src="<%=request.getContextPath()%>/styles/images/mh/arrow1.gif" width="8" height="8"></td>
                  <td height="20"><a href="syym/fg6.htm" target="_blank">关于印发再就业优惠证使用管理办法的通知</a></td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="25" align="right"><a href="#" class="link01">&lt;更多&gt;</a></td>
                </tr>
              </table></td>
            </tr>
          </table></td>
        <td width="176" valign="top" background="<%=request.getContextPath()%>/styles/images/mh/cycx_bg.gif"><img src="<%=request.getContextPath()%>/styles/images/mh/cycx_tit.gif" width="176" height="39">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="21" align="center" background="<%=request.getContextPath()%>/styles/images/mh/cycx_st.gif" class="darkblue" style="padding-top:3px ">机构查询</td>
            </tr>
            <tr>
              <td><table width="88%" border="0" align="center" cellpadding="0" cellspacing="3">
                <tr>
                  <td align="right">机构类型：</td>
                  <td><select name="select" style="width:70px ">
                  </select></td>
                </tr>
                <tr>
                  <td align="right">机构名称：</td>
                  <td><input name="textarea" type="text" value="" size="10"></td>
                </tr>
                <tr>
                  <td height="23">&nbsp;</td>
                  <td align="center"><input name="Submit" type="submit" class="CXBUTTON" value="  查询"></td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td><img src="<%=request.getContextPath()%>/styles/images/mh/cycx_line.gif" width="176" height="5"></td>
            </tr>
          </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="21" align="center" background="<%=request.getContextPath()%>/styles/images/mh/cycx_st.gif" class="darkblue" style="padding-top:3px ">培训信息查询</td>
            </tr>
            <tr>
              <td><table width="88%" border="0" align="center" cellpadding="0" cellspacing="3">
                  <tr>
                    <td align="right">工种名称：</td>
                    <td><input name="textarea" type="text" value="" size="10"></td>
                  </tr>
                  <tr>
                    <td height="23">&nbsp;</td>
                    <td align="center"><input name="Submit" type="submit" class="CXBUTTON" value="  查询"></td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td><img src="<%=request.getContextPath()%>/styles/images/mh/cycx_line.gif" width="176" height="5"></td>
            </tr>
          </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="21" align="center" background="<%=request.getContextPath()%>/styles/images/mh/cycx_st.gif" class="darkblue" style="padding-top:3px ">创业项目查询</td>
            </tr>
            <tr>
              <td><table width="88%" border="0" align="center" cellpadding="0" cellspacing="3">
                  <tr>
                    <td align="right">项目名称：</td>
                    <td><input name="textarea" type="text" value="" size="10"></td>
                  </tr>
                  <tr>
                    <td height="23">&nbsp;</td>
                    <td align="center"><input name="Submit" type="submit" class="CXBUTTON" value="  查询"></td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td><img src="<%=request.getContextPath()%>/styles/images/mh/cycx_line.gif" width="176" height="5"></td>
            </tr>
          </table>
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="21" align="center" background="<%=request.getContextPath()%>/styles/images/mh/cycx_st.gif" class="darkblue" style="padding-top:3px ">证书查询</td>
            </tr>
            <tr>
              <td><table width="88%" border="0" align="center" cellpadding="0" cellspacing="3">
                  <tr>
                    <td align="right">证书编号：</td>
                    <td><input name="textarea" type="text" value="" size="10"></td>
                  </tr>
				  <tr>
                    <td align="right">身份证号：</td>
                    <td><input name="textarea" type="text" value="" size="10"></td>
                  </tr>
                  <tr>
                    <td height="23">&nbsp;</td>
                    <td align="center"><input name="Submit" type="submit" class="CXBUTTON" value="  查询"></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
      </tr>
    </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="261"><img src="<%=request.getContextPath()%>/styles/images/mh/shyry_t1.gif" width="261" height="33"></td>
          <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/mh/shyry_t2.gif"><span class="whitebold">|</span> <span class="shyrytit">全市目前登记失业人员总量：(单位：人)</span> <span class="whitebold">|</span> </td>
          <td width="35"><img src="<%=request.getContextPath()%>/styles/images/mh/shyry_t3.gif" width="35" height="33"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td background="<%=request.getContextPath()%>/styles/images/mh/shyry_bg.gif">
		  <table width="96%" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#0E62AC" bgcolor="#FFFFFF" class="bordercollapse">
            <tr>
              <td height="100"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="170" rowspan="3" align="center">=req</td>
                  <td height="20" valign="bottom" class="lefttxttitle">各区县分布如下：</td>
                </tr>
                <tr>
                  <td><hr class="hr"></td>
                </tr>
                <tr>
                  <td>
                  <table width="100%" border="0" cellspacing="5" cellpadding="0">
				  </table>
			  </td>
              <td valign="middle"><img src="<%=request.getContextPath()%>/styles/images/mh/gzph_l.gif" width="33" height="163"></td>
              <td><table width="100%" border="0" align="center" cellpadding="0" cellspacing="3">
                <tr>
                  <td width="12%" align="center">&nbsp;</td>
                  <td width="88%" height="20">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="20">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="20">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="20">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="20">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="20">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="22" align="right">&nbsp;</td>
                </tr>
              </table></td>
              <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/mh/gzph_rbg.gif"><img src="<%=request.getContextPath()%>/styles/images/mh/gzph_r.gif" width="35" height="163"></td>
            </tr>
          </table>          </td>
        </tr>
        <tr>
          <td><img src="<%=request.getContextPath()%>/styles/images/mh/zhyjsgl_d.gif" width="778" height="10"></td>
        </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="231" valign="top" background="<%=request.getContextPath()%>/styles/images/mh/jdgg_bg.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="231"><img src="<%=request.getContextPath()%>/styles/images/mh/jdgg_t.gif" width="231" height="22"></td>
            </tr>
            <tr>
              <td height="124"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="3">
                <tr>
                  <td width="12%" align="center">&nbsp;</td>
                  <td width="88%" height="18">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="18">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="18">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="18">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="18">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="18" align="right">&nbsp;</td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td><img src="<%=request.getContextPath()%>/styles/images/mh/alfx_t.gif" width="231" height="24"></td>
            </tr>
            <tr>
              <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="3">
                <tr>
                  <td width="12%" align="center">&nbsp;</td>
                  <td width="88%" height="10">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="18">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="18">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="18">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="18">&nbsp;</td>
                </tr>
                <tr>
                  <td align="center">&nbsp;</td>
                  <td height="18" align="right">&nbsp;</td>
                </tr>
              </table></td>
            </tr>
          </table></td>
          <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="328"><img src="<%=request.getContextPath()%>/styles/images/mh/bnpxqk_t.gif" width="328" height="30"></td>
              <td><img src="<%=request.getContextPath()%>/styles/images/mh/jwldl_t.gif" width="219" height="30"></td>
            </tr>
            <tr>
              <td height="74" valign="top" background="<%=request.getContextPath()%>/styles/images/mh/bnpxqk_bg.gif"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="3">
                <tr>
                  <td width="30%" align="right">&nbsp;</td>
                  <td width="20%">&nbsp;</td>
                  <td width="30%" align="right">&nbsp;</td>
                  <td width="20%">&nbsp;</td>
                </tr>
                <tr>
                  <td align="right">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td align="right">&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td align="right">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td align="right">&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td colspan="4" align="right">&nbsp;</td>
                  </tr>
              </table></td>
              <td valign="top" background="<%=request.getContextPath()%>/styles/images/mh/jwldl_bg.gif"><table width="80%" border="0" align="center" cellpadding="0" cellspacing="3">
                <tr>
                  <td width="50%" align="right">&nbsp;</td>
                  <td width="50%">&nbsp;</td>
                  </tr>
                <tr>
                  <td align="right">&nbsp;</td>
                  <td>&nbsp;</td>
                  </tr>
				  <tr>
                  <td align="right">&nbsp;</td>
                  <td>&nbsp;</td>
                  </tr>
                <tr>
                  <td colspan="2" align="right">&nbsp;</td>
                  </tr>
              </table></td>
            </tr>
          </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="186"><img src="<%=request.getContextPath()%>/styles/images/mh/jggl_t.gif" width="186" height="42"></td>
                <td width="177"><img src="<%=request.getContextPath()%>/styles/images/mh/cypxxx_t.gif" width="177" height="42"></td>
                <td><img src="<%=request.getContextPath()%>/styles/images/mh/zjfwxx_t.gif" width="184" height="42"></td>
              </tr>
              <tr>
                <td height="142" valign="top" background="<%=request.getContextPath()%>/styles/images/mh/jggl_bg.gif"><table width="94%" border="0" align="right" cellpadding="0" cellspacing="3">
                  <tr>
                    <td width="12%" align="center">&nbsp;</td>
                    <td width="88%" height="20">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                    <td height="20">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                    <td height="20">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                    <td height="20">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                    <td height="20">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                    <td height="25" align="right" style="padding-right:5px ">&nbsp;</td>
                  </tr>
                </table></td>
                <td valign="top" background="<%=request.getContextPath()%>/styles/images/mh/cypxxx_bg.gif"><table width="98%" border="0" align="right" cellpadding="0" cellspacing="3">
                  <tr>
                    <td width="12%" align="center">&nbsp;</td>
                    <td width="88%" height="20">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                    <td height="20">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                    <td height="20">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                    <td height="20">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                    <td height="20">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                    <td height="25" align="right" style="padding-right:5px ">&nbsp;</td>
                  </tr>
                </table></td>
                <td valign="top" background="<%=request.getContextPath()%>/styles/images/mh/zjfwxx_bg.gif"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="3">
                  <tr>
                    <td width="10%" align="center">&nbsp;</td>
                    <td width="88%" height="20">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                    <td height="20">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                    <td height="20">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                    <td height="20">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                    <td height="20">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="center">&nbsp;</td>
                    <td height="25" align="right" style="padding-right:5px ">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><img src="<%=request.getContextPath()%>/styles/images/mh/jggl_d.gif" width="186" height="16"></td>
                <td><img src="<%=request.getContextPath()%>/styles/images/mh/cypxxx_d.gif" width="177" height="16"></td>
                <td><img src="<%=request.getContextPath()%>/styles/images/mh/zjfwxx_d.gif" width="184" height="16"></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="35" align="center" background="<%=request.getContextPath()%>/styles/images/mh/bom.gif" class="white" valign="middle"><img src="<%=request.getContextPath()%>/styles/images/mh/logo_ldj.gif" width="14" height="16">劳动和社会保障局&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="<%=request.getContextPath()%>/styles/images/mh/logo_sx.gif" width="14" height="14"></td>
  </tr>
</table>
</td>
</tr>
</table>
</form>
</body>
</html>
