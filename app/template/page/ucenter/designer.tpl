{%*设计师空间*%}
{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
设计师空间
{%/block%}

{%block name="css"%}

<!-- build:css(.tmp) /static/youin/styles/page/ucenter/designer.css -->
<link rel="stylesheet" href="static/styles/page/ucenter/designer.css"/>
<!-- endbuild -->
{%/block%} 

{%block name="header"%}
    {%include file="youin/widget/header.tpl" select="designer"%}

    {%include file="youin/widget/designer-header.tpl"%}

    {%if $data.data.uid == $data.userInfo.uid %}
        {%include file="youin/widget/designer-nav.tpl" select="arts"%}
    {%/if%}
{%/block%}

{%block name="content"%}

<section class="product">
    <ul class="items clearfix">
        {%foreach $data.data.itemList as $item%}
            <li class="item">
                {%include file="youin/widget/artinfo.tpl" item=$item%}
            </li>
        {%/foreach%}
    </ul>
</section>
{%/block%}

{%block name="js"%}
<!-- build:js /static/youin/scripts/page/ucenter/designer.js -->
<script src="static/scripts/base/ajaxfileupload.js"></script>
<script src="static/scripts/widget/designer-header.js"></script>
<script src="static/scripts/page/ucenter/designer.js"></script>
<!-- endbuild -->
{%/block%}