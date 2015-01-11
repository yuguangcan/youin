{%*设计师列表*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
设计师列表
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/follow.css -->
<link rel="stylesheet" href="/static/styles/page/follow.css"/>
<!-- endbuild -->
<style type="text/css">
	.user-list{
		margin-top:30px;
	}
	.user-list .m-designer-item{
		background: #2a425e;
	}
</style>
{%/block%}

{%block name="header"%}
    {%include file="youin/widget/header.tpl" select="designer"%}
{%/block%}

{%block name="content"%}

<ul class="user-list">
	{%foreach $data.data.list as $item%}
	<li>
		{%include file="youin/widget/designer-item.tpl" designer=$item%}
	</li>
	{%/foreach%}
</ul>
<!-- {%include file="youin/widget/page.tpl"%} -->

{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/follow.js -->
<script src="static/scripts/page/follow.js"></script>
<!-- endbuild -->
{%/block%}