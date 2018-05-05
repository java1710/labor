<%@page import="com.oracle.labor.common.codetable.RegioncodeOperation"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<script type="text/javascript" src="<%=path%>/js/j.js"></script>
<script type="text/javascript">
	$(function() {
		$("select").each(function() {
			$(this).bind("change", function() {
				var str = $(this).attr("name").split("_");
				if(str[1]!="null"){
					var s = $("#"+str[1]);
					s.empty();
					$.post("<%=path%>/service/zj/tjhz/ServletSelect.do", {"selectedId" : $(this).val(),"region": str[1]}, 
						function(data) {
							show(data,s);		
					});
				}
			});
		});
		
		function show(data, s){
			s.append(data);	
			var str = s.attr("name").split("_");
			if(str[1]!="null"){
				get(s.val(), str[1]);	
			}
		}
		
		function get(val, str){
			$.post("<%=path%>/service/zj/tjhz/ServletSelect.do", {"selectedId" : val,"region": str}, 
				function(data) {
				var s = $("#" + str);
				s.empty();
				show(data,s);		
			});		
		}
		$("#but_1").click(function(){
			if($("#village").val()==""||$("#village").val()==null){
				alert("请选择地区！");
				return;
			}
			var r = "";
			var s = "";
			$(":selected").each(function(){
				r = r+$(this).val()+",";
			});
			$(":selected").each(function(){
				s = s+$(this).text()+",";
			});
			window.returnValue = (r+"_"+s);
			window.close();
		});
	});
	

</script>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'diqu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<select id="province" name="next_city"><%=RegioncodeOperation.getProvince()%></select><br>
  	<select id="city" name="next_village"></select><br>
  	<select id="village" name="next_null"></select><br>
  	<input type="button" value="确定" id="but_1">
  </body>
</html>
