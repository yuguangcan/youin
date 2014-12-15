YY.subcategoryPage = {
    init:function(){
    	var _self = this;
    	this.priceList = $('.price li');
    	this.styleList = $('.style li');
    	this.sortList = $('.sort li');

    	this.priceList.click(function(){
    		$(this).siblings('.cur').removeClass('cur');
    		$(this).addClass('cur');
    		_self.getProduct();
    	});
        this.styleList.click(function(){
        	var _this = $(this);
        	if(_this.hasClass('first')){
        		!_this.hasClass('cur') && _this.siblings().removeClass('cur');
        	}else{
        		_this.siblings('.first').removeClass('cur');
        	}
        	_this.toggleClass('cur');
        	_self.getProduct();
        });
        this.sortList.click(function(){
        	var _this = $(this);
        	if(_this.hasClass('cur')){
        		if(_this.hasClass('up')){
        			_this.removeClass('up').addClass('down');
        		}else{
        			_this.removeClass('down').addClass('up');
        		}
        	}else{
        		_this.addClass('cur').siblings().removeClass('cur');
        	}
        	_self.getProduct();
        })
    },
    getProduct : function(){
    	var _self = this,
    		type = 0,
    		priceMin = 0,
    		priceMax = 0,
    		tagId = [];
    	var _type = this.sortList.filter('.cur').attr('data-type'),
    		_isDown = this.sortList.filter('.cur').hasClass('down');
    	if(_type == "count"){
    		if(_isDown){
    			type = 0;
    		}else{
    			type = 1;
    		}
    	}else if(_type == "price"){
    		if(_isDown){
    			type = 2;
    		}else{
    			type = 3;
    		}
    	}
    	priceMin = this.priceList.filter('.cur').attr('data-min');
    	priceMax = this.priceList.filter('.cur').attr('data-max');
    	this.styleList.filter('.cur').each(function(){
    		tagId.push($(this).attr('data-tagid'));
    	})
    	$.post('/pages/subcategorydata?cid='+YY.context('cid'),{
    		type : type,
    		priceMin : priceMin,
    		priceMax : priceMax,
    		tagId : tagId.join(',')
    	},function(resp){
    		var data = JSON.parse(resp);
    		if(data && data.data.list.length > 0){
    			var _html = baidu.template("product_template", {list: data.data.list});
    			$('.product-list').empty().append(_html);
    		}
    	});

    }
}
$(function(){
    YY.subcategoryPage.init();
    YY.subcategoryPage.getProduct();
});
