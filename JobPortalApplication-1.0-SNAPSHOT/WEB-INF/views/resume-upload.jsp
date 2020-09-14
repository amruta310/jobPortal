<%-- 
    Document   : resume-upload
    Created on : 20-Apr-2020, 16:17:07
    Author     : Amruta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="<c:url value="/resources/css/UserStyle.css"/>">
    </head>
    <body>
         <c:set var="contextPath" value="${pageContext.request.contextPath}" />
        <h1 id="td1">Upload your resume here:</h1>
        <div align="center">
        <form:form action="${contextPath}/jobs/resumeUpload.htm" commandName="resume"
		method="post">
        <form method="post" action="${contextPath}jobs/doUpload.htm"  enctype="multipart/form-data">
            <table border="1">
                <tr>
                    <td id="td1">Resume:</td>
                    <td id="td1"><input class="btn btn-info" type="file" name="fileUpload" size="50" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input class="btn btn-info" type="submit" value="Upload" /></td>
                </tr>
            </table>
        </form:form>
    </div>
    </body>
</html>
