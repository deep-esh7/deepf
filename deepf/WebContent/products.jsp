<jsp:include page="header.jsp"></jsp:include><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
   

<head>    <style>
 .btn {
  margin: 15px 0;
  background-color: #0099cc;
  color: #fff;
  }
   .btn:hover {
  border: 1px solid #0099cc;
  background-color: #fff !important;
  color: #3366cc;
  font-color: #3366cc; }
   .img-hover-zoom {
  height: 100%; /* [1.1] Set it as per your need */
  overflow: hidden; /* [1.2] Hide the overflowing of child elements */
}   
.img-hover-zoom img {
  transition: transform .5s ease;
}
.borderimg { 
  border: 2px solid transparent;
  background: black;
  width: 100%;
  height: auto;}
/* [3] Finally, transforming the image when container gets hovered */
.img-hover-zoom:hover img {
  transform: scale(1.2);
}
div.gallery {
  margin: 5px;
  border: 1px solid #ccc;
  float: left;
  width: 350px;
}

div.gallery:hover {
  border: 1px solid blue;
}

div.gallery img {
  width: 100%;
  height: auto;
}

div.desc {
  padding: 15px;
  text-align: center;
}

table, td, th {  
  border: 1px solid #ddd;
  text-align: left;
}

table {
  border-collapse: collapse;
  
  font-size: 20px;
  font-weight: ;
  width: 50%;
}

th, td {
  padding: 15px;
}</style>
<title>sql:query Tag</title>  
</head>  
<body>  
   
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"  
     url="jdbc:mysql://us-cdbr-iron-east-05.cleardb.net/heroku_4dd231616dd25d5?reconnect=true"  
     user="bf9f7203541431"  password="f32bf948"/>  
  
<sql:query dataSource="${db}" var="rs">  
SELECT * from products;  
</sql:query>  

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<center><a href=""><img class="borderimg " src="images/banner_1520x90.jpg"/></a></center> <br><br><br>
<c:forEach var="table" items="${rs.rows}"><hr>
<center><table><tr><td>
<div class="gallery img-hover-zoom">
  <a target="_blank" href="img_5terre.jpg">
    <img src="${table.titleimages}" alt="Cinque Terre" >
  </a>
</div>
 <a href="productdetails.jsp?id=${table.ProductId}"><div class="desc" style="margin-top: 130px;">${table.name}</a><br><strong>Price: ${table.price}</strong>  <br><a href="productdetails.jsp?id=${table.ProductId}"><button type="button" class="btn btn-lg">BUY NOW</button></a> 
               </div></td></tr></table></center><hr>




 </c:forEach>






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

</body></html>

