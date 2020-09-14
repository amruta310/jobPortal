<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC Movie Store</title>
    </head>

    <body>
        <h2>Movie Store</h2>
        <form action='/WebToolsAssignment4/AddMovie/' method='POST'>
            <label>Please make your selection below</label>
            <select name='UserInput' class='form-control'>
                <option value='browse'>Browse Movies</option>
                <option value='add'>Add Movies to List</option>
            </select>
            <br>
            <input type='submit' value='Submit'>
        </form>
    </body>
</html>
