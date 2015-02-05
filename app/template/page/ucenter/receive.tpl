{%*待收货*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
待收货
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/ucenter/receive.css -->
<link rel="stylesheet" href="/static/styles/page/ucenter/receive.css"/>
<!-- endbuild -->
{%/block%}

{%block name="header"%}
    {%include file="youin/widget/header.tpl" select="designer"%}

    {%include file="youin/widget/designer-header.tpl"%}

    {%include file="youin/widget/designer-nav.tpl" select="order"%}
{%/block%}

{%block name="content"%}
	
	{%include file="youin/widget/buylist.tpl" selected=3 state="receive"%}

	{%include file="youin/widget/related-product.tpl" productlist=$data.data.recommendInfo.list%}

{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/ucenter/receive.js -->
<script src="static/scripts/base/ajaxfileupload.js"></script>
<script src="static/scripts/widget/designer-header.js"></script>
<script src="static/scripts/page/ucenter/receive.js"></script>
<!-- endbuild -->
{%/block%}