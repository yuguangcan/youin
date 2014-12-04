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
	<li><a href="###">已关注的设计师（37人）</a></li>
	<li><a href="###">我的粉丝（37人）</a></li>
	<li><a href="#like" class="active">我的收藏（28件）</a></li>
</ul>
<ul class="list-nav clearfix">
	<li id="all" class="list-active">全部</li>
	<li id="sale" >优惠</li>
</ul>
<ul class="product-list all clearfix">
	<li>
		<a href="###"><img src="/static/youin/images/product3.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li><li>
		<a href="###"><img src="/static/youin/images/product3.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li><li>
		<a href="###"><img src="/static/youin/images/product3.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li><li>
		<a href="###"><img src="/static/youin/images/product3.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li>
	<li>
		<a href="###"><img src="/static/youin/images/product3.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li><li>
		<a href="###"><img src="/static/youin/images/product3.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li><li>
		<a href="###"><img src="/static/youin/images/product3.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li><li>
		<a href="###"><img src="/static/youin/images/product3.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li><li>
		<a href="###"><img src="/static/youin/images/product3.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li><li>
		<a href="###"><img src="/static/youin/images/product3.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li><li>
		<a href="###"><img src="/static/youin/images/product3.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
</ul>
<ul class="product-list sale clearfix">
	<li>
		<a href="###"><img src="/static/youin/images/product4.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li><li>
		<a href="###"><img src="/static/youin/images/product4.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li><li>
		<a href="###"><img src="/static/youin/images/product4.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li><li>
		<a href="###"><img src="/static/youin/images/product4.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li>
	<li>
		<a href="###"><img src="/static/youin/images/product4.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li><li>
		<a href="###"><img src="/static/youin/images/product4.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li><li>
		<a href="###"><img src="/static/youin/images/product4.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li><li>
		<a href="###"><img src="/static/youin/images/product4.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li><li>
		<a href="###"><img src="/static/youin/images/product4.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li><li>
		<a href="###"><img src="/static/youin/images/product4.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
	</li><li>
		<a href="###"><img src="/static/youin/images/product4.jpg">
		{%include file="youin/widget/productinfo.tpl"%}
		</a>
</ul>
{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/like.js -->
<script src="static/scripts/page/like.js"></script>
<!-- endbuild -->
{%/block%}