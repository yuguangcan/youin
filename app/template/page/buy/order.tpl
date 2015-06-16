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
	<form action="/order/order/add" method="post" id='orderform'>
	<section class="order">
		<h2>填写并核对订单信息</h2>
		<div class="order-item receiver">
			<h3>收货人信息<a href="javascript:;">修改</a></h3>
			<div class="name-tel">
				<input type="text" class='input checkEmpty' data-alert='请输入您的姓名' name="receiver" placeholder="姓名"/>
				<input type="text" class='input checkEmpty' data-alert='请输入您的电话' name="phone" placeholder="电话" id="telephone"/>
			</div>
			<div class="address">
				<select id='province' name="provinceId" class="select">
					<option value="0" selected="selected">请选择</option>
					{%foreach $data.data.expressInfo as $item%}
						<option value='{%$item.provinceId%}' data-price="{%$item.expressPrice%}" data-express='{%$item.expressName%}'>{%$item.provinceName%}</option>
					{%/foreach%}
				</select>
				<select id='city' name="cityId" class="select">
					<option value="0" selected="selected">请选择</option>
				</select>
				<input type="text" class='input checkEmpty input-address' name="address" data-alert='请输入您的详细地址' placeholder="请输入详细地址"/>
			</div>
		</div>
		<input type='hidden' name="ids" value="{%$data.params.ids%}"/>
		<div class="order-item payment">
			<h3>支付方式</h3>
			<span>在线支付</span>
		</div>
		<div class="order-item deliver">
			<h3>物流选择</h3>
			<ul class="clearfix">
                <li class="cur" id="expressName"><b>中通速递</b><i></i></li>
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
				{%foreach $data.data.list as $item%}
                <li>
                	<a href="/mall/item/detail?itemId={%$item.itemId%}" target="_blank" class="name">
            			<img src="{%$item.pic%}">
            			<span>{%$item.itemName%}</span>
            		</a>
            		<div class="price">
            			￥{%$item.price%}
            		</div>
            		<div class="count">
            			{%$item.num%}
            		</div>
            		<div class="sum">
            			￥<b>{%$item.totalPrice%}</b>
            		</div>
                </li>
                {%/foreach%}
            </ul>
		</div>
		<div class="operation">
			<a href="javascript:;" id="submit" type="submit">提交订单</a>
			<div class="opt">
				<a href="javascript:window.history.go(-1);">返回购物车修改</a>
			</div>
			<div class="check">
				<span>共{%$data.data.totalNum%}件商品</span>
				<span id="order-express">订单总计(含运费<b>0</b>元)</span>
				<span class="total-price" data-total={%$data.data.totalPrice%}>￥<b>{%$data.data.totalPrice%}</b></span>
			</div>
		</div>
	</section>
	</form>

	{%include file="youin/widget/related-product.tpl" productlist=$data.data.recommendInfo.list%}

{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/buy/order.js -->
<script src="static/scripts/page/buy/order.js"></script>
<!-- endbuild -->
{%/block%}