<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
	<script type="text/javascript"  src="${pageContext.request.contextPath}/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
	$(function(){
		$("input[name='username']").blur(verifyUsername);
	});
	function verifyUsername(){
		

		var username = document.getElementById("username").value;
		var xmlhttp;
		if (window.XMLHttpRequest)
		{
			//  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
			xmlhttp=new XMLHttpRequest();
		}
		else
		{
			// IE6, IE5 浏览器执行代码
			xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.open("GET","${pageContext.request.contextPath}/AjaxServlet?username="+username+"&t=" + Math.random(),true);	
		xmlhttp.send(null);
		xmlhttp.onreadystatechange=function()
		{
			if (xmlhttp.readyState==4 && xmlhttp.status==200)
			{
				var tip = xmlhttp.responseText;
				document.getElementById("tipID").innerHTML = tip;
				
				
			}
		}
		
	} 
	</script>
</head>
<body>
	<form action="RegisterServlet" method="post">
		请输入用户名:<input name="username" id="username" type="text" /><div id="tipID"></div><br/>
		
		请输入密码:<input type="password" name="password"/><br/>
		<input type="submit" value="注册"/>
		<input type="reset" value="重置"/>
		
	</form>	
	
</body>
</html>
</body>
</html>