YY.designerPage = {
    init: function() {
    	var scroll = new YY.scrollLoad({
            container : $('.product .items'),
            template : 'artinfo_template',
            url : '/user/card',
            rn : 4,
            data : {
            	uid : YY.context('uid'),
            	json : 1
            }
        });
    }
}
$(function() {
    YY.designerPage.init();
});