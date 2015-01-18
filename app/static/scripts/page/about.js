$(function(){
	$('.about-content .nav a').click(function(){
		$('.about-content .nav a').find('.cur').removeClass('cur');
		$(this).addClass('cur');
	})
});