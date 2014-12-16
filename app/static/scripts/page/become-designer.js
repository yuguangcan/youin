YY.becomeDesignerPage = {
    init:function(){
        $('#become').click(function(e){
        	$('#become-info').hide();
        	$('#submit-info').show();
        	$(this).hide();
        	$('#submit').show();
        });
        $('#submit').click(function(e){

        });
    }
}
$(function(){
    YY.becomeDesignerPage.init();
});
