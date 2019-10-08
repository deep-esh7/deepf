<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<meta charset="ISO-8859-1">

<style>.btn {
  margin: 15px 0;
  background-color: #0099cc;
  color: #fff;
  }
  .img-hover-zoom {
  height: 400px; /* [1.1] Set it as per your need */
  overflow: hidden; /* [1.2] Hide the overflowing of child elements */
} 
.img-hover-zoom img {
  transition: transform .5s ease;
}

/* [3] Finally, transforming the image when container gets hovered */
.img-hover-zoom:hover img {
  transform: scale(1.2);
}


  .btn:hover {
  border: 1px solid #0099cc;
  background-color: #fff !important;
  color: #3366cc;
  font-color: #3366cc; }
  </style>
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"  
     url="jdbc:mysql://us-cdbr-iron-east-05.cleardb.net/heroku_4dd231616dd25d5?reconnect=true"  
     user="bf9f7203541431"  password="f32bf948"/>  
  
<sql:query dataSource="${db}" var="rs">  
SELECT * from products where ProductId=13;  
</sql:query>  
<sql:query dataSource="${db}" var="rs2">  
SELECT * from products where ProductId=12;  
</sql:query> 
<sql:query dataSource="${db}" var="rs3">  
SELECT * from products where ProductId=41;  
</sql:query> 
<sql:query dataSource="${db}" var="rs4">  
SELECT * from products;  
</sql:query> 
<title>Insert title here</title>
</head>
<body>
<style> .container  {
   margin-top: 16px;

  }
  
  .borderimg { 
  border: 2px solid transparent;
  background: black;}
/* [3] Finally, transforming the image when container gets hovered */

  </style>




 <style> .carousel-inner img {
    width: 100%;
    height: 100%;

  }</style>


  
  <center>
  
   <div data-wow-offset="200" class="animatable bounceInUp">
<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo1" data-slide-to="0" class="active"></li>
    <li data-target="#demo1" data-slide-to="1"></li>
    <li data-target="#demo1" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
     <div class="container">
 
 <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
       <div class="img-hover-zoom">
           <c:forEach var="table" items="${rs.rows}">  
<img src="${table.titleimages}" style="width:100%" height="100%"/>

</c:forEach>  </div>
          <div class="caption"><c:forEach var="table" items="${rs.rows}"> 
            <p><center><a href="productdetails.jsp?id=${table.ProductId}"><h3> ${table.name}</h3><button class="btn btn-lg">BUY NOW</button></a></center></p>
        </c:forEach>  </div>
        
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
       <div class="img-hover-zoom"> 
          <c:forEach var="table" items="${rs2.rows}">  
<img src="${table.titleimages}" style="width:100%" height="100%"/>

</c:forEach> </div>        <div class="caption"><c:forEach var="table" items="${rs2.rows}">
            <p><center><a href="productdetails.jsp?id=${table.ProductId}"><h3> ${table.name}</h3><button type="button" class="btn btn-lg">BUY NOW</button></a></center></p>
        </c:forEach>  </div>
        
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
      <div class="img-hover-zoom">
          <c:forEach var="table" items="${rs3.rows}">  
<img src="${table.titleimages}" style="width:100%" height="100%"/>

</c:forEach>  </div>
<a href="${table.ProductId}"> <div class="caption"><c:forEach var="table" items="${rs3.rows}">
            <p><center><a href="productdetails.jsp?id=${table.ProductId}"><h3> ${table.name}</h3><button type="button" class="btn btn-lg">BUY NOW</button></a></center></p>
        </c:forEach>  </div>
        
      </div>
    </div>
  </div>
</div>
    </div>
    <div class="carousel-item">
     <div class="container">
 
 <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
       <div class="img-hover-zoom">
           <c:forEach var="table" items="${rs.rows}">  
<img src="${table.titleimages}" style="width:100%" height="100%"/>

</c:forEach> </div>
          <div class="caption"><c:forEach var="table" items="${rs.rows}">
            <p><center><a href="${table.ProductId}"><h3> ${table.name}</h3><button type="button" class="btn btn-lg">BUY NOW</button></a></center></p>
        </c:forEach>  </div>
        
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
      <div class="img-hover-zoom">
        
          <c:forEach var="table" items="${rs2.rows}">  
<img src="${table.titleimages}" style="width:100%" height="100%"/>

</c:forEach>    </div>     <div class="caption"><c:forEach var="table" items="${rs2.rows}">
            <p><center><a href="${table.ProductId}"><h3> ${table.name}</h3><button type="button" class="btn btn-lg">BUY NOW</button></a></center></p>
        </c:forEach>  </div>
        
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
      <div class="img-hover-zoom">
      
          <c:forEach var="table" items="${rs3.rows}">  
<img src="${table.titleimages}" style="width:100%" height="100%"/>

</c:forEach> </div> <a href="${table.ProductId}"> <div class="caption"><c:forEach var="table" items="${rs3.rows}">
            <p><center><a href="${table.ProductId}"><h3> ${table.name}</h3><button type="button" class="btn btn-lg">BUY NOW</button></a></center></p>
        </c:forEach>  </div>
        
      </div>
    </div>
  </div>
</div>
    </div>
    <div class="carousel-item">
     <div class="container">
 
 <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
      <div class="img-hover-zoom">
       
           <c:forEach var="table" items="${rs.rows}">  
<img src="${table.titleimages}" style="width:100%" height="100%"/>

</c:forEach> </div>
          <div class="caption"><c:forEach var="table" items="${rs.rows}">
            <p><center><a href="${table.ProductId}"><h3> ${table.name}</h3><button type="button" class="btn btn-lg">BUY NOW</button></a></center></p>
        </c:forEach>  </div>
        
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
      <div class="img-hover-zoom">
        
          <c:forEach var="table" items="${rs2.rows}">  
<img src="${table.titleimages}" style="width:100%" height="100%"/>

</c:forEach>    </div>     <div class="caption"><c:forEach var="table" items="${rs2.rows}">
            <p><center><a href="${table.ProductId}"><h3> ${table.name}</h3><button type="button" class="btn btn-lg">BUY NOW</button></a></center></p>
        </c:forEach>  </div>
        
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
      <div class="img-hover-zoom">
      
          <c:forEach var="table" items="${rs3.rows}">  
<img src="${table.titleimages}" style="width:100%" height="100%"/>

</c:forEach> </div> <a href="${table.ProductId}"> <div class="caption"><c:forEach var="table" items="${rs3.rows}">
            <p><center><a href="${table.ProductId}"><h3> ${table.name}</h3><button type="button" class="btn btn-lg">BUY NOW</button></a></center></p>
        </c:forEach>  </div>
        
      </div>
    </div>
  </div>
</div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo1" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo1" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
</center></div> 
</body>
</html>

