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
    	var gotop = $('#gotop i');
    	$(window).on('scroll',function(){
    		if ($(window).scrollTop() > $(window).height() * 2){
    			gotop.show();
    		}else{
    			gotop.hide();
    		}
    	});
    	gotop.click(function(){
    		$('body').animate({
    			scrollTop : 0
    		},300);
    	});


    }
}
$(function(){
	YY.base.init();
});
