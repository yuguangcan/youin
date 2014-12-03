YY.indexPage = {
    init:function(){
        $('.cart-list li').each(function(index,item){
    		var itemObj = $(item),
    			select = itemObj.find('.select'),
    			addMinus = itemObj.find('.add-minus'),
	        	buyCount = addMinus.find('.buy-count'),
	        	sum = itemObj.find('.sum b'),
	        	del = itemObj.find('.del a'),
	        	price = itemObj.attr('data-price');
	        select.on('change',function(){
	        	YY.indexPage.calculate();
	        });
	        addMinus.find('.minus').click(function(){
	            var value = parseInt(buyCount.val());
	            if(value == 1){
	                return;
	            }
	        	buyCount.val(value-1);
	        	sum.text(buyCount.val()*price);
	        	YY.indexPage.calculate();
	        });
	        addMinus.find('.add').click(function(){
	        	buyCount.val(parseInt(buyCount.val())+1);
	        	sum.text(buyCount.val()*price);
	        	YY.indexPage.calculate();
	        });
	        del.click(function(){
	        	itemObj.remove();
	        	YY.indexPage.calculate();
	        });
    	});

    	$('#select-all').click(function(){
    		$('.cart-list li').each(function(index,item){
    			var select = $(item).find('.select');
    			if(!select.get(0).checked){
    				select.get(0).checked = true;
    			}
    		});
    		YY.indexPage.calculate();
    	});

    	$('#delete-select').click(function(){
    		$('.cart-list li').each(function(index,item){
    			var select = $(item).find('.select');
    			if(select.get(0).checked){
    				$(item).remove();
    			}
    		});
    		YY.indexPage.calculate();
    	});
    },
    calculate : function(){
    	var count = 0,
    		totalPrice = 0;
    	$('.cart-list li').each(function(index,item){
    		var itemObj = $(item);
    		if(itemObj.find('.select').get(0).checked){
    			var selectCount = parseInt(itemObj.find('.buy-count').val());
    			count = count + selectCount;
    			totalPrice = totalPrice + itemObj.attr('data-price') * selectCount;
    		}
    	});
    	$('#total-count').text(count);
    	$('#total-price b').text(totalPrice);
    }
}
$(function(){
    YY.indexPage.init();
});
