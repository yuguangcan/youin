YY.indexPage = {
    init:function(){
        this.initMagnifier();
        $('#magnifier-img').magnifier({
            target : $('#magnifier'),
            scale : 5
        });

        $('.product-img li').click(function(){
            $(this).siblings('.cur').removeClass('cur');
            $(this).addClass('cur');
            $('#magnifier-img').find('img').attr('src',$(this).find('img').attr('src'));
        });

        var addMinus = $('#add-minus'),
        	count = $('#count');
        addMinus.find('.minus').click(function(){
            var value = parseInt(count.val());
            if(value == 1){
                return;
            }
        	count.val(value-1);
        });
        addMinus.find('.add').click(function(){
        	count.val(parseInt(count.val())+1);
        });

        $('.attr-list li').click(function(){
            $(this).siblings('.cur').removeClass('cur');
            $(this).addClass('cur');
        });
    },
    initMagnifier : function(){
        $.fn.magnifier = function(options){
            var sourceContainer = this,
                sourceImg = sourceContainer.find('img'),
                browser = sourceContainer.find('div'),
                targetContainer = options.target,
                targetImg = targetContainer.find('img'),
                scale = options.scale,
                _self = this;

            browser.css({
                'width' : _self.width() / scale,
                'height' : _self.height() / scale
            });
            targetImg.css({
                'position': 'absolute',
                'width': _self.width() * scale ,
                'height': _self.height() * scale
            });

            this.css('cursor','crosshair');
            this.on('mouseover',function(e){
                if(targetImg.attr('src') != sourceImg.attr('src')){
                    targetImg.attr('src',sourceImg.attr('src'));
                    targetImg.on('load',function(){
                        _self.off('mousemove',move).off('mouseout',out);
                        _self.on('mousemove',move).on('mouseout',out);
                    });
                }
            });
            function move(e){
                var x = e.pageX,
                    y = e.pageY;
                browser.show();
                browser.css({
                    'top' : Math.min(Math.max(y - _self.offset().top - parseInt(browser.height()) / 2, 0), _self.height() - browser.height()),
                    'left' : Math.min(Math.max(x - _self.offset().left - parseInt(browser.width()) / 2, 0), _self.width() - browser.width())
                });
                targetContainer.show();
                targetImg.css({
                    'top' : -(parseInt(browser.position().top) * scale),
                    'left' : -(parseInt(browser.position().left) * scale)
                });
            }
            function out(e){
                browser.hide();
                targetContainer.hide();
            }
        }
    }
}
$(function(){
    YY.indexPage.init();
});
