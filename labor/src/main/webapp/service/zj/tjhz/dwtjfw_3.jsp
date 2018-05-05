<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/common/import.jsp" %>
<html>
<head>
<title>单位推荐条件选择</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/j.js"></script>
<script>
	$(function(){
		var a;
		$.get("SelectAjax.do",{f: "select"},
   			function(data){
   				$("#selects").append(data);
   		});
   		$("#selects").bind("change", function (){
   			$.get("SelectAjax.do",{f: "getInfo",getInfo: $(this).val()},
   				function(data){
   					a = data.split(",");
   					$("#s1").empty();$("#s2").empty();$("#s3").empty();
   					$("#s4").empty();$("#s5").empty();$("#s6").empty();
   					$("#s7").empty();$("#s8").empty();
   					$("#s1").append(a[0]);$("#s2").append(a[1]);$("#s3").append(a[2]);
   					$("#s4").append(a[3]);$("#s5").append(a[4]);$("#s6").append(a[5]);
   					$("#s7").append(a[6]);$("#s8").append(a[7]);
   			});
   		});
		$("#s8").bind("click", function (){
			var tt = window.showModalDialog("diqu.jsp",null,"dialogHeight:200px;dialogWidth:400px;center:yes");
			var a = tt.split("_");
			var j = a[0].split(",");
			var i = a[1].split(","); 
			var b = $("<option></option>");
			var value=j[2];
			var text=i[2];
			b.val(value);
			b.text(text);
			$(this).empty();			
			$(this).append(b);		
		});
		$("#qd").click(function(){
			if($.trim($("#n1").val()) == "" || $.trim($("#n2").val()) == "" || $.trim($("#s1").val()) == "" 
				|| $.trim($("#s2").val()) == "" || $.trim($("#zuo").val()) == "" || $.trim($("#you").val()) == ""){
				alert("信息不全！！！");
				return;
			}
			var age = /^[1-9]\d$/;
			var height = /^[1-9]\d{1,2}$/;
			var vision = /[1-5]\.[0]/;
			var h = true;
			h = age.test($.trim($("#n1").val()));
			h = age.test($.trim($("#n2").val()));
			h = height.test($.trim($("#sg1").val()));
			h = height.test($.trim($("#sg2").val()));
			h = vision.test($.trim($("#zuo").val()));
			h = vision.test($.trim($("#you").val()));
			if($("#sg1").val() > $("#sg2").val() || 
			$("#n1").val() > $("#n2").val()){
				h = false;
			}
			if(h){
				form1.qd.disabled = true;
				form1.qx.disabled = true;
				form1.back.disabled = true;
				form1.action = "<%=request.getContextPath()%>/service/zj/tjhz/Servletpp.do";
				form1.submit();
			}else{
				alert("信息有误！！");
			}
		});
	});
</script>
</head>
<body>
<form name="form1" action="" method="post">
<table width="98%" align="center" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
	  <td height="20" valign="bottom"><img src="<%=request.getContextPath()%>/styles/images/right/now.gif" width="11" height="12">当前位置：职业介绍
	    &gt; 推荐服务 &gt; 单位推荐服务</td>
	</tr>
	<tr>
	  <td valign="bottom" background="<%=request.getContextPath()%>/styles/images/right/dsline.gif" height="8"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif"></td>
	</tr>
</table>
<table width="98%" align="center" border="0" cellpadding="0" cellspacing="0"   class="title">
  <tr>
    <td width="30">
	<table border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td ><img src="<%=request.getContextPath()%>/styles/css/bb_d.gif"></td>
      </tr>
    </table></td>
    <td><input type="hidden" name="bio_id" value="<bean:write name='bio_id' scope='request'/>"></td>
    <td><input type="hidden" name="bio_bua_address" value="<bean:write name='bio_bua_address' scope='request'/>"></td>
    <td><input type="hidden" name="lxdh" value="<bean:write name='lxdh' scope='request'/>"></td>
			    <td  valign="bottom">单位名称:&nbsp;&nbsp;${dwmc}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单位地址:&nbsp;&nbsp;${dwdz}</td>
			  </tr>
</table>

<table width="98%" align="center" border="0" cellpadding="0" cellspacing="1" bordercolor="#FFFFFF" class="tablebody">
    <tr>
      <td class="line4">请选择招聘条件:</td>
    </tr>
</table>
<table width="98%" align="center" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" class="tablebody">
    <tr>
      <td width="112" align="right" class="line1">查找个人求职工种为</td>
      <td class="line1">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            
						<td width="11%">
						<table border="0" cellspacing="2" cellpadding="0">
                        <tr>
                          <td><select name="qzgz" style="width:120px;" id = "selects"></select></td>
                  		  <td class="line2"></td>
                		</tr>
              			</table>
              			</td>
		  </tr>
        </table>
      </td>
    </tr>
</table>
<table width="98%" align="center" border="0" cellpadding="0" cellspacing="1" bordercolor="#9DCBEC" class="tablebody">
  <tbody>
    <tr>
      <td width="16%" align="right" class="line2">性　　别</td>
      <td width="20%" align="center" class="line2"> <select id="s1" name="xb" style="WIDTH: 100%">
        
        </select></td>
      <td width="12%" align="right" class="line2">婚姻状况</td>
      <td width="20%" align="center" class="line2"> <select id="s2" name="hyzk" style="WIDTH: 100%">
        
        </select></td>
      <td width="11%"  align="right" class="line2">文化程度</td>
      <td width="20%" align="center" class="line2"> <select id="s3" name="whcd" style="WIDTH: 100%">
					
        </select></td>
    </tr>
    <tr>
      <td align="right" class="line1">户籍性质</td>
      <td align="center" class="line1"><select id="s4" name="hjxz" style="WIDTH: 100%">
        
        </select></td>
	  <td align="right" class="line2">人员类别</td>
      <td align="center" class="line2"><select id="s5" name="rylb" style="WIDTH: 100%">
          
        </select></td>
     <td align="right" class="line1">健康状况</td>
      <td align="center" class="line1"><select id="s6" name="jkzk" style="WIDTH:100%">
        
        </select></td>
    </tr>    
    <tr>
      <td align="right" class="line2">应届毕业生</td>
      <td align="center" class="line2"><select id="s7" name="sfyj" style="WIDTH: 100%">
        </select></td>
      <td align="right" class="line1">工作地区</td>
      <td align="center" class="line1"> <select id="s8" name="gzdq" style="WIDTH: 100%"></select></td>
    </tr>
  <tr>
      <td align="right" class="line1">年　　龄</td>
	  <td align="left" class="line1"><input id="n1" name="minnl" style="WIDTH:42%" maxlength="2">至<input id="n2" name="maxnl" style="WIDTH:42%" maxlength="2"></td>
	  <td align="right" class="line1">身　　高</td>
	  <td align="left" class="line1"><input id="sg1" name="minsg" style="WIDTH:42%" maxlength="3">至<input id="sg2" name="maxsg" style="WIDTH:42%" maxlength="3"></td>
	  <td align="right" class="line1">视　　力</td>
	  <td align="left"  class="line1"><input id="zuo" name="leftsl" style="WIDTH:46%" maxlength="3">-<input id="you" name="rightsl" style="WIDTH:46%" maxlength="3">
	  </td>
  </tr>
</table>
<br>
<table width="98%" border="0" align="center" cellspacing="0" cellpadding="0">
    <tr>
      <td class="line2" align="center">
	      <input id="qd" name="qd" type="button"class=BUTTONs3 value="确 定" >&nbsp;&nbsp;
	      <input name="qx" type="reset" class=BUTTONs3 value="取 消" >&nbsp;&nbsp;
	      <input name="back" type="button"class=BUTTONs3 onClick="toBack()" value="返 回">
	  </td>
    </tr>
</table>
</form>
</body>
</html>
