<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<jsp:include page="titleimages.jsp"></jsp:include>
	
	<jsp:include page="titleproducts.jsp"></jsp:include>
	
	
	
	<jsp:include page="middlematerial.jsp"></jsp:include>
	
	<jsp:include page="video.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
	
	
	 
  <head>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
  <link rel="stylesheet" href="css/animation.css">
</head>
<script type="text/javascript">// Trigger CSS animations on scroll.
//Detailed explanation can be found at http://www.bram.us/2013/11/20/scroll-animations/

//Looking for a version that also reverses the animation when
//elements scroll below the fold again?
//--> Check https://codepen.io/bramus/pen/vKpjNP

jQuery(function($) {
 
 // Function which adds the 'animated' class to any '.animatable' in view
 var doAnimations = function() {
   
   // Calc current offset and get all animatables
   var offset = $(window).scrollTop() + $(window).height(),
       $animatables = $('.animatable');
   
   // Unbind scroll handler if we have no animatables
   if ($animatables.length == 0) {
     $(window).off('scroll', doAnimations);
   }
   
   // Check all animatables and animate them if necessary
		$animatables.each(function(i) {
      var $animatable = $(this);
			if (($animatable.offset().top + $animatable.height() - 20) < offset) {
       $animatable.removeClass('animatable').addClass('animated');
			}
   });

	};
 
 // Hook doAnimations on scroll, and trigger a scroll
	$(window).on('scroll', doAnimations);
 $(window).trigger('scroll');

});</script>
  
  
	
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">