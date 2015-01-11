{%*我的收藏*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
我的收藏
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/like.css -->
<link rel="stylesheet" href="/static/styles/page/like.css"/>
<!-- endbuild -->
{%/block%}

{%block name="content"%}
<ul class="following-followers-like clearfix">
	<li><a href="/follow/follow/getlist">已关注的设计师（{%$data.userInfo.followingNum%}人）</a></li>
	<li><a href="/follow/follow/fanslist">我的粉丝（{%$data.userInfo.followedNum%}人）</a></li>
	<li><a href="javascript:;" class="active">我的收藏（{%$data.data.total%}件）</a></li>
</ul>
<!-- <ul class="list-nav clearfix">
	<li id="all" class="list-active">全部</li>
	<li id="sale" >优惠</li>
</ul> -->
<ul class="product-list clearfix">
	{%foreach $data.data.list as $item%}
		<li>
		    <a href="/mall/item/detail?itemId={%$item.itemId%}" target="_blank">
		        <img src="{%$item.pic%}"></img>
		        {%include file="youin/widget/productinfo.tpl" product=$item%}
		    </a>
		</li>
	{%/foreach%}
</ul>
{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/like.js -->
<script src="static/scripts/page/like.js"></script>
<!-- endbuild -->
{%/block%}