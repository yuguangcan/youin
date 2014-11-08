YY.base = {
    init : function(){
    	this.initGotop();
    },
    initLogin : function(){
        
    },
    initHeader: function(){
    	$('#header .sub-nav-hre').click(function(){
    		location.href = $(this).data('href');
    	});
    },
    initGotop : function(){
    	var gotop = $('#gotop'),
            gotopIcon = $('#gotop i');
    	$(window).on('scroll',function(){
    		if ($(window).scrollTop() > $(window).height() * 2){
    			gotop.show();
    		}else{
    			gotop.hide();
    		}
    	});
    	gotopIcon.click(function(){
    		$('body').animate({
    			scrollTop : 0
    		},300);
    	});


    }
}
$(function(){
	YY.base.init();
});
