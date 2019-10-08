<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<body>
	<center> <form action="uploadserver" method="post">
				Image url: : <input type="text" name="imgurl"></br>
				Product Name: : <input type="text" name="name" ></br>
				Product Description : <input type="text" name="description"></br>
				Product Price: <input type="text" name="price"></br>
				Title Page Images: <input type="text" name="titleimages"></br>
				<input type="submit" value="Submit"> </form></center>
				<div id="messageDivv" style="display: none;"></div>
	<script>
		jQuery(function($) {
			$("input[type='submit']").click(function(e) {
				e.preventDefault();
			
				var imgurl = $("input[name='imgurl']").val();
				var name = $("input[name='name']").val();
				var description = $("input[name='description']").val();
				var price = $("input[name='price']").val();
				var price = $("input[name='titleimages']").val();

				var data = {
					imgurl : imgurl,
					name : name,
					description : description,
					titleimages : titleimages,
					price: price,
				}
				$.ajax({
					type : "POST",
					url : "./uploadsuccess",
					data : data,
				}).done(function(data) {
					alert(data);
					window.location = './uploadproducts.jsp';
				}).fail(function(jqXHR, textStatus) {
					alert(textStatus);
				});
			});
		});

		//function to display message to the user
		function showMessage(results) {
			if (results == 'SUCCESS') {
				$('#messageDivv')
						.html(
								"<font color='green'>You are successfully logged in. </font>")
			} else if (results == 'FAILURE') {
				$('#messageDivv')
						.html(
								"<font color='red'>Username or password incorrect </font>")
			}
		}
	</script>
</body>
</html>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

</html>