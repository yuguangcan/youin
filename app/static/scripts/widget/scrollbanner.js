YY.scrollbanner = {
	init: function(){
		var pointers = $('.m-scrollbanner .scroll-point li');
        $(".m-scrollbanner").scrollable(
        {
            circular: true,
            mousewheel: false,
            next: ".m-scrollbanner .navi-next",
            prev: ".m-scrollbanner .navi-pre"
        }).autoscroll({interval: 5000});
        var api = $(".m-scrollbanner").data("scrollable");
        api.onSeek(function() {
            var current = this.getIndex();
            pointers.filter('.cur').removeClass('cur');
            pointers.eq(current).addClass('cur');
        });
        pointers.on('click',function(){
            var _this = $(this);
            if(!_this.hasClass('cur')){
                var index = $.inArray(this,pointers);
                api.seekTo(index);
            }
        });
	}
}