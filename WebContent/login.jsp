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
	<div id="msg"></div>
	<form action="login.html" method="post" class="form-horizontal" role="form">
		<div class="form-group">
			<label class="col-md-2 control-label" >用户名</label>
			<div class="col-md-10">
			<input name="username" type="text" id="username" class="form-control" placeholder="请输入用户名">
			</div>
		</div>
		<div class="form-group">	
			
			<label class="col-md-2 control-label" >Password</label>
			<div class="col-md-10">
			<input name="password" type="password" class="form-control" id="password" placeholder="请输入密码">
			</div>
			
		</div>
		<div class="form-group">
			<div class="col-md-10 col-md-offset-2">
				<button type="submit" class="btn btn-default">
					登陆
				</button>
				${error}
			</div>
		</div>
		
	</form>
</body>
</html>