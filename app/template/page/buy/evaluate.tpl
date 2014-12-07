{%*待评价*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
待评价
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/buy/evaluate.css -->
<link rel="stylesheet" href="/static/styles/page/buy/evaluate.css"/>
<!-- endbuild -->
{%/block%}

{%block name="content"%}
	
	{%include file="youin/widget/buylist.tpl" selected=4 state="evaluate"%}

	{%include file="youin/widget/related-product.tpl"%}

{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/buy/evaluate.js -->
<script src="static/scripts/page/buy/evaluate.js"></script>
<!-- endbuild -->
{%/block%}