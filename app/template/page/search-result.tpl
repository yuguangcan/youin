{%*搜索结果*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
搜索结果
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/search-result.css -->
<link rel="stylesheet" href="/static/styles/page/search-result.css"/>
<!-- endbuild -->
{%/block%}

{%block name="content"%}
	<section class="product clearfix">
		<div class="product-img">
			<img src="/static/youin/images/product4.jpg">
		</div>
		<div class="product-author">
			<img src="/static/youin/images/ds-photo.jpg">
			<p class="name">永歌</p>
			<div class="clearfix"><span>作品</span><span>12</span></div>
			<div class="clearfix"><span>粉丝</span><span>234</span></div>
			<a href="javascript:;">+关注</a>
		</div>
		<div class="product-info">
			<h2>寂寞的夜</h2>
			<p class="author">设计师：永歌</p>
			<p class="des">杜兰特在2007年首轮第二顺位被当时还在西雅图的超音速队选中，2008年随队搬到俄克拉荷马，球队也改名为雷霆队。2010年，21岁的杜兰特成为NBA史上最年轻得分王，随后又连续两个赛季荣膺得分王。2014年，杜兰特同时获得得分王与NBA常规赛最有价值球员奖。</p>
		</div>
	</section>

	<section class="relate-arts">
		<h2>相关艺术品</h2>
		<ul class="clearfix">
			<li>
			    <a href="/mall/item/detail?itemId=1" target="_blank">
			        <img src="/static/youin/images/product4.jpg"></img>
			        {%include file="youin/widget/productinfo.tpl" product=$item%}
			    </a>
			</li>
		</ul>
	</section>

	{%include file="youin/widget/related-product.tpl" productlist=$data.data.recommendInfo.list%}

{%/block%}
