<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include flush="true" page="/common/alert.jsp"></jsp:include>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>首页</title>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif" width="1" height="6"></td>
  </tr>
</table>
<jsp:include page="/frames/rightinclude.jsp" flush="true" />
 <table align="center" width="100%" border="0" cellspacing="0" cellpadding="0">
   <tr>
    <td height="30px"></td>
  </tr>
  <tr>
    <td align="center" ><img src="<%=request.getContextPath()%>/styles/images/right/orochi.jpg" width="567px" height="298px"></td>
  </tr>
</table> 
</body>  
</html>
