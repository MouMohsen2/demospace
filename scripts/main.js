$(document).ready(function(){
//Change navbar-default frpm transparent to colored upon scrolling
	var a = $("body").offset().top+100;
	$('.navbar-default').css({"background":"transparent"});
	$('.navbar-default').css({"border-color":"transparent"});
	$(document).scroll(function(){
    if($(this).scrollTop() > a)
    {
       $('.navbar-default').css({"background-color":"#f8f8f8"});
			 $('.navbar-default').css({"border-color":"#e7e7e7"});
    } else {
       $('.navbar-default').css({"background":"transparent"});
			 $('.navbar-default').css({"border-color":"transparent"});
		 }
	 });

// Front Page Smooth Scrolling
	$("#testimonial-btn").click(function() {
		$('html, body').animate({
				scrollTop: $("#testimonial").offset().top
		}, 2000);
});

$("#map-btn").click(function() {
	$('html, body').animate({
			scrollTop: $("#map").offset().top
	}, 2000);
});

// $("#addevent").on("click", function(){
//
// 	$.post("new.php", function(data){
//
// 	    $("#event").php(data).fadeIn();
//
// 	});
// 	});
}); //document-ready
