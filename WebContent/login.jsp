<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/vader/jquery-ui.css">
  <link href="https://fonts.googleapis.com/css2?family=Iceberg&display=swap" rel="stylesheet"><!-- googlr font font-family: 'Iceberg', cursive;-->
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script><title>Login</title>
  <title>Login</title>
  
<script>
$( function() {
    $( ".widget input[type=submit], .widget a, .widget button" ).button();
    $( "button, input, a" ).hover( function( event ) {
      event.preventDefault();
    } );
  } );
  
</script>
<style>
	body{background:#E3F2FD;}
	.container{width:40%;height:40%;margin:0 auto;background:#fff;align:center;padding:2%;margin-top:5%;border:2px solid #fff;border-radius:20px; }
	form{margin:0 auto;text-align:center;}
	#password,#id{border: 1px solid #e6e6e6; border-radius:2px; width:250px;height:30px;}
	ul li{list-style-type:none;display:inline;}
	h1{margin:0 auto;padding:1%;text-align:center;font-size:40px;}
	#loginSubmit,#registerSubmit{
	border:1.3px solid #03a9f4ad;
	background:#fff;
	border-radius:2px;
	font-size:14px;
	text-align:center;
	height:30px;
	width:90px;}
	
</style>
</head>
<body>
	<div class="container">
	<h1>Login</h1>
	<form action="LoginController.do" id="loginFrm" method="post">
		<br>
		ID &nbsp;&nbsp;<input type ="text" name="id" id="id" required="required"><p><p>
		PW &nbsp;&nbsp;<input type ="password" name="password" id="password" required="required" ><p><br>
		<input type="submit" name="loginSubmit" id="loginSubmit" value="Login" class="ui-button ui-widget ui-corner-all"> &nbsp;
		<a href="register.html"><input type="button" id="registerSubmit" name="registerSubmit" value="Register" class="ui-button ui-widget ui-corner-all"></a><p>
		<p><p><p>
		<ul style="-webkit-padding-start:0px;">
			<li>Find ID</li> &nbsp; &nbsp;
			<li>Find PW</li>
		</ul>
	</form>
	</div>
</body>
</html>