{%*分类页*%}

{%extends file="youin/layout/layout.tpl"%} 

{%block name="title"%}
壁画
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/category.css -->
<link rel="stylesheet" href="static/styles/widget/scrollbanner.css">
<link rel="stylesheet" href="static/styles/page/category.css">
<!-- endbuild -->
{%/block%}

{%block name="content"%}
    {%include file="youin/widget/scrollbanner.tpl" banner=$data.data.banner%}

    {%foreach $data.data.product as $product%}
        <section class="category-item" id="cid{%$product.cid%}">
            <h2><a href="/pages/subcategory?cid={%$product.cid%}" class="title">{%$product.cname%}</a><a href="/pages/subcategory?cid={%$product.cid%}" class="more">更多</a></h2>
            <ul class="product-list clearfix">
                {%foreach $product.list as $item%}
                    <li>
                        <a href="javascript:;" target="_blank">
                            <img src="{%$item.pic%}"></img>
                            {%include file="youin/widget/productinfo.tpl" product=$item%}
                        </a>
                    </li>
                {%/foreach%}
            </ul>
        </section>
    {%/foreach%}


{%/block%}

{%block name="js"%}
<!-- build:js /static/youin/scripts/base/jquery.tools.min.js -->
<script src="static/scripts/base/jquery.tools.min.js" type="text/javascript"></script>
<!-- endbuild -->
<!-- build:js /static/youin/scripts/widget/scrollbanner.js -->
<script src="static/scripts/widget/scrollbanner.js"></script>
<!-- endbuild -->
<!-- build:js /static/youin/scripts/page/category.js -->
<script src="static/scripts/page/category.js"></script>
<!-- endbuild -->
{%/block%}