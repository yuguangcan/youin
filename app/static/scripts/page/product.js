YY.indexPage = {
    init:function(){
        this.initMagnifier();
        $('#magnifier-img').magnifier({
            target : $('#magnifier'),
            scale : 3
        });

        $('.product-img li').click(function(){
            $(this).siblings('.cur').removeClass('cur');
            $(this).addClass('cur');
            $('#magnifier-img').find('img').attr('src',$(this).find('img').attr('src'));
        });

        var addMinus = $('#add-minus'),
        	count = $('#count'),
            stock = $('#stock b');
        addMinus.find('.minus').click(function(){
            var value = parseInt(count.val());
            if(value == 1){
                return;
            }
        	count.val(value-1);
        });
        addMinus.find('.add').click(function(){
            var value = parseInt(count.val());
            if(value >= parseInt(stock.html())){
                return;
            }
            count.val(value+1);
        });
        addMinus.find('input').on('change',function(){
            var value = parseInt(count.val());
            if(value > parseInt(stock.html())){
                count.val(parseInt(stock.html()));
            }else if( value < 1){
                count.val(1);
            }
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
    },
    initAttrSelect : function(){
        var sizeList = $('#size-list li'),
            colorList = $('#color-list li'),
            sizeMap = YY.context('sizeGroup'),
            colorMap = YY.context('colorGroup'),
            selectSizeId = 0,
            selectColorId = 0,
            _self = this;

        sizeList.click(function(){
            var _this = $(this);
            if(_this.hasClass('nostock')){
                return;
            }
            
            if(_this.hasClass('cur')){
                _this.removeClass('cur');
                selectSizeId = 0;
                colorList.each(function(index,item){
                    $(item).removeClass('nostock');
                });
            }else{
                _this.siblings('.cur').removeClass('cur');
                _this.addClass('cur');
                selectSizeId = _this.attr('data-sizeid');
                var _cid = {};
                for(var i=0;i<sizeMap.length;i++){
                    if(sizeMap[i].sizeId == selectSizeId){
                        for(var j=0;j<sizeMap[i].sub.length;j++){
                            _cid[sizeMap[i].sub[j].colorId] = true;
                        }
                    }
                }
                colorList.each(function(index,item){
                    if(!_cid[$(item).attr('data-colorid')]){
                        $(item).removeClass('cur').addClass('nostock');
                    }else{
                        $(item).removeClass('nostock');
                    }
                });
                _self.setPriceAndStock();
            }
            
        });
        colorList.click(function(){
            var _this = $(this);
            if(_this.hasClass('nostock')){
                return;
            }
            if(_this.hasClass('cur')){
                _this.removeClass('cur');
                selectColorId = 0;
                sizeList.each(function(index,item){
                    $(item).removeClass('nostock');
                });
            }else{
                _this.siblings('.cur').removeClass('cur');
                _this.addClass('cur');
                selectColorId = _this.attr('data-colorid');
                var _sid = {};
                for(var i=0;i<colorMap.length;i++){
                    if(colorMap[i].colorId == selectColorId){
                        for(var j=0;j<colorMap[i].sub.length;j++){
                            _sid[colorMap[i].sub[j].sizeId] = true;
                        }
                    }
                }
                sizeList.each(function(index,item){
                    if(!_sid[$(item).attr('data-sizeid')]){
                        $(item).removeClass('cur').addClass('nostock');
                    }else{
                        $(item).removeClass('nostock');
                    }
                });
                _self.setPriceAndStock();
            }
        });

    },
    setPriceAndStock : function(){
        if($('#size-list .cur').length == 0 || $('#color-list .cur').length == 0){
            return;
        }
        var sizeMap = YY.context('sizeGroup'),
            colorMap = YY.context('colorGroup'),
            price = $('#price span'),
            stock = $('#stock b'),
            selectSizeId = $('#size-list .cur').attr('data-sizeid'),
            selectColorId = $('#color-list .cur').attr('data-colorid');
        for(var i=0;i<sizeMap.length;i++){
            if(sizeMap[i].sizeId == selectSizeId){
                for(var j=0;j<sizeMap[i].sub.length;j++){
                    if(sizeMap[i].sub[j].colorId == selectColorId){
                        price.html(sizeMap[i].sub[j].price);
                        stock.html(sizeMap[i].sub[j].totalNum);
                        this.propertyId = sizeMap[i].sub[j].propertyId;
                    }
                }
            }
        }
    },
    initBuy : function(){
        var _self = this;
        $('#add-cart').click(function(){
            $.post('/mall/cart/add',{
                itemId : YY.context('itemId'),
                propertyId : _self.propertyId,
                num : $('#count').val()
            },function(resp){
                var data = JSON.parse(resp);
                if(data && data.errno == 0){
                    alert('添加成功');
                }
            });
        });
    },
    initOther : function(){
        $('.product-detail').on('click','.like',function(){
            var _this = $(this);
            $.post('/mall/collect/add?itemId='+YY.context('itemId'),function(resp){
                var data = JSON.parse(resp);
                if(data && data.errno == 0){
                    _this.removeClass('like').addClass('liked').find('span').html('取消收藏');
                }else{
                    alert('收藏失败，请稍候再试');
                }
            });
        }).on('click','.liked',function(){
            var _this = $(this);
            $.post('/mall/collect/del?id='+YY.context('itemId'),function(resp){
                var data = JSON.parse(resp);
                if(data && data.errno == 0){
                    _this.removeClass('liked').addClass('like').find('span').html('收藏');
                }else{
                    alert('取消收藏失败，请稍候再试');
                }
            });
        }).on('click','.follow',function(){
            var _this = $(this);
            $.post('/follow/follow/add?followUid='+YY.context('uid'),function(resp){
                var data = JSON.parse(resp);
                if(data && data.errno == 0){
                    _this.removeClass('follow').addClass('followed').html('取消关注');
                    $('#follower-num').html(parseInt($('#follower-num').html()) + 1);
                }else{
                    alert('关注失败，请稍候再试');
                }
            });
        }).on('click','.followed',function(){
            var _this = $(this);
            $.post('/follow/follow/del?followUid='+YY.context('uid'),function(resp){
                var data = JSON.parse(resp);
                if(data && data.errno == 0){
                    _this.removeClass('followed').addClass('follow').html('关注');
                    $('#follower-num').html(parseInt($('#follower-num').html()) - 1);
                }else{
                    alert('取消关注失败，请稍候再试');
                }
            });
        });
    }
}
$(function(){
    YY.indexPage.init();
    YY.indexPage.initAttrSelect();
    YY.indexPage.setPriceAndStock();
    YY.indexPage.initBuy();
    YY.indexPage.initOther();
});
