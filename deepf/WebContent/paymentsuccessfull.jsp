<jsp:include page="header.jsp"></jsp:include><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
 <%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
    function redirect() {
        window.location = "Index.jsp";
    }
    window.setTimeout("redirect()", 60000);
</script>
<style>
table, td, th {  
  border: 1px solid #ddd;
  text-align: center;
}

table {
  border-collapse: collapse;
  
  font-size: 20px;
  font-weight: bold;
}

th, td {
  padding: 15px;
}
.borderimg { 
  border: 2px solid transparent;
  background: black;}
</style>
 <center class="animatable fadeInRight"><a href=""><img class="borderimg" src="images/banner_1520x90.jpg" /></a></center>

<br><br><br>
<center>
<table width="100%">
<tr><td>

<h1><center>
<font color="green">Congrats! Your Payment Is Successfull! Thank Your For Shopping With Us!</font></h1>
<br><center><a href="./products.jsp" ><font color="blue"><h3>Please Do Check Our Our More Products</h3></font></a></center>
</center><br><br> <center><h2><font color="red">Yo Gonna Redirect Automatically In 60 Sec To Homepage!</font></h2></center>

</td></tr></table></center>
<br><br><br>
<center>


<table width="100%">
<tr><td>

<center>
<h3><font color="red">IMPORTANT NOTE:</font></h3> <h4><font color="darkred">Please Enter Correct Amount As Mentioned<br> With Product & Make The Payment<br> Successfully To Receive Your Order On Time . Please Also Note That If We Receive Less Or <br>More Then As Mentioned Amount We Will Intiate A Refund And Cancel The Order<br> (Refund will be processed 24-72 working hrs).<br> THANK YOU!</font><br><br> <br><br> </h4>

</td></tr></table></center>

<style type="text/css">
*{
padding: 0;}

.div{
  position: relative;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: black;
   color: white;
   text-align: center;
   margin-top:25px;
}
</style>
<br><br><br>
<center class="div"><br><b><font color="white" style="margin-bottom: -50px;  "><center>DEEP Fitness is an fitness freak guy who is inspiring the youth by his information and knowledge about fitness<br>
Contact Us @ 9557920831<br>DEEP FITNESS (2018-2019)</center>
</font></b>

<br>

</nav></center>

</body>
</html>
