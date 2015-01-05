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
			<div>
				<span><input type="text" class='name checkEmpty' data-alert='请输入您的姓名' name="receiver" placeholder="姓名"/></span>
				<span><input type="text" class='phone checkEmpty' data-alert='请输入您的电话' name="phone" placeholder="电话"/></span>
			</div>
			<div>
				<select id='expressSelector' name="provinceId">
					<option value="0">请选择</option>
					{%foreach $data.data.expressInfo as $item%}
						<option value='{%$item.provinceId%}' data-price="{%$item.expressPrice%}" data-express='{%$item.expressName%}'>{%$item.provinceName%}</option>
					{%/foreach%}
				</select>
				<input type="text" class='address1 checkEmpty' name="address1" data-alert='请输入您的具体位置' placeholder="朝阳区"/>
				<input type="text" class='address2 checkEmpty' name="address2" data-alert='请输入您的具体位置' placeholder="望京SOHO"/>
			</div>
		</div>
		<input type='hidden' name="ids" value="{%$data.params.ids%}"/>
		<div class="order-item payment">
			<h3>支付方式<a href="javascript:;">修改</a></h3>
			<div><span>在线支付</span></div>
		</div>
		<div class="order-item deliver">
			<h3>物流选择<a href="javascript:;">修改</a></h3>
			<ul class="clearfix">
                <li class="cur" id="expressName">中通速递<i></i></li>
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
                	<div class="name">
            			<img src="{%$item.pic%}">
            			<span>{%$item.itemName%}</span>
            		</div>
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
			<div class="check">
				<span>共{%$data.data.totalNum%}件商品</span>
				<span id="order-express">订单总计(含运费0元)</span>
				<span class="total-price" data-total={%$data.data.totalPrice%}>￥{%$data.data.totalPrice%}</span>
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