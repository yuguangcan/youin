{%*子分类页*%}

{%extends file="youin/layout/layout.tpl"%} 

{%block name="title"%}
壁画
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/subcategory.css -->
<link rel="stylesheet" href="static/styles/page/subcategory.css">
<!-- endbuild -->
{%/block%}

{%block name="content"%}

    <ul class="sub-category-nav clearfix">
        <li><a href="/pages/index">首页</a></li>
        <li>></li>
        <li><a href="/pages/category?pageId={%$data.data.category.id%}">{%$data.data.category.name%}</a></li>
        <li>></li>
        {%if $data.data.category.sub.sub %}
        <li><a href="/pages/category?pageId={%$data.data.category.id%}#cid{%$data.data.category.sub.sub.cid%}">{%$data.data.category.sub.name%}</a></li>
        <li>></li>
        <li><a href="javascript:;">{%$data.data.category.sub.sub.name%}</a></li>
        {%else%}
        <li><a href="javascript:;">{%$data.data.category.sub.name%}</a></li>
        {%/if%}
    </ul>

    <div class="filter">
        {%if $data.data.category.id == 2%}
        <div class="clearfix">
            <span class="label">价格：</span>
            <ul class="price clearfix">
                <li data-min="0" data-max="0" class="cur">不限</li>
                <li data-min="0" data-max="49">￥0-49</li>
                <li data-min="50" data-max="99">￥50-99</li>
                <li data-min="100" data-max="199">￥100-199</li>
                <li data-min="200" data-max="299">￥200-299</li>
                <li data-min="300" data-max="1000000">￥300以上</li>
            </ul>
        </div>
        {%/if%}
        <div class="clearfix">
            <span class="label">风格：</span>
            <ul class="style clearfix">
                <li class="cur first" data-tagid="">不限<i></i></li>
                {%foreach $data.data.tags as $item%}
                    <li data-tagid="{%$item.tagId%}">{%$item.tagName%}<i></i></li>
                {%/foreach%}
            </ul>
        </div>
    </div>

    <ul class="sort clearfix">
        <li class="cur down" data-type="count">按销量排序<i></i></li>
        <li class="down" data-type="price">按价格排序<i></i></li>
        <li class="down" data-type="date">最近更新<i></i></li>
    </ul>

    <ul class="product-list clearfix">
       
    </ul>

    
{%/block%}

{%block name="js"%}
<script type="text/javascript">
    YY.context('cid','{%$data.data.cid%}');
</script>
<script id="product_template" type="text/html">

    <% for(var i=0;i<list.length;i++){ %>
    <li>
        <a href="/mall/item/detail?itemId=<%=list[i].itemId%>" target="_blank">
            <img src="<%=list[i].pic%>"></img>
            <div class="m-productinfo" data-pid="<%=list[i].itemId%>">
                <div class="opt buy"><i class="common-icons-product-buy"></i>购买</div>
                <div class="opt share"><i class="common-icons-product-share"></i>分享</div>
                <% if(list[i].isCollect == 1) { %>
                    <div class="opt like"><i></i>取消收藏</div>
                <% }else{ %>
                    <div class="opt like"><i></i>收藏</div>
                <% } %>
                
                <div class="info">
                    <p class="title"><%=list[i].itemName%></p>
                    <span><i class="common-icons-product-share-s"></i><%=list[i].shareNum%></span>
                    <span><i class="common-icons-product-like-s"></i><%=list[i].collectNum%></span>
                    <p class="detail"><%=list[i].summary%></p>
                    <div class="user">
                        <img class="avatar" src="<%=list[i].avatar%>"><%=list[i].uname%>
                    </div>
                </div>
            </div>
        </a>
    </li>
    <% } %>
    
</script>
<!-- build:js /static/youin/scripts/page/subcategory.js -->
<script src="static/scripts/base/baiduTemplate.js" type="text/javascript"></script>
<script src="static/scripts/page/subcategory.js"></script>
<!-- endbuild -->
{%/block%}