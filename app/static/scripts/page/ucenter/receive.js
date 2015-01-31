YY.receivePage = {
	init : function(){
		$('.receive-btn').click(function(){
			var parent = $(this).parents('li'),
				oid = parent.attr('data-oid');
			$.post('/order/userorder/receive?orderId='+oid,function(resp){
				var data = JSON.parse(resp);
				if(data && data.errno == 0){
					alert('确认收货成功');
					parent.remove();
					$('.receive-count').html(parseInt($('.receive-count').html())-1);
				}else{
					alert('提醒失败，请稍候重试');
				}
			});
		});
	}
}
$(function(){
	YY.receivePage.init();
});