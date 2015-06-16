{%*YOUSHOW*%}

{%extends file="youin/layout/layout.tpl"%} 

{%block name="title"%}
YOUSHOW
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/youshow.css -->
<link rel="stylesheet" href="static/styles/page/youshow.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
    {%include file="youin/widget/header.tpl" select="hot"%}
{%/block%}

{%block name="content"%}

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

    
{%/block%}
