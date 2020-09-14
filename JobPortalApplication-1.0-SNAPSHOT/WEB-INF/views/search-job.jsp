<%-- 
    Document   : search-job
    Created on : 17-Apr-2020, 00:22:17
    Author     : Amruta
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Jobs</title>
        <link rel="stylesheet" href="<c:url value="/resources/css/UserStyle.css"/>">
<link rel="stylesheet" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>">
    </head>
    <body>
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<a class = "btn btn-info" href="${contextPath}/user/employee.htm" >Home Page</a>
	<h1 id="td1">Please Search your favorite job</h1>
    
        <form action="${contextPath}/jobs/search.htm" method="post">
            <div id="td1">
            Enter Name <input type="text" name="inputtext" required /> <br><br>
            
            <label>Search Type:</label>
            <input type="radio" name="searchkey" value="company" checked="checked"> Company
            <input type="radio" name="searchkey" value="jobname"> Job Name <br/>
            
            <input type="hidden" name="action" value="searchuser"/>
            <input class = "btn btn-danger" type="submit" name="search" value="Search Job"/></div>
        </form>
    </body>
</html>