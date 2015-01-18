{%*关于*%}

{%extends file="youin/layout/layout.tpl"%} 

{%block name="title"%}
关于
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/about.css -->
<link rel="stylesheet" href="static/styles/page/about.css">
<!-- endbuild -->
{%/block%}

{%block name="header"%}
    <header>
        <div class="nav">
            <ul class="clearfix">
                <li><a href="/pages/index">首页</a></li>
                {%foreach $data.data.menu as $item%}
                <li><a href="/pages/category?pageId={%$item.pageId%}">{%$item.name%}</a></li>
                {%/foreach%}
                <li><a href="/user/designerlist">设计师</a></li>
                <li><a href="###">YOUSHOW</a></li>
                <li><a href="/pages/special">专场</a></li>
            </ul>
        </div>
        <div class="logo">
            <div>
                <i class="common-icons-about-logo"></i>
                <span>关于有印</span>
            </div>
        </div>
    </header>
{%/block%}

{%block name="content"%}
    <div class="about-content">
        <ul class="nav">
            <li><a href="#about">关于有印</a></li>
            <li><a href="#join">加入有印</a></li>
            <li><a href="#contact">联系有印</a></li>
            <li><a href="#guide">购物指南</a></li>
            <li><a href="#pay">支付方式</a></li>
            <li><a href="#deliver">配送方式</a></li>
            <li><a href="#aftersale">售后服务</a></li>
            <li><a href="#help">帮助信息</a></li>
        </ul>
        <div class="content-box">
            <div id="about">
                <h2>关于有印</h2>
                <h3>这是副标题</h3>
                <p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>
                <p>1.这是内容</p>
                <p>2.这是内容</p>
                <p>3.这是内容</p>
            </div>
            <div id="join">
                <h2>加入有印</h2>
                <h3>这是副标题</h3>
                <p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>
                <p>1.这是内容</p>
                <p>2.这是内容</p>
                <p>3.这是内容</p>
            </div>
            <div id="contact">
                <h2>联系有印</h2>
                <h3>这是副标题</h3>
                <p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>
                <p>1.这是内容</p>
                <p>2.这是内容</p>
                <p>3.这是内容</p>
            </div>
            <div id="guide">
                <h2>购物指南</h2>
                <h3>这是副标题</h3>
                <p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>
                <p>1.这是内容</p>
                <p>2.这是内容</p>
                <p>3.这是内容</p>
            </div>
            <div id="pay">
                <h2>支付方式</h2>
                <h3>这是副标题</h3>
                <p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>
                <p>1.这是内容</p>
                <p>2.这是内容</p>
                <p>3.这是内容</p>
            </div>
            <div id="deliver">
                <h2>配送方式</h2>
                <h3>这是副标题</h3>
                <p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>
                <p>1.这是内容</p>
                <p>2.这是内容</p>
                <p>3.这是内容</p>
            </div>
            <div id="aftersale">
                <h2>售后服务</h2>
                <h3>这是副标题</h3>
                <p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>
                <p>1.这是内容</p>
                <p>2.这是内容</p>
                <p>3.这是内容</p>
            </div>
            <div id="help">
                <h2>帮助信息</h2>
                <h3>这是副标题</h3>
                <p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>
                <p>1.这是内容</p>
                <p>2.这是内容</p>
                <p>3.这是内容</p>
            </div>
        </div>
    </div>
{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/about.js -->
<script src="static/scripts/page/about.js"></script>
<!-- endbuild -->
{%/block%}