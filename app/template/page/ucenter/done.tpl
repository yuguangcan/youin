{%*已完成*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
已完成
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/ucenter/done.css -->
<link rel="stylesheet" href="/static/styles/page/ucenter/done.css"/>
<!-- endbuild -->
{%/block%}

{%block name="header"%}
    {%include file="youin/widget/header.tpl" select="designer"%}

    {%include file="youin/widget/designer-header.tpl"%}

    {%include file="youin/widget/designer-nav.tpl" select="order"%}
{%/block%}

{%block name="content"%}
	
	{%include file="youin/widget/buylist.tpl" selected=5 state="done"%}

	{%include file="youin/widget/related-product.tpl" productlist=$data.data.recommendInfo.list%}

{%/block%}
