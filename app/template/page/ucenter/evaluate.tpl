{%*待评价*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
待评价
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/ucenter/evaluate.css -->
<link rel="stylesheet" href="/static/styles/page/ucenter/evaluate.css"/>
<!-- endbuild -->
{%/block%}

{%block name="header"%}
    {%include file="youin/widget/header.tpl" select="designer"%}

    {%include file="youin/widget/designer-header.tpl"%}

    {%include file="youin/widget/designer-nav.tpl" select="order"%}
{%/block%}

{%block name="content"%}
	
	{%include file="youin/widget/buylist.tpl" selected=4 state="evaluate"%}

	{%include file="youin/widget/related-product.tpl" productlist=$data.data.recommendInfo.list%}

{%/block%}

{%block name="js"%}
<!-- build:js /static/youin/scripts/base/ajaxfileupload.js -->
<script src="static/scripts/base/ajaxfileupload.js"></script>
<!-- endbuild -->
<!-- build:js /static/youin/scripts/widget/designer-header.js -->
<script src="static/scripts/widget/designer-header.js"></script>
<!-- endbuild -->
<!-- build:js /static/youin/scripts/page/ucenter/evaluate.js -->
<script src="static/scripts/page/ucenter/evaluate.js"></script>
<!-- endbuild -->
{%/block%}