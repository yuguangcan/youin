{%*上传作品*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
上传新作品
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/upload-step1.css -->
<link rel="stylesheet" href="/static/styles/page/upload-step1.css"/>
<!-- endbuild -->
{%/block%}

{%block name="content"%}
	<div class="content-inner">
		<div class="nav">
			<span class="cur">1.上传新作品 >></span>
			<span>2.选择定制艺术品</span>
		</div>
	</div>
{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/upload-step1.js -->
<script src="static/scripts/page/upload-step1.js"></script>
<!-- endbuild -->
{%/block%}