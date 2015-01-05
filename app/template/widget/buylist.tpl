<ul class="buylist-nav clearfix">
	<li {%if $selected == 1%}class="cur"{%/if%}>待付款(2)</li>
	<li {%if $selected == 2%}class="cur"{%/if%}>待发货</li>
	<li {%if $selected == 3%}class="cur"{%/if%}>待收货</li>
	<li {%if $selected == 4%}class="cur"{%/if%}>待评价</li>
</ul>

<section class="buylist-list">
	<div class="titlebar">
		<div class="name">宝贝</div>
		<div class="price">宝贝单价</div>
		<div class="count">数量</div>
		<div class="total">应付金额</div>
		<div class="state">订单状态</div>
		<div class="opt">操作</div>
	</div>
	<ul class="buylist-product">
		{%foreach $data.data.list as $item%}
		<li class="clearfix">
			<div class="detail">
				<span class="num">订单编号：{%$item.orderId%}</span>
				<ul>
					{%foreach $item.detail as $subitem%}
						<li class="clearfix">
							<a href="###" class="name">
								<img src="{%$subitem.pic%}">
								<span>{%$subitem.itemName%}</span>
							</a>
							<div class="price">￥{%$subitem.price%}</div>
							<div class="count">{%$subitem.num%}</div>
						</li>
					{%/foreach%}
				</ul>
			</div>
			<div class="total">
				<div class="item-wrapper">
					<div class="total-price">￥{%$item.totalPrice%}</div>
					(运费{%$item.expressPrice%}元)
				</div>
			</div>
			{%*0待付款  1待发货  2待收货  3待收货  4评价  5已评价 *%}
			<div class="state">
				{%if $item.status == 0 %}
					<span>等待付款</span>
				{%elseif $item.status == 1%}
					<span>买家已付款</span>
				{%elseif $item.status == 2%}
					<span>等待收货</span>
				{%elseif $item.status == 3%}
					<span>已完成</span>
				{%/if%}
			</div>
			<div class="opt">
				{%if $state == "evaluate"%}
					<ul>
						<li>
							<a href="###" class="btn pay-btn">评价</a>
							<a href="###" class="btn-text cancel-btn">再次购买</a>
						</li>
						<li>
							<a href="###" class="btn pay-btn">评价</a>
							<a href="###" class="btn-text cancel-btn">再次购买</a>
						</li>
					</ul>
				{%else%}
					<div class="item-wrapper">
						{%if $state == "pay" %}
							<a href="###" class="btn pay-btn">付款</a>
							<a href="###" class="btn-text cancel-btn">取消订单</a>
						{%elseif $state == "send"%}
							<a href="###" class="btn send-btn">发货提醒</a>
							<a href="###" class="btn-text cancel-btn">取消订单</a>
						{%elseif $state == "receive"%}
							<a href="###" class="btn receive-btn">确认收货</a>
						{%/if%}
					</div>
				{%/if%}
			</div>
		</li>
		{%/foreach%}
	</ul>
</section>