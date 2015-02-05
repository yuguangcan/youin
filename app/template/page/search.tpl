{%*搜索结果*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
{%$data.data.word%}_搜索结果
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/search.css -->
<link rel="stylesheet" href="/static/styles/page/search.css"/>
<!-- endbuild -->
{%/block%}

{%block name="content"%}
	
<div class="search-notice">关于"{%$data.data.word%}"的艺术品搜索结果：</div>
<ul class="items clearfix">
    {%foreach $data.data.list as $item%}
        <li class="item">
            {%include file="youin/widget/artinfo.tpl" item=$item%}
        </li>
    {%/foreach%}
</ul>
	

{%/block%}
