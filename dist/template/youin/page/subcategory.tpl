{%*子分类页*%}

{%extends file="youin/layout/layout.tpl"%} 

{%block name="title"%}
壁画
{%/block%}

{%block name="css"%}
<link rel="stylesheet" href="/static/youin/styles/page/subcategory.css"/>
{%/block%}

{%block name="content"%}

    <ul class="sub-category-nav clearfix">
        <li><a href="###">首页</a></li>
        <li>></li>
        <li><a href="###">壁画</a></li>
        <li>></li>
        <li><a href="###">有框画</a></li>
    </ul>

    <div class="filter">
        <div class="price clearfix">
            <span class="label">价格：</span>
            <ul class="price clearfix">
                <li class="cur">不限</li>
                <li>￥0-49</li>
                <li>￥50-99</li>
                <li>￥100-199</li>
                <li>￥200以上</li>
            </ul>
        </div>
        <div class="style clearfix">
            <span class="label">风格：</span>
            <ul class="style clearfix">
                <li class="cur">不限<i></i></li>
                <li>文艺<i></i></li>
                <li>复古<i></i></li>
                <li>清新<i></i></li>
            </ul>
        </div>
    </div>

    <ul class="sort clearfix">
        <li class="cur up">按销量排序<i></i></li>
        <li class="down">按价格排序<i></i></li>
    </ul>

    <ul class="product-list clearfix">
        <li>
            <a href="###"><img src="/static/youin/images/product3.jpg"></img></a>
        </li>
        <li>
            <a href="###"><img src="/static/youin/images/product3.jpg"></img></a>
        </li>
        <li>
            <a href="###"><img src="/static/youin/images/product3.jpg"></img></a>
        </li>
        <li>
            <a href="###"><img src="/static/youin/images/product3.jpg"></img></a>
        </li>
        <li>
            <a href="###"><img src="/static/youin/images/product3.jpg"></img></a>
        </li>
        <li>
            <a href="###"><img src="/static/youin/images/product3.jpg"></img></a>
        </li>
        <li>
            <a href="###"><img src="/static/youin/images/product3.jpg"></img></a>
        </li>
        <li>
            <a href="###"><img src="/static/youin/images/product3.jpg"></img></a>
        </li>
        <li>
            <a href="###"><img src="/static/youin/images/product3.jpg"></img></a>
        </li>
        <li>
            <a href="###"><img src="/static/youin/images/product3.jpg"></img></a>
        </li>
        <li>
            <a href="###"><img src="/static/youin/images/product3.jpg"></img></a>
        </li>
        <li class="more">
            <a href="###"><img src="/static/youin/images/category-more-product.jpg" ></img></a>
        </li>
    </ul>

    
{%/block%}

{%block name="js"%}

<script src="/static/youin/scripts/page/subcategory.js"></script>
{%/block%}