{%*专场*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
专场
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/special-activity.css -->
<link rel="stylesheet" href="/static/styles/page/special-activity.css"/>
<!-- endbuild -->
{%/block%}

{%block name="header"%}
    {%include file="youin/widget/header.tpl" select="special"%}
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
	<h2>1F 明星专场</h2>
	<ul class="activity-list">
		{%foreach $data.data.star as $item%}
		<li class="{%if $item@index == 0%}activity-item-top{%else%}activity-item-bottom{%/if%}">
			<a href="{%$item.url%}" target="_blank">
				<img src="/pic/{%$item.pic%}.jpg" style="width: 100%;height:100%;">
			</a>
		</li>
		{%/foreach%}
	</ul>
	<h2>2F 动画专场</h2>
	<ul class="activity-list">
		{%foreach $data.data.cartoon as $item%}
		<li class="{%if $item@index == 0%}activity-item-top{%else%}activity-item-bottom{%/if%}">
			<a href="{%$item.url%}" target="_blank">
				<img src="/pic/{%$item.pic%}.jpg" style="width: 100%;height:100%;">
			</a>
		</li>
		{%/foreach%}
	</ul>
	<h2>3F 新人专场</h2>
	<ul class="activity-list">
		{%foreach $data.data.new as $item%}
		<li class="{%if $item@index == 0%}activity-item-top{%else%}activity-item-bottom{%/if%}">
			<a href="{%$item.url%}" target="_blank">
				<img src="/pic/{%$item.pic%}.jpg" style="width: 100%;height:100%;">
			</a>
		</li>
		{%/foreach%}
	</ul>
</section>
{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/special-activity.js -->
<script src="static/scripts/page/special-activity.js"></script>
<!-- endbuild -->
{%/block%}