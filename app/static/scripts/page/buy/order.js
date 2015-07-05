YY.orderPage = {
	init : function(){
		var province = $("#province"),
			city = $("#city");
		province.change(function(){
			caculatePrice();
			$.get('/ajax/getcity?provinceId='+$(this).val(),function(resp){
				var data = JSON.parse(resp);
				if(data && data.data.list){
					var option = [];
					for(var i =0;i<data.data.list.length;i++){
						option.push('<option value="'+data.data.list[i].cityId+'">'+data.data.list[i].cityName+'</option>');
					}
					city.empty().append(option.join(''));
				}
			});
		});

		var defaultCityId = YY.context('cityId'),
			defaultProvinceId = YY.context('provinceId')
		if(defaultCityId){
			$.get('/ajax/getcity?provinceId='+YY.context('provinceId'),function(resp){
				var data = JSON.parse(resp);
				if(data && data.data.list){
					var option = [];
					for(var i =0;i<data.data.list.length;i++){
						option.push('<option value="'+data.data.list[i].cityId+'" ' + (defaultCityId == data.data.list[i].cityId ? 'selected="selected"': '')+'>'+data.data.list[i].cityName+'</option>');
					}
					city.empty().append(option.join(''));
				}
				caculatePrice();
			});
		}
		function caculatePrice(){
			var $this = province.children('option:selected');
			var price = $this.data("price");
			var express = $this.data("express");
			$("#expressName b").html(express);
			$("#order-express b").html(price);
			$(".total-price b").text( $(".total-price").data("total") + price );
		}
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
			if(!/(^(\d{3,4}-)?\d{7,8})$|^(1[0-9]{10})$/.test($('#telephone').val())){
				alert("请输入正确的电话号码");
				return false;
			}
			return true;
		}
	}
}
$(function(){
	YY.orderPage.init();
});