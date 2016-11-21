$(document).ready(function(){
	$(this).scrollTop(0);
	$('.navbar-brand>img').css({"height":"200%"});

//Change navbar-default frpm transparent to colored upon scrolling
	var a = $("body").offset().top+100;
	$('.navbar-default').css({"background":"transparent"});
	$('.navbar-default').css({"border-color":"transparent"});

	$(document).scroll(function(){
    if($(this).scrollTop() > a)
    {
       $('.navbar-default').css({"background-color":"#f8f8f8"});
			 $('.navbar-default').css({"border-color":"#e7e7e7"});
			 $('.navbar-brand>img').css({"height":"100%"});
			 $('#section-1').fadeOut(1000);



    } else {
       $('.navbar-default').css({"background":"transparent"});
			 $('.navbar-default').css({"border-color":"transparent"});
			 $('.navbar-brand>img').css({"height":"200%"});
			 $('#section-1').fadeIn(1000);

		 }
	 });

// Front Page Smooth Scrolling
	$("#testimonial-btn").click(function() {
		$('html, body').animate({
				scrollTop: $("#testimonial").offset().top-100
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
