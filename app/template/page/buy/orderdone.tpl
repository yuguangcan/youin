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
		<h2><i class="buy-icons-done"></i>恭喜您已购买成功</h2>
		<p>我们会尽快为您发货，请耐心等待</p>
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
				<div class="time">2014年10月14日 18:36</div>
				<div class="num">002312</div>
				<div class="count">3</div>
				<div class="price">120</div>
				<div class="state">预计发货10月20日</div>
			</li>
		</ul>
		<div class="product-list clearfix">
			<a href="###"><img src="/static/youin/images/product5.jpg"></a>
			<a href="###"><img src="/static/youin/images/product5.jpg"></a>
			<a href="###"><img src="/static/youin/images/product5.jpg"></a>
		</div>
	</section>
	<div class="bottom"></div>

	<div class="clearfix">
		<a href="javascrit:;" id="continue">继续购物</a>
	</div>

	{%include file="youin/widget/related-product.tpl" productlist=$data.data.recommendInfo.list%}

{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/buy/orderdone.js -->
<script src="static/scripts/page/buy/orderdone.js"></script>
<!-- endbuild -->
{%/block%}