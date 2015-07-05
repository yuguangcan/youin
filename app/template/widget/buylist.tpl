<ul class="buylist-nav clearfix">
	<li {%if $selected == 1%}class="cur"{%/if%}><a href="/order/userorder/getlist?type=0#designer-nav">待付款{%if $selected == 1%}(<span class="pay-count">{%$data.data.total%}</span>){%/if%}</a></li>
	<li {%if $selected == 2%}class="cur"{%/if%}><a href="/order/userorder/getlist?type=1#designer-nav">待发货{%if $selected == 2%}({%$data.data.total%}){%/if%}</a></li>
	<li {%if $selected == 3%}class="cur"{%/if%}><a href="/order/userorder/getlist?type=2#designer-nav">待收货{%if $selected == 3%}(<span class="receive-count">{%$data.data.total%}</span>){%/if%}</a></li>
	<!-- <li {%if $selected == 4%}class="cur"{%/if%}><a href="/order/userorder/getlist?type=3#designer-nav">待评价{%if $selected == 4%}({%$data.data.total%}){%/if%}</a></li> -->
	<li {%if $selected == 5%}class="cur"{%/if%}><a href="/order/userorder/getlist?type=4#designer-nav">已完成{%if $selected == 5%}({%$data.data.total%}){%/if%}</a></li>
</ul>

<section class="buylist-list">
	<div class="titlebar">
		<div class="name">宝贝</div>
		<div class="price">宝贝单价</div>
		<div class="count">数量</div>
		<div class="total">应付金额</div>
		<div class="state">订单状态</div>
		{%if $state != 'done'%}
		<div class="opt">操作</div>
		{%/if%}
	</div>
	<ul class="buylist-product">
		{%foreach $data.data.list as $item%}
		<li class="clearfix" data-oid="{%$item.orderId%}">
			<div class="detail">
				<span class="num">订单编号：{%$item.orderId%}</span>
				<ul>
					{%foreach $item.detail as $subitem%}
						<li class="clearfix">
							<a href="/mall/item/detail?itemId={%$subitem.itemId%}" target="_blank" class="name">
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
			{%*0待付款  1待发货  2待收货  3待评价  4已完成 *%}
			<div class="state">
				{%if $item.status == 0 %}
					<span>等待付款</span>
				{%elseif $item.status == 1%}
					<span>买家已付款，制作中</span>
				{%elseif $item.status == 2%}
					<span>等待收货</span>
				{%elseif $item.status == 3%}
					<span>待评价</span>
				{%elseif $item.status == 4%}
					<span>已完成</span>
				{%/if%}
			</div>
			{%if $state != 'done'%}
			<div class="opt">
				{%if $state == "evaluate"%}
					<ul>
						<li>
							<a href="###" class="btn pay-btn">评价</a>
							<a href="/mall/item/detail?itemId={%$subitem.itemId%}" target="_blank"  class="btn-text cancel-btn">再次购买</a>
						</li>
					</ul>
				{%else%}
					<div class="item-wrapper">
						{%if $state == "pay" %}
							<a href="/pay/submit/buyitem?orderId={%$item.orderId%}" class="btn pay-btn">付款</a>
							<a href="javascript:;" class="btn-text cancel-btn">取消订单</a>
						{%elseif $state == "send"%}
							<a href="javascript:;" class="btn send-btn">发货提醒</a>
						{%elseif $state == "receive"%}
							<a href="javascript:;" class="btn receive-btn">确认收货</a>
						{%/if%}
					</div>
				{%/if%}
			</div>
			{%/if%}
		</li>
		{%/foreach%}
	</ul>
</section>