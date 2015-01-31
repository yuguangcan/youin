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
                <a class="pic-box" href="/pages/art?itemId={%$item.itemId%}">
                    <img src="{%$item.pic%}"></img>
                    <div class="pic-intro">
                        <div class="opt">
                            <span class="share"><i class="designer-icons-share"></i>{%$item.shareNum%}</span>
                            <span class="like"><i class="designer-icons-like"></i>{%$item.collectNum%}</span>
                        </div>
                        <div class="deal">成交量<span>{%$item.saleNum%}</span></div>
                    </div>
                </a>
                <a href="/pages/art?itemId={%$item.itemId%}" class="product-title">{%$item.itemName%}</a>
                <a href="/pages/art?itemId={%$item.itemId%}" class="product-content">{%$item.summary%}</a>
            </li>
        {%/foreach%}
    </ul>
</section>
{%/block%}

{%block name="js"%}
<script type="text/javascript">
    YY.context('uid','{%$data.data.uid%}');
</script>
<!-- build:js /static/youin/scripts/page/ucenter/designer.js -->
<script src="static/scripts/page/ucenter/designer.js"></script>
<!-- endbuild -->
{%/block%}