{%*订单*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
核对订单
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/buy/order.css -->
<link rel="stylesheet" href="/static/styles/page/buy/order.css"/>
<!-- endbuild -->
{%/block%}

{%block name="content"%}
	
	<section class="buy-nav">
		<span>1.查看购物车&nbsp;&nbsp;&nbsp;&nbsp;>>&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span class="cur">2.核对订单信息&nbsp;&nbsp;&nbsp;&nbsp;>>&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span>3.成功提交订单</span>
	</section>
	
	<section class="order">
		<h2>填写并核对订单信息</h2>
		<div class="order-item receiver">
			<h3>收货人信息<a href="javascript:;">修改</a></h3>
			<div><span>刘翔</span><span>13812345678</span></div>
		</div>
		<div class="order-item payment">
			<h3>支付方式<a href="javascript:;">修改</a></h3>
			<div><span>在线支付</span></div>
		</div>
		<div class="order-item deliver">
			<h3>物流选择<a href="javascript:;">修改</a></h3>
			<ul class="clearfix">
                <li class="cur">中通速递<i></i></li>
                <li>顺丰速递<i></i></li>
            </ul>
		</div>
		<div class="order-item product">
			<h3>商品清单</h3>
			<ul class="clearfix">
				<li>
					<div class="name">宝贝</div>
					<div class="price">单价</div>
					<div class="count">数量</div>
					<div class="sum">应付金额</div>
				</li>
                <li>
            		<div class="name">
            			<img src="/static/youin/images/product5.jpg">
            			<span>有印知名设计师小罗手机壳产品</span>
            		</div>
            		<div class="price">
            			￥20
            		</div>
            		<div class="count">
            			1
            		</div>
            		<div class="sum">
            			￥<b>20</b>
            		</div>
                </li>
                <li>
            		<div class="name">
            			<img src="/static/youin/images/product5.jpg">
            			<span>有印知名设计师小罗手机壳产品</span>
            		</div>
            		<div class="price">
            			￥10
            		</div>
            		<div class="count">
            			1
            		</div>
            		<div class="sum">
            			￥<b>10</b>
            		</div>
                </li>
            </ul>
		</div>
		<div class="operation">
			<a href="javascript:;" id="submit">提交订单</a>
			<div class="check">
				<span>共2件商品</span>
				<span>订单总计(含运费8元)</span>
				<span class="total-price">￥30</span>
			</div>
		</div>
	</section>

	{%include file="youin/widget/related-product.tpl"%}

{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/buy/order.js -->
<script src="static/scripts/page/buy/order.js"></script>
<!-- endbuild -->
{%/block%}