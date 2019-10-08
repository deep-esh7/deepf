

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-expand-sm bg-dark navbar">
 <b><ul class="navbar-nav" style="margin-left:50px">
    <li class="nav-item">
     <div data-wow-offset="200" class="animatable bounceInRight">  <a class="nav-link"  ><h2><b><font color="red">DEEP FITNESS</font></b></h2></a>
   </div> 
    </li>
    <div data-wow-offset="200" class="animatable bounceInDown"><div id="1" style="margin-left:220px"><font color="white">ORDER NOW AT:  <font color="red">9557920831</font></font>
     </div></div>
  </ul></b></nav>
  
  
  
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
  
  