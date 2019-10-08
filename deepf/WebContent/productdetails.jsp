<jsp:include page="header.jsp"></jsp:include><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.btn {
  margin: 15px 0;
  background-color: #0099cc;
  color: #fff;
  }
  .img-hoverr-zoom {
  height: ; /* [1.1] Set it as per your need */
  overflow: hidden; /* [1.2] Hide the overflowing of child elements */
}   
.img-hoverr-zoom img {
  transition: transform .5s ease;
}
.borderimg { 
  border: 2px solid transparent;
  background: black;
  width: 100%;
  height: auto;}
/* [3] Finally, transforming the image when container gets hovered */
.img-hoverr-zoom:hover img {
  transform: scale(1.2);
}
   .btn:hover {
  border: 1px solid #0099cc;
  background-color: green;
  color: #fff;
  font-color: #3366cc; }
  .bg-default{
border: 2px solid transparent;
  
}</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"  
     url="jdbc:mysql://us-cdbr-iron-east-05.cleardb.net/heroku_4dd231616dd25d5?reconnect=true"  
     user="bf9f7203541431"  password="f32bf948"/>  
  
<sql:query dataSource="${db}" var="rs">  
SELECT * from products where ProductId='${param.id}';  
</sql:query>  

<c:forEach var="table" items="${rs.rows}">  


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<center>
  <center class="animatable fadeInRight"><a href=""><img class="borderimg" src="images/banner_1520x90.jpg" /></a></center>
<br> <br><br><br><br><br><table ><tr><td>
<div class="container" >
  <h2></h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
  <center>   <div class="carousel-inner">
 <div class="item active">
   <div class="img-hoverr-zoom"> <img src="${table.titleimages}" alt="Los Angeles" style="width:50%; height:auto;">
      </div>  </div>

      <div class="item">
       <div class="img-hoverr-zoom" > <img src="${table.titleimages}"  alt="Chicago" style="width:50%; height:auto;">
      </div></div>
    
      <div class="item">
        <div class="img-hoverr-zoom" ><img src="${table.titleimages}" alt="New york" style="width:50%; height:auto;">
    </div>  </div>
    </div>

    <!-- Left and right controls -->

    </a>
  </div></center>
</div ></center>

 


<center> <h3><!DOCTYPE html>
<html>
<head>
<style>
table, td, th {  
  border: 1px solid #ddd;
  text-align: left;
}

table {
width: 100%;
  border-collapse: collapse;
  
  font-size: 20px;
  font-weight: bold;
}

th, td {
  padding: 15px;
}
</style>
</head>
<body> 
<a href="buynow.jsp?id=${table.ProductId}"><button type="button" class="btn btn-lg">BUY NOW</button></a> <table width="1000px">
 <br><br> <tr>
    
  </tr><br>
  <tr>
   <td>Product Id:</td>
    <td><c:out value=" ${table.ProductId}"/></td>
   
  </tr>
   <tr>
    <td>Product Name:</td>
    <td><c:out value=" ${table.name}"/></td>
   
  </tr>
   <tr>
    <td>Description:</td>
    <td><c:out value="${table.description}"/></td>
   
  </tr>
   <tr>
    <td>Price:</td>
    <td><c:out value=" ${table.price}"/></td>
   
  </tr>
 
</table>

</body>
</html>
</center></body>


</c:forEach> 
<br><br>
</td></tr></table>


</body>

</html> 
<div style="margin-top:100px;"><center> <h1>YOU MAY ALSO LIKE</h1></center>
<jsp:include page="youmayalsolike.jsp"></jsp:include></div>
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