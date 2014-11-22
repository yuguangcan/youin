YY.indexPage = {
    init:function(){
        var title = $('#title'),
        	desc = $('#description'),
        	taglist = $('#taglist li');
        title.on('focus',function(){
        	$(this).addClass('focus');
        }).on('blur',function(){
        	$(this).removeClass('focus');
        });
        desc.on('focus',function(){
        	$(this).addClass('focus');
        }).on('blur',function(){
        	$(this).removeClass('focus');
        });
        taglist.on('click',function(){
        	$(this).toggleClass('selected');
        });

        var upload = $('#upload'),
        	picUpload = $('#pic');
        upload.click(function(){
        	picUpload.trigger('click');
        });

        var addMinus = $('#add-minus'),
        	price = $('#price');
        addMinus.find('.minus').click(function(){
        	price.val(parseInt(price.val())-1);
        });
        addMinus.find('.add').click(function(){
        	price.val(parseInt(price.val())+1);
        });
    }
}
$(function(){
    YY.indexPage.init();
});
