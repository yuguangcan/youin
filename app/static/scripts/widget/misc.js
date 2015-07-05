YY.misc = {
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
        // if(isAbsolute === true){
        //     popup.css({
        //         "position": "absolute",
        //         "top": scrollTop + windowHeight / 2 - popupHeight / 2,
        //         "left": windowWidth / 2 - popupWidth / 2,
        //         "z-index": 2100
        //     });
        // }else{
            popup.css({
                "position": "fixed",
                "top": windowHeight / 2 - popupHeight / 2,
                "left": windowWidth / 2 - popupWidth / 2,
                "z-index": 2100
            });
        // }
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
    },
    changeLike : function(increase){
        var likeCount = $('#header-like-count');
        likeCount.html(increase? (parseInt(likeCount.html()) + 1):(parseInt(likeCount.html()) - 1));
    },
    changeCart : function(increase,count){
        var cartCount = $('#header-cart-count');
        cartCount.html(increase? (parseInt(cartCount.html()) + (count || 1)):(parseInt(cartCount.html()) - (count || 1)));
    }
}