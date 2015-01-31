YY.payPage = {
	init : function(){
		$('.cancel-btn').click(function(){
			var parent = $(this).parents('li'),
				oid = parent.attr('data-oid');
			$.post('/order/userorder/del?orderId='+oid,function(resp){
				var data = JSON.parse(resp);
				if(data && data.errno == 0){
					alert('订单取消成功');
					parent.remove();
					$('.pay-count').html(parseInt($('.pay-count').html())-1);
				}else{
					alert('删除失败，请稍候重试');
				}
			});
		});
	}
}
$(function(){
	YY.payPage.init();
});