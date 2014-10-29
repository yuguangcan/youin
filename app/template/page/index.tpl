{%*首页*%}

{%extends file="youyin/layout/layout.tpl"%} 

{%block name="title"%}
首页
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youyin/styles/page/index.css -->
<link rel="stylesheet" href="static/styles/page/index.css">
<!-- endbuild -->
{%/block%}

{%block name="content"%}
    <section class="banner">
        <img src="/static/youyin/images/banner1.jpg">
        <i class="index-icons-arrow-left"></i>
        <i class="index-icons-arrow-right"></i>
    </section>

    <section class="product">
        <div class="product-list-style1">
            <img src="/static/youyin/images/product1.jpg" class="product-item-1"></img>
            <img src="/static/youyin/images/product2.jpg" class="product-item-2"></img>
            <img src="/static/youyin/images/product3.jpg" class="product-item-3"></img>
            <img src="/static/youyin/images/product4.jpg" class="product-item-4"></img>
            <img src="/static/youyin/images/product5.jpg" class="product-item-5"></img>
        </div>
    </section>
{%/block%}

{%block name="js"%}

<!-- build:js /static/youyin/scripts/page/index.js -->
<script src="static/scripts/page/index.js"></script>
<!-- endbuild -->
{%/block%}