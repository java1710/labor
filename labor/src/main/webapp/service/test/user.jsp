<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../../js/jquery-1.11.1.js"></script>

<script type="text/javascript">
	$(function(){
		$("#language").load("../language",{val:"03"});
		
		//加载民族 
		$("#nation").load("../nations/51");
		
		
		//加载省份;
		$("#province").load("../regions");

		//省的改变事件
		$("#province").change(function(){
			$("#city").load("../regions",{code:$(this).val(),region:"city"});
			$("#village").empty();
		});
		//市区change事件 
		$("#city").change(function(){
			$("#village").load("../regions",{code:$(this).val(),region:"village"});
		});
		
		//回显按钮事件 
		$("#btn_code").click(function(){
			var code=$("#code").val();
			$("#province").load("../regions",{code:code,region:"province"});
			$("#city").load("../regions",{code:code,region:"city"});
			$("#village").load("../regions",{code:code,region:"village"});
		});
	});
</script>
</head>
<body>
<form action="save" method="post">
		name<input type="text" name="userName"/><br/>
		userloginname<input type="text" name="userloginname"/><br/>
		userpassword<input type="text" name="userpassword"/><br/>
		
		<input type="submit" value="保存"/>
	</form>
	
	语言<select id="language" style="width: 150px"></select>
	
	
	民族<select id="nation" style="width:150px"></select><br/>
	
	
	<input type="text" id="code"/><input type="button" id="btn_code" value="提交"/><br/>
	
	<select id="province" style="width:150px"></select>省
	<select id="city" style="width:150px"></select>市
	<select id="village" style="width:150px"></select>区
</body>
</html>