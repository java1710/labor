<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<script type="text/javascript" src="js/jquery-1.11.1.js""></script>
<script type="text/javascript">

</script>
<title>推荐情况查询</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
</head>
<body>
<form>
<table width="1580" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="1580"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">
        当前位置：职业介绍 &gt; 推荐服务 &gt; 推荐情况查询</td>
      </tr>
      <tr>
        <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top"><TABLE width="1580" border=0 cellPadding=0 cellSpacing=0 bordercolor="#FFFFFF" class=tablebody>
      <TR>
        <TD width="30" height=20 class="title"><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif" width="30" height="19"></TD>
        <TD class="title" style="padding-top:5px">查询结果&nbsp;&nbsp;&nbsp;提示：[共xx条符合查询条件的记录，点击姓名可查看详细信息]</TD>
      </TR>
    </TABLE>
        <table width="1580" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="1580" border="0" cellpadding="0" cellspacing="1">
              <tr align="center" class="line4">
                <td width="25" >序号</td>
                <td width="110">身份证号码</td>
                <td width="70">姓 名</td>
                <td width="25">性别</td>
                <td width="25">年龄</td>
                <td width="155">学历</td>
                <td width="180">择业岗位</td>
                <td width="180">单位名称</td>
                <td width="100">单位法人码</td>
                <td width="80">未成功人数</td>
                <td width="90">推荐日期</td>
                <td width="180">推荐职业</td>
                <td width="90">推荐类型</td>
                <td width="110">联系电话</td>
                <td width="150">联系地址</td>
              </tr>
             <c:forEach var="b"  items="${Info}"  varStatus="state">
			  <tr align="center" class="line4">
                <td width="25" >${state.count}</td>
                <td width="110">${b.bip_citizenid}</td>
                <td width="70"><a href="">${b.bip_name}</td>
                <td width="25">${b.sex}</td>
                <td width="25">${b.bip_age}</td>
                <td width="155">${b.whcd}</td>
                <td width="180">${b.gz1}</td>
                <td width="180"><a href="">${b.bio_name}</td>
                <td width="100">${b.bio_no}</td>
                <td width="80"> ${Info2.cc}</td>
                <td width="90">${b.tjsj}</td>
                <td width="180">${b.gwlb1}</td>
                <td width="90">${b.tjxlx}</td>
                <td width="110">${b.bip_con_telephone}</td>
                <td width="150">${b.bip_res_address}</td>
              </tr>
    </c:forEach>
            </table>
<br>
              <table width="100%" border="0" cellspacing="0" cellpadding="0">

                <tr align="center">
                  <td align="center" class="line2">
                    <input name="fh" type="button" class="BUTTONs3" value="返 回" onClick="toBack()">
                    </td>
                </tr>

              </table></td>
          </tr>
        </table>
    </td>
  </tr>
</table>
<p><br>
</p>
<p></p>
<p></p>
</body>
</html>
