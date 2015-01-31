{%*已关注的设计师*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
已关注的设计师
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/ucenter/follow.css -->
<link rel="stylesheet" href="/static/styles/page/ucenter/follow.css"/>
<!-- endbuild -->
{%/block%}

{%block name="header"%}
    {%include file="youin/widget/header.tpl" select="designer"%}

    {%include file="youin/widget/designer-header.tpl"%}

    {%include file="youin/widget/designer-nav.tpl" select="following"%}
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
<!-- build:js /static/youin/scripts/page/ucenter/follow.js -->
<script src="static/scripts/page/ucenter/follow.js"></script>
<!-- endbuild -->
{%/block%}
