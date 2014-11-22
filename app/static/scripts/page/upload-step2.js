YY.indexPage = {
    init:function(){
        $('.upload a').click(function(){
            $(this).next().trigger('click');
        });
    }
}
$(function(){
    YY.indexPage.init();
});
