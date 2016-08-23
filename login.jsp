<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log-In</title>
<link rel="stylesheet" href="css/reset.css">
<style>
/*space*/
body>#login form .field_container {
	margin: 0 auto 12px;
	text-align: left;
	width: auto;
}
/* line*/
body>#login {
	border-top: 8px solid #f90;
	margin: 0 auto;
	padding: 30px 0 0;
	width: 100%;
}
/*field_container*/
body>#login form .field_container {
	margin: 0 auto 12px;
	text-align: left;
	width: auto;
	box-shadow: 0 0 8px #CCC;
	-moz-box-shadow: 0 0 8px #CCC;
	-webkit-box-shadow: 0 0 8px #CCC;
	display: inline-block;
	font-size: 18px;
	height: 46px;
	cursor: pointer;
	line-height: 46px;
	padding: 0 25px;
}

/*form box*/
body>#login form {
	border-radius: 10px;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-wekbit-box-sizing: border-box;
	border: 8px solid #F5F3F0;
	display: inline-block;
	margin: 40px auto 0;
	padding: 100px 160px 50px;
	position: relative;
	left: 30%;
	z-index: 0;
}
/*shade button and size*/
button {
	margin: 0;
	padding: 0;
	border: 0;
	font-weight: normal;
	font-style: normal;
	font-size: 100%;
	line-height: 1;
	font-family: inherit;
	right: 0px;
}

body>#login form button .button_text {
	border-radius: 7px;
	-moz-border-radius: 7px;
	-webkit-border-radius: 7px;
	box-shadow: 0 0 8px #CCC;
	-moz-box-shadow: 0 0 8px #CCC;
	-webkit-box-shadow: 0 0 8px #CCC;
	background-color: #f6f6f6;
	background-repeat: repeat-x;
	color: black;
	display: inline-block;
	font-size: 16px;
	height: 46px;
	cursor: pointer;
	line-height: 46px;
	padding: 0 25px;
	text-shadow: 1px 1px 0 #fff;
	width: auto;
}
</style>
</head>
<body>
	<h1 align="center">CHURCH FINANCIAL RECORD KEEPING</h1>
	<div id="login">
		<form id="login_form" align="center" action="login" method="POST">

			<div class="field_container">
				<input type="text" placeholder="User Name" name="username" style="border: 1px">
			</div>
			<br /> <br />
			<div class="field_container">
				<input type="Password" placeholder="Password" name="password"
					style="border: 1px">
			</div>
			<br />
			<div>
				<input name="user[remember_me]" type="hidden" value="0"> 
				<input id="user_remember_me" name="user[remember_me]" type="checkbox" value="1"> 
				<label class="login_link" for="user_remember_me" id="remember_me_label">stay signed in</label> <br /> <br />
				<div align="right">
					<!-- <button>
						<a href="member.html"> <span class="button_text">Sign In</span></a>
					</button> -->
					<input type="submit" value="Login"/>
				</div>
			</div>
		</form>
		<h6 align="center">
			Need <a href="#">Help</a> with your password?
		</h6>

	</div>
</body>
</html>

