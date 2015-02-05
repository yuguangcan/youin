{%*艺术品*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
{%$data.data.item.itemName%}
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/art.css -->
<link rel="stylesheet" href="/static/styles/page/art.css"/>
<!-- endbuild -->
{%/block%}

{%block name="content"%}
	<section class="product clearfix">
		<div class="product-img">
			<img src="{%$data.data.item.pic%}">
		</div>
		<div class="product-author">
			<img src="{%$data.data.author.avatar%}">
			<p class="name">{%$data.data.author.uname%}</p>
			<div class="clearfix"><span>作品</span><span>{%$data.data.author.itemNum%}</span></div>
			<div class="clearfix"><span>粉丝</span><span>{%$data.data.author.followedNum%}</span></div>
			<a href="javascript:;">+关注</a>
		</div>
		<div class="product-info">
			<h2>{%$data.data.item.itemName%}</h2>
			<p class="author">设计师：{%$data.data.author.uname%}</p>
			<p class="des">{%$data.data.item.summary%}</p>
		</div>
	</section>

	<section class="relate-arts">
		<h2>相关艺术品</h2>
		<ul class="clearfix">
			{%foreach $data.data.related.list as $item%}
				<li>
				    <a href="/mall/item/detail?itemId={%$item.itemId%}" target="_blank">
				        <img src="{%$item.pic%}"></img>
				        {%include file="youin/widget/productinfo.tpl" product=$item%}
				    </a>
				</li>
			{%/foreach%}
		</ul>
	</section>

	{%include file="youin/widget/related-product.tpl" productlist=$data.data.recommendInfo.list%}

{%/block%}
