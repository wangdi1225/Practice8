<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script type="text/javascripe"  src="https://cdn.staticfile.org/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<button onclick="window.location='${pageContext.request.contextPath }/register.jsp'">点击进入注册页面</button>
<button onclick="window.location='${pageContext.request.contextPath }/RegisterServlet'">点击进入登录页面</button>
</body>
</html>