YY.cartPage = {
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
	        	YY.cartPage.calculate();
	        });
	        addMinus.find('.minus').click(function(){
	            var value = parseInt(buyCount.val());
	            if(value == 1){
	                return;
	            }
	        	buyCount.val(value-1);
	        	sum.text(buyCount.val()*price);
	        	YY.cartPage.calculate();
                setNum(itemObj.attr('data-cartid'),buyCount.val());
	        });
	        addMinus.find('.add').click(function(){
	        	buyCount.val(parseInt(buyCount.val())+1);
	        	sum.text(buyCount.val()*price);
	        	YY.cartPage.calculate();
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
                if(confirm("确认删除选中商品吗？")){
                    deleteItem(id,function(){
                        itemObj.remove();
                        YY.misc.changeCart(false);
                        YY.cartPage.calculate();
                    });
                }
	        });
    	});

    	$('#select-all').click(function(){
    		$('.cart-list li').each(function(index,item){
    			var select = $(item).find('.select');
    			if(!select.get(0).checked){
    				select.get(0).checked = true;
    			}
    		});
    		YY.cartPage.calculate();
    	});

    	$('#delete-select').click(function(){
            if(confirm("确认删除选中商品吗？")){
                var ids = [],
                    items = [];
                $('.cart-list li').each(function(index,item){
                    var select = $(item).find('.select');
                    if(select.get(0).checked){
                        ids.push($(item).attr('data-cartid'));
                        items.push($(item));
                    }
                });
                deleteItem(ids,function(){
                    $.each(items,function(index,item){
                        item.remove();
                    });
                    YY.misc.changeCart(false,items.length);
                    YY.cartPage.calculate();
                });
            }
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
            var url = '/mall/cart/del';
            if(Object.prototype.toString.call(id) === '[object Array]'){
                url += '?ids=' + id;
            }else{
                url += '?id=' + id;
            }
            $.post(url,{},function(resp){
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
            if(ids.length == 0){
                alert('请选择商品');
                return;
            }
            $('#ids').val(ids.join(','));
            $('#cart-form').submit();
        });

        YY.cartPage.calculate();
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
    YY.cartPage.init();
});
