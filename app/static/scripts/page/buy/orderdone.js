YY.indexPage = {
	init : function(){

		var payPopup =  $('#pay-popup'),
		    paypopupOverlay = $('#pay-overlay');
		function showPay(){
			payPopup.find('.done').html("去支付");
			YY.misc.showPopup(payPopup,paypopupOverlay);
		}
		payPopup.find('.done').click(function(e){
			if($(this).html() == "支付完成"){
				window.location.reload();
			}else{
				$(this).html("支付完成");
				window.open('/pay/submit/buyitem?orderId=' + YY.context('oid'));
			}
		});

		$('#pay').click(function(){
			showPay();
		});
		if(YY.context('isDone')){
			showPay();
		}
	}
}
$(function(){
	YY.indexPage.init();
})