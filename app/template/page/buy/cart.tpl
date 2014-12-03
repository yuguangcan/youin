{%*购物车*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
购物车
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/buy/cart.css -->
<link rel="stylesheet" href="/static/styles/page/buy/cart.css"/>
<!-- endbuild -->
{%/block%}

{%block name="content"%}
	
	<section class="buy-nav">
		<span class="cur">1.查看购物车&nbsp;&nbsp;&nbsp;&nbsp;>>&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span>2.核对订单信息&nbsp;&nbsp;&nbsp;&nbsp;>>&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span>3.成功提交订单</span>
	</section>
	
	<section class="cart">
		<div class="titlebar">
			<div class="name">宝贝</div>
			<div class="price">单价</div>
			<div class="count">数量</div>
			<div class="sum">小计</div>
			<div class="del">操作</div>
		</div>
		<ul class="cart-list">
			<li data-price="20">
				<div class="name">
					<input type="checkbox" class="select"></input>
					<img src="/static/youin/images/product5.jpg">
					<span>有印知名设计师小罗手机壳产品</span>
				</div>
				<div class="price">
					￥20
				</div>
				<div class="count">
					<div class="add-minus">
			            <span class="minus">-</span>
			            <input type="text" value="1" class="buy-count"></input>
			            <span class="add">+</span>
			        </div>
				</div>
				<div class="sum">
					￥<b>20</b>
				</div>
				<div class="del">
					<a href="javascript:;">删除</a>
				</div>
			</li>
			<li data-price="10">
				<div class="name">
					<input type="checkbox" class="select"></input>
					<img src="/static/youin/images/product5.jpg">
					<span>有印知名设计师小罗手机壳产品</span>
				</div>
				<div class="price">
					￥10
				</div>
				<div class="count">
					<div class="add-minus">
			            <span class="minus">-</span>
			            <input type="text" value="1" class="buy-count"></input>
			            <span class="add">+</span>
			        </div>
				</div>
				<div class="sum">
					￥<b>10</b>
				</div>
				<div class="del">
					<a href="javascript:;">删除</a>
				</div>
			</li>
		</ul>
		<div class="operation">
			<div class="opt">
				<a href="javascript:;" id="select-all">全选</a>
				<a href="javascript:;" id="delete-select">删除选中的商品</a>
				<a href="javascript:;" id="return">继续购物</a>
			</div>
			<a href="javascript:;" id="submit">提交订单</a>
			<div class="check">
				<span>共<b id="total-count">0</b>件商品</span>
				<span>订单总计(运费8元)</span>
				<span id="total-price">￥<b>0</b></span>
			</div>
		</div>
	</section>

	{%include file="youin/widget/related-product.tpl"%}

{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/buy/cart.js -->
<script src="static/scripts/page/buy/cart.js"></script>
<!-- endbuild -->
{%/block%}