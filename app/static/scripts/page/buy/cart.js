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
                setNum(itemObj.attr('data-cartid'),buyCount.val());
	        });
	        addMinus.find('.add').click(function(){
	        	buyCount.val(parseInt(buyCount.val())+1);
	        	sum.text(buyCount.val()*price);
	        	YY.indexPage.calculate();
                setNum(itemObj.attr('data-cartid'),buyCount.val());
	        });
            buyCount.on('change',function(){
                var value = parseInt(buyCount.val());
                if(value <= 1){
                    return;
                }
                buyCount.val(value-1);
                setNum(itemObj.attr('data-cartid'),buyCount.val());
            })
	        del.click(function(){
                var id = $(this).parents('li').attr('data-cartid');
                deleteItem(id,function(){
                    itemObj.remove();
                    YY.indexPage.calculate();
                });
                
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
                    deleteItem($(item).attr('data-cartid'),function(){
                        $(item).remove();
                    });
    			}
    		});
    		YY.indexPage.calculate();
    	});

        function setNum(id,num){
            $.post('/mall/cart/edit',{
                id: id,
                num: num
            },function(resp){
            });
        }
        var isDeleting = false;
        function deleteItem(id,callback){
            if(isDeleting){
                return;
            }
            isDeleting = true;
            $.post('/mall/cart/del?id='+id,{},function(resp){
                var data = JSON.parse(resp);
                if(data && data.errno == 0){
                    callback();
                }
                isDeleting = false;
            });
        }

        $('#submit').click(function(){
            var ids = [];
            $('.cart-list li').each(function(index,item){
                var select = $(item).find('.select');
                if(select.get(0).checked){
                    ids.push($(item).attr('data-cartid'));
                }
            });
            $('#ids').val(ids.join(','));
            $('#cart-form').submit();
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
