{%*待发货*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
待发货
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/buy/send.css -->
<link rel="stylesheet" href="/static/styles/page/buy/send.css"/>
<!-- endbuild -->
{%/block%}

{%block name="content"%}
	
	{%include file="youin/widget/buylist.tpl" selected=2 state="send"%}

	{%include file="youin/widget/related-product.tpl" productlist=$data.data.recommendInfo.list%}

{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/buy/send.js -->
<script src="static/scripts/page/buy/send.js"></script>
<!-- endbuild -->
{%/block%}