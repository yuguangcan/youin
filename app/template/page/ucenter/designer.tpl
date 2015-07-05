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
        
    </ul>
</section>
{%/block%}

{%block name="js"%}

<script id="artinfo_template" type="text/html">

    <% for(var i=0;i<list.length;i++){ %>
    <li class="item">
        <div class="m-artinfo">
            <a class="pic-box" href="/pages/art?itemId=<%=list[i].itemId%>" target="_blank">
                <img src="<%=list[i].pic%>"></img>
                <div class="pic-intro">
                    <div class="opt">
                        <span class="share"><i class="common-icons-art-share"></i><%=list[i].shareNum%></span>
                        <span class="like"><i class="common-icons-art-like"></i><%=list[i].collectNum%></span>
                    </div>
                </div>
            </a>
            <a href="/pages/art?itemId=<%=list[i].itemId%>" class="product-title" target="_blank"><%=list[i].itemName%></a>
            <a href="/pages/art?itemId=<%=list[i].itemId%>" class="product-content" ><%=list[i].summary%></a>
        </div>
    </li>
    <% } %>
    
</script>

<script type="text/javascript">
    YY.context('uid','{%$data.data.uid%}');
</script>

<!-- build:js /static/youin/scripts/base/baiduTemplate.js -->
<script src="static/scripts/base/baiduTemplate.js" type="text/javascript"></script>
<!-- endbuild -->
<!-- build:js /static/youin/scripts/base/ajaxfileupload.js -->
<script src="static/scripts/base/ajaxfileupload.js"></script>
<!-- endbuild -->
<!-- build:js /static/youin/scripts/widget/scrollLoad.js -->
<script src="static/scripts/widget/scrollLoad.js"></script>
<!-- endbuild -->
<!-- build:js /static/youin/scripts/widget/designer-header.js -->
<script src="static/scripts/widget/designer-header.js"></script>
<!-- endbuild -->
<!-- build:js /static/youin/scripts/page/ucenter/designer.js -->
<script src="static/scripts/page/ucenter/designer.js"></script>
<!-- endbuild -->
{%/block%}