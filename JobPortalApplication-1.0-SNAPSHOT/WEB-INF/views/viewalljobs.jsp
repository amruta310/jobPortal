<%-- 
    Document   : viewalljobs
    Created on : 17-Apr-2020, 00:20:42
    Author     : Amruta
--%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View All Jobs</title>
<link rel="stylesheet" href="<c:url value="/resources/css/UserStyle.css"/>">
<link rel="stylesheet" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>">
</head>
<body>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="joblist" value="${jobs}" />
<br><br>
<a class = "btn btn-danger" style="margin-left: 30px;" href="${contextPath}">Home</a>
<a  class = "btn btn-info" style="margin-left: 1090px;" href="${contextPath}/user/login.htm" >Login And Start Applying</a>


<br><br>
<table align="center" class="table-condensed" border="1">

<tr>
<td id="td1"> Requesition ID </td>
<td id="td1"> Company </td>
<td id="td1"> Job Name </td>
<td id="td1"> Job Description </td>
<td id="td1"> Posted by </td>
<td id="td1"> Posted Date </td>


</tr>
<c:forEach items="${joblist}" var="job">

<form:form action="${contextPath}/jobs/add.htm" commandName="joblist"
		method="post">
<tr>
<td id="td2">${job.jobID}</td>
<td id="td2">${job.company.companyName}</td>
<td id="td2"> ${job.jobName}</td>
<td id="td2"> ${job.jobDesc}</td>
<td id="td2"> ${job.postedName}</td>
<td id="td2"> ${job.postedDate}</td>
</tr>
</form:form>
</c:forEach>
</table> 
</body>
</html>