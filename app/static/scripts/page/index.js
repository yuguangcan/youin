YY.indexPage = {
    init:function(){
        this.initBannerScroll();
    },
    initBannerScroll : function(){
        var pointers = $('.scroll-point li');
        $(".scrollable").scrollable(
        {
            circular: true,
            mousewheel: false,
            next: ".navi-next",
            prev: ".navi-pre"
        }).autoscroll({interval: 5000});
        var api = $(".scrollable").data("scrollable");
        api.onSeek(function() {
            var current = this.getIndex();
            pointers.filter('.cur').removeClass('cur');
            pointers.eq(current).addClass('cur');
        });
    }
}
$(function(){
    YY.indexPage.init();
});
