<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC Movie Store</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>

    <body class="container">
        <div class="col-lg-8">
        <h2>Job Portal</h2>
        <!-- Query parameter-->
<!--        <a class="btn btn-lg btn-primary" href="/JobPortalApplication/part2movie.htm" role="button">Part 2</a>
       
        <a class="btn btn-lg btn-primary" href="/JobPortalApplication/update.htm" role="button">Part 3</a>
        
        <a class="btn btn-lg btn-primary" href="/JobPortalApplication/part4.htm" role="button">Part 4</a>
        
        <a class="btn btn-lg btn-primary" href="/JobPortalApplication/part7.htm" role="button">Part 7</a>-->
        <br><br>
        
        <c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<a class = "btn btn-info" href="${contextPath}">Job Portal</a>
	<a class = "btn btn-primary" href="/JobPortalApplication/user/register.htm">Register a new User</a><br/>

	<h2>Existing User <small>Please Enter Your Credentials</small></h2>
	<form action="/JobPortalApplication/user/login.htm" method="post">
	
		<table class="table">
		<tr>
		    <td>User Name:</td>
		    <td><input name="username" size="30" required="required" /></td>
		</tr>
		
		<tr>
		    <td>Password:</td>
		    <td><input type="password" name="password" size="30" required="required"/></td>
		</tr>
		
		<tr>
		    <td colspan="2"><input class = "btn btn-success" type="submit" value="Login" /></td>
		</tr>
				
		</table>

	</form>
        
        
<!--        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>-->
    </div>

</body>
</html>
