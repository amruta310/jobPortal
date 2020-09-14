<%-- 
    Document   : employer-home
    Created on : 14-Apr-2020, 00:10:46
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
<title>Employer Home Page</title>

<link rel="stylesheet" href="<c:url value="/resources/css/UserStyle.css"/>">
<link rel="stylesheet" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>">

</head>

<body>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="joblist" value="${jobs}" />
<br><br>
<div style="padding: 10px;">
<a class = "btn btn-info" href="${contextPath}/jobs/register.htm" >Add a new Job for ${user.company.companyName}</a>
<%-- <a href="${contextPath}/jobs/delete.htm" >Delete an existing Job for ${user.company.companyName}</a> <br /> --%>
<a id="topButton" href="${contextPath}" > Logout</a>
 <h1 id="h1">The Below Jobs are already present for ${user.company.companyName}</h1>
</div>
 <br><br><br>

<table class="table-condensed" border="1">

<tr>
<td id="td1"> Job ID </td>
<td id="td1"> Job Name </td>
<td id="td1"> Job Description </td>
<td id="td1"> Posted By Name </td>
<td id="td1"> Posted By UserName </td>
<td id="td1"> Posted Date </td>
<td id="td1"> Update Job </td>
<!-- <td id="td1"> Delete Job</td> -->

</tr>
<c:forEach items="${joblist}" var="job">

<form:form action="${contextPath}/jobs/update.htm" commandName="joblist"
		method="get">
<tr>
<td><input type="text" name="jobId" value="${job.jobID}" readonly></td>
<td id="td2"> ${job.jobName}</td>
<td id="td2"> ${job.jobDesc}</td>
<td id="td2"> ${job.postedName}</td>
<td id="td2"> ${job.postedID}</td>
<td id="td2"> ${job.postedDate}</td>
<td id="td2"><input class = "btn btn-info" type="submit" name="action" value="Edit"></td>
<!-- <td><input type="submit" name="action" value="Delete"></td> -->
</tr>
</form:form>


</c:forEach>
</table> 

</body>
</html>