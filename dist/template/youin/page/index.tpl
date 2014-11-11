{%*首页*%}

{%extends file="youin/layout/layout.tpl"%} 

{%block name="title"%}
首页
{%/block%}

{%block name="css"%}
<link rel="stylesheet" href="/static/youin/styles/page/index.css"/>
{%/block%}

{%block name="content"%}
    {%include file="youin/widget/scrollbanner.tpl"%}

    <section class="product">
        <ul class="product-list-style1">
            <li class="product-item-1">
                <a href="###"><img src="/static/youin/images/product1.jpg"></img></a>
            </li>
            <li class="product-item-2">
                <a href="###"><img src="/static/youin/images/product2.jpg"></img></a>
            </li>
            <li class="product-item-3">
                <a href="###"><img src="/static/youin/images/product3.jpg"></img></a>
            </li>
            <li class="product-item-4">
                <a href="###"><img src="/static/youin/images/product4.jpg"></img></a>
            </li>
            <li class="product-item-5">
                <a href="###"><img src="/static/youin/images/product5.jpg"></img></a>
            </li>
        </ul>
        <ul class="product-list-style2">
            <li class="product-item-1">
                <a href="###"><img src="/static/youin/images/product6.jpg"></img></a>
            </li>
            <li class="product-item-2">
                <a href="###"><img src="/static/youin/images/product7.jpg"></img></a>
            </li>
        </ul>
        <ul class="product-list-style1">
            <li class="product-item-1">
                <a href="###"><img src="/static/youin/images/product8.jpg"></img></a>
            </li>
            <li class="product-item-2">
                <a href="###"><img src="/static/youin/images/product9.jpg"></img></a>
            </li>
            <li class="product-item-3">
                <a href="###"><img src="/static/youin/images/product10.jpg"></img></a>
            </li>
            <li class="product-item-4">
                <a href="###"><img src="/static/youin/images/product11.jpg"></img></a>
            </li>
            <li class="product-item-5">
                <a href="###"><img src="/static/youin/images/index-more-product.jpg"></img></a>
            </li>
        </ul>
    </section>

    <section class="designer">
        <div class="title">
            <i class="index-icons-light"></i>
            他们会让你生活更有创意
            <a href="###">更多设计师<i class="index-icons-arrow-small"></i></a>
        </div>
        <ul class="clearfix">
            <li>
                <a href="###" class="designer-item-1">
                    <div></div>
                    <img src="/static/youin/images/designer1.jpg">
                </a>
            </li>
            <li>
                <a href="###" class="designer-item-2">
                    <div></div>
                    <img src="/static/youin/images/designer2.jpg">
                </a>
            </li>
            <li>
                <a href="###" class="designer-item-3">
                    <img src="/static/youin/images/designer3.jpg">
                    <div></div>
                </a>
            </li>
            <li>
                <a href="###" class="designer-item-4">
                    <img src="/static/youin/images/designer4.jpg">
                    <div></div>
                </a>
            </li>
            <li>
                <a href="###" class="designer-item-5">
                    <div></div>
                    <img src="/static/youin/images/designer5.jpg">
                </a>
            </li>
            <li>
                <a href="###" class="designer-item-6">
                    <div></div>
                    <img src="/static/youin/images/designer6.jpg">
                </a>
            </li>
        </ul>
    </section>
{%/block%}

{%block name="js"%}

<script src="/static/youin/scripts/page/index.js"></script>
{%/block%}