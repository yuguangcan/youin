YY.sendPage = {
	init : function(){
		$('.send-btn').click(function(){
			var parent = $(this).parents('li'),
				oid = parent.attr('data-oid');
			$.post('/order/userorder/remind?orderId='+oid,function(resp){
				var data = JSON.parse(resp);
				if(data && data.errno == 0){
					alert('提醒成功');
				}else{
					alert('提醒失败，请稍候重试');
				}
			});
		});
	}
}
$(function(){
	YY.sendPage.init();
});