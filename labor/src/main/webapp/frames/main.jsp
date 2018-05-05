<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN">
<html>
<head>
<title>框架页</title>
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<SCRIPT>
/*lh edited*/
myFrm = "on";
function switchFrm() {
	if (myFrm == "on") {
		myFrm = "off";
		switchPoint.src = "<%=request.getContextPath()%>/styles/images/left/showleft.gif";
		document.all("leftFrm").style.display = "none";
	} else {
		myFrm = "on";
		switchPoint.src = "<%=request.getContextPath()%>/styles/images/left/hideleft.gif";
		document.all("leftFrm").style.display = "block";
	}
}
</SCRIPT>
</head>
<body style="MARGIN: 0px;overflow:hidden">
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TR>
    <TD id="leftfrm" vAlign="top"><IFRAME style="Z-INDEX: 2; display:block; WIDTH: 180px; HEIGHT: 100%" name=leftFrame src="left.jsp" frameBorder=0 scrolling="yes"></IFRAME></TD>
    <TD width="14" background="<%=request.getContextPath()%>/styles/images/left/barbg.gif">
    <TABLE width="10" height="100%" cellSpacing=0 cellPadding=0 border=0>
        <TR>
          <TD style="CURSOR: hand" onclick=switchFrm()><IMG src="<%=request.getContextPath()%>/styles/images/left/hideleft.gif" name="switchPoint" width="14" height="46" id=switchPoint></TD>
        </TR>
    </TABLE>
    </TD>
    <TD style="WIDTH: 100%"><IFRAME style="Z-INDEX: 1; display:block; WIDTH: 100%; HEIGHT: 100%" name=rightFrame src="<%=request.getContextPath()%>/frames/right.jsp" frameBorder=0 scrolling="yes"></IFRAME></TD>
  </TR>
</TABLE>
</body>
</html>
