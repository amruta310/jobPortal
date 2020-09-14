<%-- 
    Document   : home
    Created on : 18-Apr-2020, 00:19:54
    Author     : Amruta
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Job Portal</title>
<link rel="stylesheet" href="<c:url value="/resources/css/MainStyle.css"/>">

<link rel="stylesheet" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>">
 
</head>
<body>
    <br><br>
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<a class = "btn btn-danger" href="${contextPath}">Home</a>
	

	<h2 id="h1">Login</h2>
	<form action="${contextPath}/user/login.htm" method="post">
	
		<table class="table" id="tableDesign">
                    <tr>
                        <td>User Name:</td>
                        <td><input name="username" size="30" required="required" /></td>
                    </tr>

                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="password" size="30" required="required"/></td>
                    </tr>

                    <tr>
                        <td id="td3" colspan="2"><input class = "btn btn-danger" type="submit" value="Login" /></td>
                    </tr>				
		</table>
	</form>
        <br><br>
        <h2>Don't have account? Sign up Here:</h2>
        <a class = "btn btn-danger" href="${contextPath}/user/register.htm">Register a new User</a><br/>


</body>
</html>

