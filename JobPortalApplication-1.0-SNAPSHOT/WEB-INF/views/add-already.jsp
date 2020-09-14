<%-- 
    Document   : add-already
    Created on : 16-Apr-2020, 00:17:54
    Author     : Amruta
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Job Added</title>
<link rel="stylesheet" href="<c:url value="/resources/css/UserStyle.css"/>">
<link rel="stylesheet" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>">
</head>
<body>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
	<a class = "btn btn-info" href="${contextPath}/user/employee.htm" >Home Page</a>
<h1 id="td1">You have already applied for this job</h1>
</body>
</html>