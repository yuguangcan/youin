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
    },
    _cutstr: function(str, len) {
        var str_length = 0;
        var str_len = 0;
        str_cut = new String();
        str_len = str.length;
        for (var i = 0; i < str_len; i++) {
            a = str.charAt(i);
            str_length++;
            if (escape(a).length > 4) {
                //中文字符的长度经编码之后大于4  
                str_length++;
            }
            str_cut = str_cut.concat(a);
            if (str_length >= len) {
                //str_cut = str_cut.concat("...");
                return str_cut;
            }
        }
        //如果给定字符串小于指定长度，则返回源字符串；  
        if (str_length < len) {
            return str;
        }
    },
    autoCutLength : function(input,length){
        var _self = this,
            timer;
        $(input).on('keyup',function(){
            timer && clearTimeout(timer);
            var _this = $(this);
            timer = setTimeout(function(){
                _this.val(_self._cutstr(_this.val(),length));
            },100);
        })
    }
}