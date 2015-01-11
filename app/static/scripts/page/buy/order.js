YY.orderPage = {
	init : function(){
		var province = $("#province"),
			city = $("#city");
		province.change(function(){
			var $this = $(this).children('option:selected');
			var price = $this.data("price");
			var express = $this.data("express");
			$("#expressName b").html(express);
			$("#order-express b").html(price);
			$(".total-price b").text( $(".total-price").data("total") + price );

			$.get('/ajax/getcity?provinceId='+$(this).val(),function(resp){
				var data = JSON.parse(resp);
				if(data && data.data.list){
					var option = [];
					for(var i =0;i<data.data.list.length;i++){
						option.push('<option value="'+data.data.list[i].id+'">'+data.data.list[i].cityName+'</option>');
					}
					city.empty().append(option.join(''));
				}
			});
		});

		$("#submit").click(function(){
			//check
			if(check()){
				$("#orderform").submit();
			}
		});

		function check(){
			if( province.val() == 0 || city.val() == 0){
				alert("请选择地区");
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
	}
}
$(function(){
	YY.orderPage.init();
});