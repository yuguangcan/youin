YY.indexPage = {
    init:function(){

        var addMinus = $('#add-minus'),
        	count = $('#count');
        addMinus.find('.minus').click(function(){
        	count.val(parseInt(count.val())-1);
        });
        addMinus.find('.add').click(function(){
        	count.val(parseInt(count.val())+1);
        });
    }
}
$(function(){
    YY.indexPage.init();
});
