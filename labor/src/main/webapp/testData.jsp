<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="js/jquery-1.11.1.js"></script>

<script type="text/javascript">
	$(function(){
		$("#edu").load("edu");
		
		$("#edu2").load("edu?cd_id=20");
		
		$("#health").load("health?cd_id=3");
	});

</script>

</head>
<body>

	<select name="edu" id="edu" style="width:200px">
	
	</select>
	
	<select name="edu2" id="edu2" style="width:200px">
	
	</select>
	<br/>
	<select name="health" id="health" style="width:200px">
	
	</select>

</body>
</html>