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
		<li class="clearfix">
			<div class="detail">
				<span class="num">订单编号：1232865</span>
				<ul>
					<li class="clearfix">
						<a href="###" class="name">
							<img src="/static/youin/images/product5.jpg">
							<span>有印知名设计师小罗手机壳产品</span>
						</a>
						<div class="price">￥20</div>
						<div class="count">2</div>
					</li>
					<li class="clearfix">
						<a href="###" class="name">
							<img src="/static/youin/images/product5.jpg">
							<span>有印知名设计师小罗手机壳产品</span>
						</a>
						<div class="price">￥20</div>
						<div class="count">1</div>
					</li>
				</ul>
			</div>
			<div class="total">
				<div class="item-wrapper">
					<div class="total-price">￥70</div>
					(运费10元)
				</div>
			</div>
			<div class="state">
				{%if $state == "pay" %}
					<span>等待付款</span>
				{%elseif $state == "send"%}
					<span>买家已付款</span>
				{%elseif $state == "receive"%}
					<span>等待收货</span>
				{%elseif $state == "evaluate"%}
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
		<li class="clearfix">
			<div class="detail">
				<span class="num">订单编号：1232865</span>
				<ul>
					<li class="clearfix">
						<a href="###" class="name">
							<img src="/static/youin/images/product5.jpg">
							<span>有印知名设计师小罗手机壳产品</span>
						</a>
						<div class="price">￥20</div>
						<div class="count">2</div>
					</li>
				</ul>
			</div>
			<div class="total">
				<div class="item-wrapper">
					<div class="total-price">￥70</div>
					(运费10元)
				</div>
			</div>
			<div class="state">
				{%if $state == "pay" %}
					<span>等待付款</span>
				{%elseif $state == "send"%}
					<span>买家已付款</span>
				{%elseif $state == "receive"%}
					<span>等待收货</span>
				{%elseif $state == "evaluate"%}
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
	</ul>
</section>