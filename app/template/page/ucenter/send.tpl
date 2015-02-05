{%*待发货*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
待发货
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/ucenter/send.css -->
<link rel="stylesheet" href="/static/styles/page/ucenter/send.css"/>
<!-- endbuild -->
{%/block%}

{%block name="header"%}
    {%include file="youin/widget/header.tpl" select="designer"%}

    {%include file="youin/widget/designer-header.tpl"%}

    {%include file="youin/widget/designer-nav.tpl" select="order"%}
{%/block%}

{%block name="content"%}
	
	{%include file="youin/widget/buylist.tpl" selected=2 state="send"%}

	{%include file="youin/widget/related-product.tpl" productlist=$data.data.recommendInfo.list%}

{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/ucenter/send.js -->
<script src="static/scripts/base/ajaxfileupload.js"></script>
<script src="static/scripts/widget/designer-header.js"></script>
<script src="static/scripts/page/ucenter/send.js"></script>
<!-- endbuild -->
{%/block%}