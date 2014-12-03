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
	

	{%include file="youin/widget/related-product.tpl"%}

{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/buy/orderdone.js -->
<script src="static/scripts/page/buy/orderdone.js"></script>
<!-- endbuild -->
{%/block%}