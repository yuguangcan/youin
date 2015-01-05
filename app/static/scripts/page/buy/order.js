$("#expressSelector").change(function(){
	var $this = $(this).children('option:selected');
	var price = $this.data("price");
	var express = $this.data("express");
	$("#expressName").html(express+"速递<i></i>");
	$("#order-express").html("订单总计(含运费"+price+"元)");
	$(".total-price").text( "￥" + ( +$(".total-price").data("total") + price) );
	console.log($(this));
});

$("#submit").click(function(){
	//check
	if(check()){
		$("#orderform").submit();
	}
});

function check(){
	if( $("#expressSelector").val() == 0 ){
		alert("请选择城市");
		return false;
	}
	var l = $(".checkEmpty").length;
	for(var i =0;i<l;i++){
		if( $($(".checkEmpty")[i]).val() == "" ){
			alert($($(".checkEmpty")[i]).data('alert'));
			return false;
		}
	}
	return true;
}