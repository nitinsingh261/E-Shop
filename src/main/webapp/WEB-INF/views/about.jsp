<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>About Us </title>

<link rel="stylesheet" href="resources/css/prettyline.css" />

<style type="text/css">

#rememberme-0 {
	padding: 5px;
}
</style>
<link rel="stylesheet" href="resources/css/prettyline.css" />
</head>
<body>

	<div class="row">
		<hr class="prettyline">
		<br>
		<div style="text-align: center">
		
			<div class="container">
				<div id="loginbox" style="margin-top: 50px;"
					class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-info">
						<div class="panel-heading">
							<div class="panel-title">Sign In</div>
							<div
								style="float: right; font-size: 80%; position: relative; top: -10px">
								<a href="#">Forgot password?</a>
							</div>
						</div>

						<div style="padding-top: 30px" class="panel-body">

							<div style="display: none" id="login-alert"
								class="alert alert-danger col-sm-12"></div>

							<form id="loginform" class="form-horizontal" action="login"
								method="post">

								<div style="margin-bottom: 25px" class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-user"></i></span> <input id="userName"
										type="text" class="form-control" name="userName" value=""
										placeholder="userName" required="required">
								</div>

								<div style="margin-bottom: 25px" class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input id="password"
										type="password" class="form-control" name="password"
										placeholder="password" required="required">
								</div>



								<div class="input-group">
									<div class="checkbox">
										<label> <input id="login-remember" type="checkbox"
											name="remember" value="1"> Remember me
										</label>
									</div>
								</div>

								<div class="statusMessage">
									<c:if test="${result gt 0}">
										<span><strong>Successfully registered!! Please
												Login</strong> </span>
									</c:if>
									<c:if test="${result == 0}">
										<span><strong>Customer Already Registered!!</strong> </span>
									</c:if>
								</div>
								<div style="margin-top: 10px" class="form-group">
									<div class="loginStatus"></div>
									<div class="col-sm-12 controls">
										<button id="btn-login" type="submit" class="btn btn-success">Login
										</button>
									</div>
								</div>


								<div class="form-group">
									<div class="col-md-12 control">
										<div
											style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%">
											Don't have an account! <a href="#"
												onClick="$('#loginbox').hide(); $('#signupbox').show()">
												Sign Up Here </a>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div id="signupbox" style="display: none; margin-top: 50px"
					class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-info">
						<div class="panel-heading">
							<div class="panel-title">Sign Up</div>
							<div
								style="float: right; font-size: 85%; position: relative; top: -10px">
								<a id="signinlink" href="#"
									onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign
									In</a>
							</div>
						</div>
						<div class="panel-body">
							<form id="signupform" action="register" class="form-horizontal"
								role="form" method="post">
								<div id="signupalert" style="display: none"
									class="alert alert-danger">
									<p>Error:</p>
									<span></span>
								</div>
								<div class="form-group">
									<label for="email" class="col-md-3 control-label">Email</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="emailAddress"
											placeholder="Email Address" required="required">
									</div>
								</div>

								<div class="form-group">
									<label for="email" class="col-md-3 control-label">User
										Name</label>
									<div class="col-md-9">
										<input type="text" class="form-control" name="userName"
											placeholder="User Name" required="required">
									</div>
								</div>

								<div class="form-group">
									<label for="password" class="col-md-3 control-label">Password</label>
									<div class="col-md-9">
										<input type="password" class="form-control" name="password"
											placeholder="Password" required="required">
									</div>
								</div>

								<div class="form-group">
									<!-- Button -->
									<div class="col-md-offset-3 col-md-9">
										<button id="btn-signup" type="submit" class="btn btn-info">
											<i class="icon-hand-right"></i> Sign Up
										</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>
		<br>
		<hr class="prettyline">
	</div>
</body>
</html>