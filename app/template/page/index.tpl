{%*首页*%}

{%extends file="youin/layout/layout.tpl"%} 

{%block name="title"%}
首页
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/index.css -->
<link rel="stylesheet" href="static/styles/page/index.css">
<!-- endbuild -->
{%/block%}

{%block name="content"%}
    <section class="banner">
        <img src="/static/youin/images/banner1.jpg">
        <i class="index-icons-arrow-left"></i>
        <i class="index-icons-arrow-right"></i>
    </section>

    <section class="product">
        <div class="product-list-style1">
            <a href="###"  class="product-item-1"><img src="/static/youin/images/product1.jpg"></img></a>
            <a href="###"  class="product-item-2"><img src="/static/youin/images/product2.jpg"></img></a>
            <a href="###"  class="product-item-3"><img src="/static/youin/images/product3.jpg"></img></a>
            <a href="###"  class="product-item-4"><img src="/static/youin/images/product4.jpg"></img></a>
            <a href="###"  class="product-item-5"><img src="/static/youin/images/product5.jpg"></img></a>
        </div>
        <div class="product-list-style2">
            <a href="###"  class="product-item-1"><img src="/static/youin/images/product6.jpg"></img></a>
            <a href="###"  class="product-item-2"><img src="/static/youin/images/product7.jpg"></img></a>
        </div>
        <div class="product-list-style1">
            <a href="###"  class="product-item-1"><img src="/static/youin/images/product8.jpg"></img></a>
            <a href="###"  class="product-item-2"><img src="/static/youin/images/product9.jpg"></img></a>
            <a href="###"  class="product-item-3"><img src="/static/youin/images/product10.jpg"></img></a>
            <a href="###"  class="product-item-4"><img src="/static/youin/images/product11.jpg"></img></a>
            <a href="###"  class="product-item-5"><img src="/static/youin/images/more-product.jpg"></img></a>
        </div>
    </section>
{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/index.js -->
<script src="static/scripts/page/index.js"></script>
<!-- endbuild -->
{%/block%}