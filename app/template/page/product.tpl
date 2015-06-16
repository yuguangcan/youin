{%*商品详情*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
{%$data.data.item.itemName%}_商品详情
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/product.css -->
<link rel="stylesheet" href="/static/styles/page/product.css"/>
<!-- endbuild -->
{%/block%}

{%block name="content"%}
	<section class="product">
		<div class="product-img">
			<div id="magnifier-img">
				<img src="{%$data.data.item.picList[0]%}">
				<div></div>
			</div>
			<div id="magnifier"><img src=""></div>
			<ul class="clearfix">
				{%foreach $data.data.item.picList as $item%}
					<li {%if $item@index ==0 %}class="cur"{%/if%}>
						<img src="{%$item%}">
					</li>
				{%/foreach%}
			</ul>
		</div>
		<div class="product-info">
			<h2>{%$data.data.item.itemName%}</h2>
			<div class="product-detail">
				<div class="author">
					<a href="/user/card?uid={%$data.data.author.uid%}" target="_blank">
						<img src="{%$data.data.author.avatar%}">
						<p class="name">{%$data.data.author.uname%}</p>
					</a>
					<div class="clearfix"><span>作品</span><span>{%$data.data.author.itemNum%}</span></div>
					<div class="clearfix"><span>粉丝</span><span id="follower-num">{%$data.data.author.followedNum%}</span></div>
					{%if $data.data.author.uid != $data.userInfo.uid%}
						{%if $data.data.author.followStatus == 0%}
							<a href="javascript:;" class="follow-btn follow">关注</a>
						{%else%}
							<a href="javascript:;" class="follow-btn followed">取消关注</a>
						{%/if%}
					{%/if%}
				</div>
				<div class="info-item mt-20">
					<span class="label">价格：</span><div class="price" id="price">￥<span></span></div>
				</div>
				<div class="info-item mb-10">
					<ul class="attr-list clearfix" id="size-list">
						{%foreach $data.data.item.sizeGroup as $size%}
							<li data-sizeid="{%$size.sizeId%}" {%if $size@index == 0%}class="cur"{%/if%}>{%$size.sizeName%}<i></i></li>
						{%/foreach%}
		            </ul>
					<span class="label">尺寸：</span>
				</div>
				<div class="info-item mb-10">
					<ul class="attr-list clearfix" id="color-list">
		                {%foreach $data.data.item.colorGroup as $color%}
							<li data-colorid="{%$color.colorId%}" {%if $color@index == 0%}class="cur"{%/if%}>{%$color.colorName%}<i></i></li>
						{%/foreach%}
		            </ul>
					<span class="label">颜色：</span>
				</div>
				<div class="info-item">
					<span class="label">购买数量：</span>
					<div class="add-minus" id="add-minus">
			            <span class="minus">-</span>
			            <input type="text" value="1" id="count"></input>
			            <span class="add">+</span>
			        </div>
			        <span class="notice" id="stock">(库存<b></b>件)</span>
				</div>
				<div class="opt clearfix">
					<a href="javascript:;" class="add-cart" id="add-cart"><i class="product-icons-cart"></i>加入购物车</a>
					{%if $data.data.item.isCollected == 0%}
						<a href="javascript:;" class="like"><i class="product-icons-like"></i><span>收藏</span></a>
					{%else%}
						<a href="javascript:;" class="liked"><i class="product-icons-like"></i><span>取消收藏</span></a>
					{%/if%}
					
				</div>
			</div>
		</div>
	</section>

	{%include file="youin/widget/share.tpl" name=$data.data.item.itemName%}

	{%if $data.data.related %}
	<section class="relate">
		<h2>同主题艺术品</h2>
		<ul class="clearfix">
			{%foreach $data.data.related.list as $item%}
				<li>
				    <a href="javascript:;" target="_blank">
				        <img src="{%$item.pic%}"></img>
				        {%include file="youin/widget/productinfo.tpl" product=$item%}
				    </a>
				</li>
			{%/foreach%}
		</ul>
	</section>
	{%/if%}

	<section class="arts-detail">
		<h2>图文详情</h2>
		<div>
			<img src="{%$data.data.item.detailPic%}">
		</div>
	</section>


	<section class="relate">
		<h2>热销艺术品</h2>
		<ul class="clearfix">
			{%foreach $data.data.recommendInfo.list as $item%}
				<li>
				    <a href="javascript:;" target="_blank">
				        <img src="{%$item.pic%}"></img>
				        {%include file="youin/widget/productinfo.tpl" product=$item%}
				    </a>
				</li>
			{%/foreach%}
		</ul>
	</section>

{%/block%}

{%block name="js"%}
<script type="text/javascript">
	YY.context('itemId','{%$data.data.item.itemId%}');
	YY.context('uid','{%$data.data.author.uid%}');
	YY.context('sizeGroup',JSON.parse('{%$data.data.item.sizeGroup|@json_encode%}'));
	YY.context('colorGroup',JSON.parse('{%$data.data.item.colorGroup|@json_encode%}'));
</script>
<!-- build:js /static/youin/scripts/page/product.js -->
<script src="static/scripts/page/product.js"></script>
<!-- endbuild -->
{%/block%}