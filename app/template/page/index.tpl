{%*首页*%}

{%extends file="youin/layout/layout.tpl"%} 

{%block name="title"%}
首页
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/index.css -->
<link rel="stylesheet" href="static/styles/widget/scrollbanner.css">
<link rel="stylesheet" href="static/styles/page/index.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
    {%include file="youin/widget/header.tpl" select="index"%}
{%/block%}

{%block name="content"%}
    {%include file="youin/widget/scrollbanner.tpl" banner=$data.data.banner%}

    <section class="product">
        {%foreach $data.data.product as $item%}
            <ul class="{%if $item.style == 1%}product-list-style1{%else if $item.style == 2%}product-list-style2{%/if%}">
                {%foreach $item.content as $picitem%}
                    <li class="product-item-{%$picitem@index+1%}">
                        <a href="javascript:;" target="_blank">
                            <img src="{%$picitem.pic%}"></img>
                            {%include file="youin/widget/productinfo.tpl" product=$picitem%}
                        </a>
                    </li>
                {%/foreach%}
            </ul>
        {%/foreach%}
    </section>

    <section class="designer">
        <div class="title">
            <i class="index-icons-light"></i>
            他们会让你生活更有创意
            <a href="/user/designerlist">更多设计师<i class="index-icons-arrow-small"></i></a>
        </div>
        {%foreach $data.data.designer as $designer%}
        <ul class="clearfix">
            {%foreach $designer.content as $item%}
                <li>
                    <a href="/user/card?uid={%$item.uid%}" target="_blank" class="designer-item-{%$item@index+1%}">
                        {%if $item@index == 2 || $item@index == 3%}
                        <img src="{%$item.pic%}">
                        <div class="right">
                            <img src="{%$item.avatar%}"></img>
                            <span class="name">{%$item.uname%}</span>
                            <span class="mark">{%$item.mark%}</span>
                        </div>
                        {%else%}
                        <div class="left">
                            <img src="{%$item.avatar%}"></img>
                            <span class="name">{%$item.uname%}</span>
                            <span class="mark">{%$item.mark%}</span>
                        </div>
                        <img src="{%$item.pic%}">
                        {%/if%}
                    </a>
                </li>
            {%/foreach%}
        </ul>
        {%/foreach%}
    </section>
{%/block%}

{%block name="js"%}
<!-- build:js /static/youin/scripts/base/jquery.tools.min.js -->
<script src="static/scripts/base/jquery.tools.min.js" type="text/javascript"></script>
<!-- endbuild -->
<!-- build:js /static/youin/scripts/widget/scrollbanner.js -->
<script src="static/scripts/widget/scrollbanner.js"></script>
<!-- endbuild -->
<!-- build:js /static/youin/scripts/page/index.js -->
<script src="static/scripts/page/index.js"></script>
<!-- endbuild -->
{%/block%}