$(function(){
	$('.about-content .nav a').click(function(){
		$('.about-content .nav a').find('.cur').removeClass('cur');
		$(this).addClass('cur');
	});
	$(window).on('scroll',function(){
		if($(document).scrollTop()>200){
			$('.about-content .nav').addClass('fixed');
		}else{
			$('.about-content .nav').removeClass('fixed');
		}
	})
});