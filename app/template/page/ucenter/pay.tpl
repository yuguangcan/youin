{%*待付款*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
待付款
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/ucenter/pay.css -->
<link rel="stylesheet" href="/static/styles/page/ucenter/pay.css"/>
<!-- endbuild -->
{%/block%}

{%block name="header"%}
    {%include file="youin/widget/header.tpl" select="designer"%}

    {%include file="youin/widget/designer-header.tpl"%}

    {%include file="youin/widget/designer-nav.tpl" select="order"%}
{%/block%}

{%block name="content"%}
	
	{%include file="youin/widget/buylist.tpl" selected=1 state="pay"%}

	{%include file="youin/widget/related-product.tpl" productlist=$data.data.recommendInfo.list%}

{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/ucenter/pay.js -->
<script src="static/scripts/base/ajaxfileupload.js"></script>
<script src="static/scripts/widget/designer-header.js"></script>
<script src="static/scripts/page/ucenter/pay.js"></script>
<!-- endbuild -->
{%/block%}