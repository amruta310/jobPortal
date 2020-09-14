<%-- 
    Document   : job-update
    Created on : 17-Apr-2020, 00:20:36
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
<title>Jobs Add</title>
<link rel="stylesheet" href="<c:url value="/resources/css/UserStyle.css"/>">
<link rel="stylesheet" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>">

</head>
<body>
<c:set var="companyname" value="${companyName}" />
<c:set var="job" value="${jobList}" />

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<br><br>
<div style="padding-left: 10px;">
<a class = "btn btn-info" href="${contextPath}/user/employer.htm" >Home Page</a>
<h2 style="color: white">Update the job for ${companyname}</h2>
</div>

	<form:form action="${contextPath}/jobs/update.htm"
		method="post">
            <br><br>
		<table>
			<tr>
				<td style="color: white">Job ID:</td>
				<td style="padding-left: 10px;"><input type ="text" name="jobId" value="${job.jobID}" readonly></td>
			</tr>
			
			<tr>
				<td style="color: white">Job Name:</td>
				<td style="padding-left: 10px;"><input type ="text" name = "jobName" value="${job.jobName}"></td>
			</tr>
			
			<tr>
				<td style="color: white">Job Description:</td>
                                <td style="padding-left: 10px;"><input type ="text" name = "jobDesc" value="${job.jobDesc}"></td>
			</tr>

			

			<tr>
                            <td colspan="2" style="padding: 50px;"><input class = "btn btn-info" type="submit" value="Update Job" /></td>
			</tr>
		</table>

	</form:form>
</body>
</html>