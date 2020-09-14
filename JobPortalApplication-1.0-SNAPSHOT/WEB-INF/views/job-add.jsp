<%-- 
    Document   : job-add
    Created on : 16-Apr-2020, 00:20:30
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


<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<br><br>
<div style="padding: 10px;">
<a class = "btn btn-info" href="${contextPath}/user/employer.htm" >Home Page</a>
<h2 style="color: white;">Add a New Job for ${companyname}</h2>
</div>
	<form:form action="${contextPath}/jobs/register.htm" commandName="joblist"
		method="post">

		<table>
			<tr>
				<td style="color: white;">Job Name:</td>
                                <td style="padding: 30px;"><form:input path="jobName" size="30"/>
					<font color="red"><form:errors path="jobName" /></font></td>
			</tr>

			<tr>
				<td style="color: white;">Job Description</td>
                                <td style="padding: 30px;"><form:input path="jobDesc" size="30"/>
					<font color="red"><form:errors path="jobDesc" /></font></td>
			</tr>

			<tr>
				<td colspan="2"><input class = "btn btn-info" type="submit" value="ADD" /></td>
			</tr>
		</table>

	</form:form>
</body>
</html>