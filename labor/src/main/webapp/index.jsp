<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>：：欢迎Bill同志访问劳动力市场信息系统：：</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/styles/css/common.css" rel="stylesheet" type="text/css">
<SCRIPT type="text/javascript" language="javascript">
	<!--· 初始化时间 Powered by Qyc @已优化·-->
	var dateObj = new Date();
	var year,month,day,hours,minutes,seconds;
	var tempseconds;
	function clock(){
		seconds = parseInt(dateObj.getSeconds(),10);
		window.setInterval(changeTime,1000);
	}
	function changeTime(){
		seconds = seconds+1;
		dateObj.setSeconds(seconds);
		year = dateObj.getYear();
		month = dateObj.getMonth()+1;
		day = dateObj.getDate();
		hours = dateObj.getHours();
		minutes = dateObj.getMinutes();
		seconds = dateObj.getSeconds();
		if(hours.toString().length==1){
			hours = "0"+hours;
		}
		if(minutes.toString().length==1){
			minutes = "0"+minutes;
		}
		if(seconds.toString().length==1){
			tempseconds = "0"+seconds;
		}else{
			tempseconds = seconds;
		}
		form1.dateArea.value = year+"年"+month+"月"+day+"日　"+hours+"："+minutes+"："+tempseconds;
	}
	
	function lhnow(j) {
		var lh1="<%=request.getContextPath()%>/styles/images/index/guidebt_";lh2="a.jpg";lh3="b.jpg";lh4=".jpg";i=j-1;k=parseInt(j)+1;
			//alert(j);alert(i);alert(k);
		var myurla=lh1+i+lh4;myurlb=lh1+j+lh2;myurlc=lh1+k+lh3;
			//alert(myurla);alert(myurlb);alert(myurlc);	
		if(j<2){
			document.all("v"+j).src = myurlb;
			document.all("v"+k).src = myurlc;
		}
		else if(j<11){
			document.all("v"+i).src = myurla;
			document.all("v"+j).src = myurlb;
			document.all("v"+k).src = myurlc;
		}
		
		else if(j<12){
			document.all("v"+i).src = myurla;
			document.all("v"+j).src = myurlb;
		}
	}
	
	function lhresetall() {
			for(var n = 1;n<12;n++){
			var lh1="<%=request.getContextPath()%>/styles/images/index/guidebt_";lh4=".jpg";
			var myurla=lh1+n+lh4;
			//alert(myurla);	
			document.all("v"+n).src = myurla;
			}
	}
	
	function MM_preloadImages() { //v3.0
	  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
	    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
	    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
	}
	
	function MM_swapImgRestore() { //v3.0
	  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
	}
	
	function MM_findObj(n, d) { //v4.01
	  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
	    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
	  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
	  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
	  if(!x && d.getElementById) x=d.getElementById(n); return x;
	}
	
	function MM_swapImage() { //v3.0
	  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
	   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
	}
//-->
</SCRIPT>
<body class="mybg" onLoad="clock();MM_preloadImages('<%=request.getContextPath()%>/styles/images/index/lm_1a.jpg','<%=request.getContextPath()%>/styles/images/index/lm_2a.jpg','<%=request.getContextPath()%>/styles/images/index/lm_3a.jpg','<%=request.getContextPath()%>/styles/images/index/lm_4a.jpg','<%=request.getContextPath()%>/styles/images/index/lm_5a.jpg','<%=request.getContextPath()%>/styles/images/index/lm_6a.jpg','<%=request.getContextPath()%>/styles/images/index/lm_7a.jpg','<%=request.getContextPath()%>/styles/images/index/lm_8a.jpg','<%=request.getContextPath()%>/styles/images/index/lm_9a.jpg','<%=request.getContextPath()%>/styles/images/index/lm_10a.jpg','<%=request.getContextPath()%>/styles/images/index/lm_11a.jpg','<%=request.getContextPath()%>/styles/images/index/lm_12a.jpg','<%=request.getContextPath()%>/styles/images/index/lm_13a.jpg')">
<form action="" name="form1" method="post">
<table width="800" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="84" colspan="3" valign="top" background="<%=request.getContextPath()%>/styles/images/index/top.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><a href="<%=request.getContextPath()%>/frames/left.jsp?restype=01"  target="leftFrame"><img src="<%=request.getContextPath()%>/styles/images/index/lm_1.jpg" width="72" height="25" border="0" id="Image1" onMouseOver="MM_swapImage('Image1','','<%=request.getContextPath()%>/styles/images/index/lm_1a.jpg',1)" onMouseOut="MM_swapImgRestore()"></a></td>
            <td><a href="#"><img src="<%=request.getContextPath()%>/styles/images/index/lm_2.jpg" width="68" height="25" border="0" id="Image2" onMouseOver="MM_swapImage('Image2','','<%=request.getContextPath()%>/styles/images/index/lm_2a.jpg',1)" onMouseOut="MM_swapImgRestore()"></a></td>
            <td><a href="#"><img src="<%=request.getContextPath()%>/styles/images/index/lm_3.jpg" width="68" height="25" border="0" id="Image3" onMouseOver="MM_swapImage('Image3','','<%=request.getContextPath()%>/styles/images/index/lm_3a.jpg',1)" onMouseOut="MM_swapImgRestore()"></a></td>
            <td><a href="<%=request.getContextPath()%>/frames/left.jsp?restype=05"  target="leftFrame"><img src="<%=request.getContextPath()%>/styles/images/index/lm_4.jpg" width="57" height="25" border="0" id="Image4" onMouseOver="MM_swapImage('Image4','','<%=request.getContextPath()%>/styles/images/index/lm_4a.jpg',1)" onMouseOut="MM_swapImgRestore()"></a></td>
            <td><a href="#"><img src="<%=request.getContextPath()%>/styles/images/index/lm_5.jpg" width="56" height="25" border="0" id="Image5" onMouseOver="MM_swapImage('Image5','','<%=request.getContextPath()%>/styles/images/index/lm_5a.jpg',1)" onMouseOut="MM_swapImgRestore()"></a></td>
            <td><a href="#"><img src="<%=request.getContextPath()%>/styles/images/index/lm_6.jpg" width="56" height="25" border="0" id="Image6" onMouseOver="MM_swapImage('Image6','','<%=request.getContextPath()%>/styles/images/index/lm_6a.jpg',1)" onMouseOut="MM_swapImgRestore()"></a></td>
            <td><a href="#"><img src="<%=request.getContextPath()%>/styles/images/index/lm_7.jpg" width="57" height="25" border="0" id="Image7" onMouseOver="MM_swapImage('Image7','','<%=request.getContextPath()%>/styles/images/index/lm_7a.jpg',1)" onMouseOut="MM_swapImgRestore()"></a></td>
            <td><a href="#"><img src="<%=request.getContextPath()%>/styles/images/index/lm_8.jpg" width="56" height="25" border="0" id="Image8" onMouseOver="MM_swapImage('Image8','','<%=request.getContextPath()%>/styles/images/index/lm_8a.jpg',1)" onMouseOut="MM_swapImgRestore()"></a></td>
            <td><a href="#"><img src="<%=request.getContextPath()%>/styles/images/index/lm_9.jpg" width="67" height="25" border="0" id="Image9" onMouseOver="MM_swapImage('Image9','','<%=request.getContextPath()%>/styles/images/index/lm_9a.jpg',1)" onMouseOut="MM_swapImgRestore()"></a></td>
            <td><a href="#"><img src="<%=request.getContextPath()%>/styles/images/index/lm_10.jpg" width="56" height="25" border="0" id="Image10" onMouseOver="MM_swapImage('Image10','','<%=request.getContextPath()%>/styles/images/index/lm_10a.jpg',1)" onMouseOut="MM_swapImgRestore()"></a></td>
            <td><a href="<%=request.getContextPath()%>/frames/left.jsp?restype=30"  target="leftFrame"><img src="<%=request.getContextPath()%>/styles/images/index/lm_11.jpg" width="57" height="25" border="0" id="Image11" onMouseOver="MM_swapImage('Image11','','<%=request.getContextPath()%>/styles/images/index/lm_11a.jpg',1)" onMouseOut="MM_swapImgRestore()"></a></td>
            <td><a href="#"><img src="<%=request.getContextPath()%>/styles/images/index/lm_12.jpg" width="56" height="25" border="0" id="Image12" onMouseOver="MM_swapImage('Image12','','<%=request.getContextPath()%>/styles/images/index/lm_12a.jpg',1)" onMouseOut="MM_swapImgRestore()"></a></td>
            <td><a href="#"><img src="<%=request.getContextPath()%>/styles/images/index/lm_13.jpg" width="74" height="25" border="0" id="Image13" onMouseOver="MM_swapImage('Image13','','<%=request.getContextPath()%>/styles/images/index/lm_13a.jpg',1)" onMouseOut="MM_swapImgRestore()"></a></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="44">&nbsp;</td>
      </tr>
      <tr>
        <td align="right" style="padding-right:20px"><a href="index.jsp" class="link1">首页</a>  |  <a href="xtwh/gxh/gxh.jsp" target="rightFrame"  class="link1">个性页面定制</a>  |  <a href="#" class="link1">业务综合管理</a>  |  <a href="#" class="link1">帮助</a>  |  <a href="login.jsp" class="link1">重新登录</a>  |  <a href="javascript:void(null)" onclick="window.close()" class="link1">退出系统</a></td>
      </tr>
      <tr></tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="3" valign="top"><iframe scrolling="auto" frameborder="0" height="100%" width="100%" src="frames/main.jsp" name="mainFrame"></iframe></td>
  </tr>
  <tr>
    <td width="1" bgcolor="#FFFFFF"><img src="<%=request.getContextPath()%>/styles/images/index/spacer.gif" width="1" height="1"></td>
    <td width="584" height="22" background="<%=request.getContextPath()%>/styles/images/index/copyright.gif" class="white" style="padding-left:20px">当前操作员：&nbsp;Bill&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="dateArea" value="" style="width:200px;border-width:0;border:0;background:transparent;color:#ffffff" readonly></td>
    <td align="right" valign="top" background="<%=request.getContextPath()%>/styles/images/index/copyright.gif"><img src="<%=request.getContextPath()%>/styles/images/index/sx.gif"></td>
  </tr>
</table>
</form>
</body>
</html>
