<jsp:include page="header.jsp"></jsp:include><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<head>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
 <%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 
</head>
</head>
<body>

  
  
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"  
     url="jdbc:mysql://us-cdbr-iron-east-05.cleardb.net/heroku_4dd231616dd25d5?reconnect=true"  
     user="bf9f7203541431"  password="f32bf948"/>  
     
     <sql:query dataSource="${db}" var="rs">  
SELECT * from products where ProductId='${param.id}';  
</sql:query>  

<c:forEach var="table" items="${rs.rows}">  
  

<br><br><br><br><br>
 <center>
 
 
 <div class="well well-lg"><h1><font color="green">Thank You For Shopping With Us! :-)</font></h1><br>
 <font color="red"><h3>Please Make Your Payment Of <c:out value="${table.price}"/> For The Product <c:out value="${table.name}"/> Whose Product ID is <c:out value="${table.ProductId}"/> To Confirm Your Order!</h3></font>
<br><br>

<font color="darkblue"><h1>Please  <script src="https://js.instamojo.com/v1/checkout.js"></script>
    <script>
      /* Start client-defined Callback Handler Functions */
      function onOpenHandler () {
        alert('Payment Server Is Opened Now ! You Are On The Secure Server!');
      }

      function onCloseHandler () {
        alert('Payment Server Closed!');
      }
          function onPaymentSuccessHandler (response) {
        alert('Payment Successfull');
        
        console.log('Payment Success Response', response);
        window.location = './paymentsuccessfull.jsp';
      }

      function onPaymentFailureHandler (response) {
        alert('Sorry Your Payment Is Failed Please Retry');
        console.log('Payment Failure Response', response);
        
      }
      /* End client-defined Callback Handler Functions */

      /* Configuring Handlers */
      Instamojo.configure({
        handlers: {
          onOpen: onOpenHandler,
          onClose: onCloseHandler,
          onSuccess: onPaymentSuccessHandler,
          onFailure: onPaymentFailureHandler
        }
      });
      
      function onButtonClick() {
        Instamojo.open('http://www.instamojo.com/@soundwapcom');
      }
    </script>
  </head>
  <body>
    <button onclick="onButtonClick()" class="btn btn-primary btnlg">
      CLICK HERE
    </button>
  To Make Payment Of <c:out value="${table.price}"/> Only!</h1></font>
 </div>
 </center>
</c:forEach>

 <style>
table, td, th {  
  border: 1px solid #ddd;
  text-align: left;
}

table {
  border-collapse: collapse;
  
  font-size: 20px;
  font-weight: bold;
}

th, td {
  padding: 15px;
}
</style>
<table>
 <div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">
<center>
	
<br><br> 
<br><br>
<h3><font color="red">IMPORTANT NOTE:</font></h3> <h4><font color="darkred">Please Enter Correct Amount As Mentioned<br> With Product & Make The Payment<br> Successfully To Receive Your Order On Time . Please Also Note That If We Receive Less Or <br>More Then As Mentioned Amount We Will Intiate A Refund And Cancel The Order<br> (Refund will be processed 24-72 working hrs).<br> THANK YOU!</font><br><br> <br><br> </h4>
</table></center></article>

</div>
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
