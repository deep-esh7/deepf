<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="SendMail" method="post">  
To:<input type="text" name="to"/><br/>  
Subject:<input type="text" name="subject"><br/>  
Text:<textarea rows="10" cols="70" name="msg"></textarea><br/>  
<input type="submit" value="send"/>  
</form>  
</body>
</html>