<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Website Manager!</title>

<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/signin.css" rel="stylesheet">

</head>
<% String type=request.getParameter("type");%>
<body>
<div class="signin">
	<div class="signin-head"><img src="./pic/myself.jpg" alt="" class="img-rounded"></div>
	<form class="form-signin" role="form" name="form" action="./home/login.do" method="post">
	    <div class="message">
	     <%
	       if(type!=null&&type.equals("0")){
	       %>
	       password or user name is wrong!
	     <%
           }
           %>
           <%
           if(type!=null&&type.equals("-1")){
           	       %>
           Log out success!
           <%
           }
           %>
           <%
           if(type!=null&&type.equals("1")){
           %>
           register success!
           <%
           }
           %>
	    </div>
		<input type="text" class="form-control" name="username" id="username" required autofocus placeholder="user name" />
		<input type="password" class="form-control" name="password" id="password" required placeholder="password"/>
		<button class="btn btn-lg btn-danger btn-block" type="submit">login</button>
	</form>
	<form class="form-signin" role="form" name="form" action="./register.jsp" method="post">
		<button class="btn btn-lg btn-primary btn-block" type="submit">register</button>
	</form>
</div>

</body>
</html>