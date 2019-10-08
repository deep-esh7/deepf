<jsp:include page="header.jsp"></jsp:include><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="ISO-8859-1">
<title>Buy Now</title><sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"  
     url="jdbc:mysql://us-cdbr-iron-east-05.cleardb.net/heroku_4dd231616dd25d5?reconnect=true"  
     user="bf9f7203541431"  password="f32bf948"/>  
     
  
<sql:query dataSource="${db}" var="rs">  
SELECT * from products where ProductId='${param.id}';  
</sql:query>  </title>
</head>
<body>

<c:forEach var="table" items="${rs.rows}">  

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
<style>
.loginBtn--google {
  /*font-family: "Roboto", Roboto, arial, sans-serif;*/
  background: #DD4B39;
}
.loginBtn--google:before {
  border-right: #BB3F30 1px solid;
  background: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/14082/icon_google.png') 6px 6px no-repeat;
}
.loginBtn--google:hover,
.loginBtn--google:focus {
  background: #E74B37;
}
.loginBtn {
  box-sizing: border-box;
  position: relative;
  /* width: 13em;  - apply for fixed size */
  margin: 0.2em;
  padding: 0 15px 0 46px;
  border: none;
  text-align: left;
  line-height: 34px;
  white-space: nowrap;
  border-radius: 0.2em;
  font-size: 16px;
  color: #FFF;
}
.loginBtn:before {
  content: "";
  box-sizing: border-box;
  position: absolute;
  top: 0;
  left: 0;
  width: 34px;
  height: 100%;
}
.loginBtn:focus {
  outline: none;
}
.loginBtn:active {
  box-shadow: inset 0 0 0 32px rgba(0,0,0,0.1);
}

.divider-text {
    position: relative;
    text-align: center;
    margin-top: 15px;
    margin-bottom: 15px;
}
.divider-text span {
    padding: 7px;
    font-size: 12px;
    position: relative;   
    z-index: 2;
}
.loginBtn--facebook {
  background-color: #4C69BA;
  background-image: linear-gradient(#4C69BA, #3B55A0);
  /*font-family: "Helvetica neue", Helvetica Neue, Helvetica, Arial, sans-serif;*/
  text-shadow: 0 -1px 0 #354C8C;
}
.loginBtn--facebook:before {
  border-right: #364e92 1px solid;
  background: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/14082/icon_facebook.png') 6px 6px no-repeat;
}
.loginBtn--facebook:hover,
.loginBtn--facebook:focus {
  background-color: #5B7BD5;
  background-image: linear-gradient(#5B7BD5, #4864B1);
}


.divider-text:after {
    content: "";
    position: absolute;
    width: 100%;
    border-bottom: 1px solid #ddd;
    top: 55%;
    left: 0;
    z-index: 1;
}

.btn-facebook {
    background-color: #405D9D;
    color: #fff;
}
.btn-twitter {
    background-color: #42AEEC;
    color: #fff;
}
.card {
    box-shadow: 10px 0px 40px rgba(0,0,0, .2);
  } 
 .card {
    border: 1px solid blue; 
    border-radius:0 !important;
    transition: box-shadow 0.5s;
  }
  
  
  * {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

.input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

.input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}</style>
  
		<div id="messageDiv" style="display: none;"></div>
	
	<script>
		jQuery(function($) {
			$("input[type='submit']").click(function(e) {
				e.preventDefault();
				
				var name = $("input[name='name']").val();
				var email = $("input[name='email']").val();
				var address = $("input[name='address']").val();
				var city = $("input[name='city']").val();
				var state = $("input[name='state']").val();
				var pincode = $("input[name='pincode']").val();
				var mobile = $("input[name='mobile']").val();
				var productid = $("input[name='productid']").val();
				var productname = $("input[name='productname']").val();
				var productprice = $("input[name='productprice']").val();
				var paymentlink = $("input[name='paymentlink']").val();

				var data = {
					name : name,
					email : email,
					address : address,
					city : city,	
				    state : state,
					pincode : pincode,
					mobile : mobile,
					productid : productid,	
					productname : productname,
					productprice : productprice,
					paymentlink : paymentlink,
				}
				$.ajax({
					type : "POST",
					url : "./order",
					data : data,
				}).done(function(data) {
					alert(data);
					window.location = './ordersuccess.jsp?id=${table.ProductId}';
				}).fail(function(jqXHR, textStatus) {
					alert(textStatus);
				});
			});
		});

		//function to display message to the user
		function showMessage(results) {
			if (results == 'Your Order Is Placed Please Make The Payment To Confirm It!') {
				$('#messageDiv')
						.html(
								"<font color='green'>Your Order Is Placed Please Make The Payment To Confirm It! </font>")
			} else if (results == 'FAILURE') {
				$('#messageDiv')
						.html(
								"<font color='red'>Sorry Your Order Is Not Placed </font>")
			}
		}
	</script>

<center>
<table>


 <div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">

	<tr><br><br><br><br>
<img src="${table.titleimages}"/><br>

   <br><b>ProductId: <c:out value=" ${table.ProductId}"/><br>
Product Name: <c:out value=" ${table.name}"/><br>
 Product Price: <c:out value=" ${table.price}"/></b> <br><br><font color="red">Please Enter Your Delivery Details!</font> <br></tr>

	
	<form action="order" method="post">
	<div id="messageDiv" style="display: none;"></div>
 <label for="productid"><b></b></label>
    <input type="hidden" placeholder="" value="<c:out value=" ${table.ProductId}"/>" name="productid" required>
    <input type="hidden" placeholder="" value="http://deepfitness.herokuapp.com/ordersuccess.jsp?id=${table.ProductId}" name="paymentlink" required>
 <label for="productname"><b></b></label>
    <input type="hidden" placeholder="" value="<c:out value=" ${table.name}"/>" name="productname" required>
 <label for="productprice"><b></b></label>
    <input type="hidden" placeholder="" value="<c:out value=" ${table.price}"/>" name="productprice" required>
<div class="container">
	 <div class="row">
      <div class="col-25"><label for="name"><b>Name:</b></label></div>
     <div class="col-75"> <input type="text" placeholder="Enter Name" name="name" required></div> </div>
    <div class="row">
      <div class="col-25"><label for="email"><b>Email ID:</b></label></div>
    <div class="col-75"> <input type="text"  placeholder="Email"  name="email" required></div></div>
 <div class="row">
      <div class="col-25">
    <label for="address"><b>Address:</b></label></div>
    <div class="col-75"> <input type="text"  placeholder="Address" name="address" required></div></div>
 <div class="row">
      <div class="col-25"> <label for="city"><b>City:</b></label></div>
   <div class="col-75"> <input type="text"  placeholder="City" name="city" required></div></div>
 <div class="row">
      <div class="col-25"><label for="state"><b>State:</b></label></div>
     <div class="col-75"><input type="text" placeholder="State"  name="state" required></div></div>
 <div class="row">
      <div class="col-25"><label for="state"><b>Pincode:</b></label></div>
   <div class="col-75"> <input type="text" placeholder="Pincode" name="pincode" required></div></div>
 <div class="row">
      <div class="col-25"> <label for="mobile"><b>Mobile No:</b></label></div>
   <div class="col-75"> <input type="text" placeholder="Mobile No." name="mobile" required></div></div> 
  <center><br> <input type="submit" class="btn btn-success btn-lg"></center>
   <br><br> <br><br><br> <br><hr>                                                           
</form>

</div>
<h3><font color="red">IMPORTANT NOTE:</font></h3> <h4><font color="darkred">Please Enter Correct Details & Make The Payment Successfully To Receive Your Order On Time . Please Also Note That If We Found Lack Of Information To Disspatch Your Order Or Incorrect Details . We Will Initiate A Refund Or Cancel Your Order! THANK YOU!</font></h4>
</table></center> </article>


</c:forEach>
<html>
  <head>
   
  </body>
</html><jsp:include page="footer.jsp"></jsp:include>