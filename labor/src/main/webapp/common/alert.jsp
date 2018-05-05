<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${flag=='succ'}">
<script>
	var sheight=(screen.height/2-115)+"";
    var swidth=(screen.width/2-150)+"";
    var wlocation = "left="+swidth+" top="+sheight+" width=300 height=230";
	window.open("<%=request.getContextPath() %>/common/successful.jsp","Alert",wlocation);
</script>
</c:if>
<c:if test="${flag=='fail'}">
<script>
	var sheight=(screen.height/2-115)+"";
    var swidth=(screen.width/2-150)+"";
    var wlocation = "left="+swidth+" top="+sheight+" width=300 height=230";
	window.open("<%=request.getContextPath() %>/common/failed.jsp","Alert",wlocation);
</script>
</c:if>
