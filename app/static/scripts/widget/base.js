YY.base = {
    init : function(){
        this._initHeader();
    	this._initGotop();
    },
    initLogin : function(){
        
    },
    _initHeader: function(){
    	$('#header .sub-nav-hre').click(function(){
    		location.href = $(this).data('href');
    	});
    },
    _initGotop : function(){
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
    			scrollTop : 115
    		},300);
    	});
    },
    showPopup : function(obj, overlay, callback){
        var popup = $(obj),
            overlay = $(overlay);
        popup.fadeIn(callback);
        overlay.show();
        var windowWidth = document.documentElement.clientWidth,
            windowHeight = document.documentElement.clientHeight,
            popupHeight = popup.height(),
            popupWidth = popup.width(),
            scrollTop = $('body').scrollTop();
        if(isAbsolute === true){
            popup.css({
                "position": "absolute",
                "top": scrollTop + windowHeight / 2 - popupHeight / 2,
                "left": windowWidth / 2 - popupWidth / 2,
                "z-index": 2100
            });
        }else{
            popup.css({
                "position": "fixed",
                "top": windowHeight / 2 - popupHeight / 2,
                "left": windowWidth / 2 - popupWidth / 2,
                "z-index": 2100
            });
        }
        overlay.click(function() {
            popup.fadeOut();
            overlay.hide();
        });
        popup.find(".close").click(function() {
            popup.fadeOut();
            overlay.hide();
        });
    },
    hidePopup : function(obj,overlay) {
        var popup = $(obj),
            overlay = $(overlay);
        popup.fadeOut();
        overlay.hide();
    }
}
$(function(){
	YY.base.init();
});
