{%*专场*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
专场
{%/block%}

{%block name="css"%}
<link rel="stylesheet" href="/static/youin/styles/page/special-activity.css"/>
{%/block%}

{%block name="content"%}
<section class="side-bar">
	<ul class="side-bar-inner">
		<li class="active f1">明星专场</li>
		<li class="f2">动画专场</li>
		<li class="f3">新人专场</li>
	</ul>
</section>
<section class="activity">
	<h2>1F 明星专场<a href="###">更多</a></h2>
	<ul class="activity-list">
		<li class="activity-item-top">
			<a href="###">
				<img src="/static/youin/images/special-activity.jpg">
				{%include file="youin/widget/productinfo.tpl"%}</a>
		</li>
		<li class="activity-item-bottom">
			<a href="###">
				<img src="/static/youin/images/product4.jpg">{%include file="youin/widget/productinfo.tpl"%}</a>
		</li>
		<li class="activity-item-bottom">
			<a href="###">
				<img src="/static/youin/images/product4.jpg">{%include file="youin/widget/productinfo.tpl"%}</a>
		</li>
		<li class="activity-item-bottom">
			<a href="###">
				<img src="/static/youin/images/product4.jpg">{%include file="youin/widget/productinfo.tpl"%}</a>
		</li>
		<li class="activity-item-bottom">
			<a href="###">
				<img src="/static/youin/images/product4.jpg">{%include file="youin/widget/productinfo.tpl"%}</a>
		</li>
	</ul>
	<h2>2F 动画专场<a href="###">更多</a></h2>
	<ul class="activity-list">
		<li class="activity-item-top">
			<a href="###">
				<img src="/static/youin/images/special-activity.jpg">{%include file="youin/widget/productinfo.tpl"%}</a>
		</li>
		<li class="activity-item-bottom">
			<a href="###">
				<img src="/static/youin/images/product4.jpg">{%include file="youin/widget/productinfo.tpl"%}</a>
		</li>
		<li class="activity-item-bottom">
			<a href="###">
				<img src="/static/youin/images/product4.jpg">{%include file="youin/widget/productinfo.tpl"%}</a>
		</li>
		<li class="activity-item-bottom">
			<a href="###">
				<img src="/static/youin/images/product4.jpg">{%include file="youin/widget/productinfo.tpl"%}</a>
		</li>
		<li class="activity-item-bottom">
			<a href="###">
				<img src="/static/youin/images/product4.jpg">{%include file="youin/widget/productinfo.tpl"%}</a>
		</li>
	</ul>
	<h2>3F 新人专场<a href="###">更多</a></h2>
	<ul class="activity-list">
		<li class="activity-item-top">
			<a href="###">
				<img src="/static/youin/images/special-activity.jpg">{%include file="youin/widget/productinfo.tpl"%}</a>
		</li>
		<li class="activity-item-bottom">
			<a href="###">
				<img src="/static/youin/images/product4.jpg">{%include file="youin/widget/productinfo.tpl"%}</a>
		</li>
		<li class="activity-item-bottom">
			<a href="###">
				<img src="/static/youin/images/product4.jpg">{%include file="youin/widget/productinfo.tpl"%}</a>
		</li>
		<li class="activity-item-bottom">
			<a href="###">
				<img src="/static/youin/images/product4.jpg">{%include file="youin/widget/productinfo.tpl"%}</a>
		</li>
		<li class="activity-item-bottom">
			<a href="###">
				<img src="/static/youin/images/product4.jpg">{%include file="youin/widget/productinfo.tpl"%}</a>
		</li>
	</ul>
</section>
{%/block%}

{%block name="js"%}

<script src="/static/youin/scripts/page/special-activity.js"></script>
{%/block%}