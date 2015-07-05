{%*订单*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
成功提交订单
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/buy/orderdone.css -->
<link rel="stylesheet" href="/static/styles/page/buy/orderdone.css"/>
<!-- endbuild -->
{%/block%}

{%block name="content"%}
	
	<section class="buy-nav">
		<span>1.查看购物车&nbsp;&nbsp;&nbsp;&nbsp;>>&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span>2.核对订单信息&nbsp;&nbsp;&nbsp;&nbsp;>>&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span  class="cur">3.成功提交订单</span>
	</section>
	
	<section class="notice">
		<h2>
			<i class="buy-icons-done"></i>
			{%if $data.data.order.needPay == 1 %}恭喜您已购买成功{%else%}恭喜您已下单成功{%/if%}
		</h2>
		<p>{%if $data.data.order.needPay == 1 %}请您尽快付款{%else%}我们会尽快为您发货，请耐心等待{%/if%}</p>
	</section>

	<div class="top"></div>
	<section class="product">
		<ul class="info-list">
			<li>
				<div class="time">订单时间</div>
				<div class="num">订单号</div>
				<div class="count">数量</div>
				<div class="price">总计</div>
				<div class="state">状态</div>
			</li>
			<li>
				<div class="time">{%$data.data.order.createTime%}</div>
				<div class="num">{%$data.data.order.orderId%}</div>
				<div class="count">{%$data.data.order.totalNum%}</div>
				<div class="price">{%$data.data.order.totalPrice%}元</div>
				<div class="state">{%if $data.data.order.needPay == 1 %}等待支付{%else%}预计发货{%$data.data.order.receiveTime%}{%/if%}</div>
			</li>
		</ul>
		<div class="product-list clearfix">
			{%foreach $data.data.order.picList as $item %}
				<a href="/mall/item/detail?itemId={%$item.itemId%}" target="_blank"><img src="{%$item.pic%}"></a>
			{%/foreach%}
		</div>
	</section>
	<div class="bottom"></div>

	{%if $data.data.order.needPay == 1 %}
		<div class="clearfix">
			<a href="/pages/index" id="continue">继续购物</a>
			<a href="javascript:;" id="pay">去付款</a>
		</div>
	{%/if%}

	{%include file="youin/widget/related-product.tpl" productlist=$data.data.recommendInfo.list%}

	<div id="pay-overlay"></div>
	<div id="pay-popup">
	    <i class="common-icons-popup-close close"></i>
	    <h2>支付提示</h2>
	    <div class="info">请您在新打开的窗口进行支付<br/>支付完成请不要关闭该窗口</div>
	    <div class="opt">
	    	<a href="###" class="error">支付遇到问题</a>
	  	    <a href="javascript:;" class="done">去支付</a>
	    </div>
	</div>

{%/block%}

{%block name="js"%}
<script type="text/javascript">
	{%if $data.data.order.needPay == 1 %}
		YY.context('isDone',1);
	{%/if%}
	YY.context('oid','{%$data.data.order.orderId%}');
</script>
<!-- build:js /static/youin/scripts/page/buy/orderdone.js -->
<script src="static/scripts/page/buy/orderdone.js"></script>
<!-- endbuild -->
{%/block%}