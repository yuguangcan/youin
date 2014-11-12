YY.scrollactivity = {
    init: function() {
        $(".f1").click(function() {
            $('body').animate({
                scrollTop: 180
            }, 300);
        });
        $(".f2").click(function() {
            $('body').animate({
                scrollTop: 845
            }, 300);
        });
        $(".f3").click(function() {
            $('body').animate({
                scrollTop: 1510
            }, 300);
        });
        $(window.document).scroll(function() {
            var s_height = $('body').scrollTop();
            if (s_height <= 700) {
                $(".f1").addClass("active").siblings().removeClass("active");
            } else if (s_height >= 700 && s_height <= 1360) {
                $(".f2").addClass("active").siblings().removeClass("active");
            } else {
                $(".f3").addClass("active").siblings().removeClass("active");
            };
        });
    }
}
$(function() {
    YY.scrollactivity.init();
});