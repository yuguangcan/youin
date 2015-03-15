{%*我的收藏*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
我的收藏
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/ucenter/like.css -->
<link rel="stylesheet" href="/static/styles/page/ucenter/like.css"/>
<!-- endbuild -->
{%/block%}

{%block name="header"%}
    {%include file="youin/widget/header.tpl" select="designer"%}

    {%include file="youin/widget/designer-header.tpl"%}

    {%include file="youin/widget/designer-nav.tpl" select="like"%}
{%/block%}

{%block name="content"%}
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
<!-- build:js /static/youin/scripts/base/ajaxfileupload.js -->
<script src="static/scripts/base/ajaxfileupload.js"></script>
<!-- endbuild -->
<!-- build:js /static/youin/scripts/widget/designer-header.js -->
<script src="static/scripts/widget/designer-header.js"></script>
<!-- endbuild -->
<!-- build:js /static/youin/scripts/page/ucenter/like.js -->
<script src="static/scripts/page/ucenter/like.js"></script>
<!-- endbuild -->
{%/block%}