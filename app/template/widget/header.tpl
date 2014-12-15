<header id="header" class="m-header">
    <div class="ucenter">
        <ul>
            {%if $data.userInfo.uid == 0%}
            <li>
                <a href="javascript:;" class="avatar" id="login"></i>登录/注册</a>
            </li>
            {%else%}
            <li>
                <a href="javascript:;" class="avatar" id="ucenter"><img src="{%$data.userInfo.avatar%}"></i>{%$data.userInfo.uname%}</a>
                <div style="display:none;">
                    <i></i>
                    <div class="user">
                        <img src="" class="avatar">
                        <p class="name">测试用户</p>
                        <p class="detail">这是一个测试用户</p>
                    </div>
                </div>
            </li>
            <li><a href="###"><i class="common-icons-collect"></i>收藏<span>{%$data.userInfo.collectNum%}</span>件</a></li>
            <li><a href="###"><i class="common-icons-cart"></i>购物车<span>{%$data.userInfo.cartNum%}</span>件</a></li>
            {%/if%}
            <li><a href="###" id="search"><i class="common-icons-search"></i>搜索商品</a></li>
        </ul>
    </div>
    
    <div class="nav">
        <div class="nav-inner clearfix">
            <div class="logo"><i class="common-icons-header-logo"></i></div>
            <ul>
                <li class="divide common-icons-nav-divide"></li>
                <li {%if $select=="index"%}class="cur"{%/if%}><a href="/pages/index"><i class="common-icons-nav-index"></i><p>首页</p></a></li>
                <li class="divide common-icons-nav-divide"></li>
                <li {%if $data.data.pageId==$data.data.menu[0].pageId%}class="cur"{%/if%}>
                    <a href="/pages/category?pageId={%$data.data.menu[0].pageId%}">
                        <i class="common-icons-nav-paint"></i><p>{%$data.data.menu[0].name%}</p><span class="common-icons-nav-arrow"></span>
                        <div class="sub-nav">
                        {%foreach $data.data.menu[0].sub as $item%}
                            <div data-href="/pages/subcategory?cid={%$item.cid%}" class="sub-nav-href">{%$item.name%}</div>
                        {%/foreach%}
                        </div>
                    </a>
                </li>
                <li class="divide common-icons-nav-divide"></li>
                <li {%if $data.data.pageId==$data.data.menu[1].pageId%}class="cur"{%/if%}>
                    <a href="/pages/category?pageId={%$data.data.menu[1].pageId%}">
                        <i class="common-icons-nav-dress"></i><p>{%$data.data.menu[1].name%}</p><span class="common-icons-nav-arrow"></span>
                        <div class="sub-nav">
                        {%foreach $data.data.menu[1].sub as $item%}
                            <div data-href="/pages/subcategory?cid={%$item.cid%}" class="sub-nav-href">{%$item.name%}</div>
                        {%/foreach%}
                        </div>
                    </a>
                </li>
                <li class="divide common-icons-nav-divide"></li>
                <li {%if $data.data.pageId==$data.data.menu[2].pageId%}class="cur"{%/if%}>
                    <a href="/pages/category?pageId={%$data.data.menu[2].pageId%}">
                        <i class="common-icons-nav-life"></i><p>{%$data.data.menu[2].name%}</p><span class="common-icons-nav-arrow"></span>
                        <div class="sub-nav">
                        {%foreach $data.data.menu[2].sub as $item%}
                            <div data-href="/pages/subcategory?cid={%$item.cid%}" class="sub-nav-href">{%$item.name%}</div>
                        {%/foreach%}
                        </div>
                    </a>
                </li>
                <li class="divide common-icons-nav-divide"></li>
                <li {%if $data.data.pageId==$data.data.menu[3].pageId%}class="cur"{%/if%}>
                    <a href="/pages/category?pageId={%$data.data.menu[3].pageId%}">
                        <i class="common-icons-nav-shell"></i><p>{%$data.data.menu[3].name%}</p><span class="common-icons-nav-arrow"></span>
                        <div class="sub-nav">
                        {%foreach $data.data.menu[3].sub as $item%}
                            <div data-href="/pages/subcategory?cid={%$item.cid%}" class="sub-nav-href">{%$item.name%}</div>
                        {%/foreach%}
                        </div>
                    </a>
                </li>
                <li class="divide common-icons-nav-divide"></li>
                <li><a href="###"><i class="common-icons-nav-designer"></i><p>设计师</p></a></li>
                <li class="divide common-icons-nav-divide"></li>
                <li {%if $select=="hot"%}class="cur"{%/if%}><a href="###"><i class="common-icons-nav-hot"></i><p>热卖</p></a></li>
                <li class="divide common-icons-nav-divide"></li>
                <li {%if $select=="special"%}class="cur"{%/if%}><a href="###"><i class="common-icons-nav-special"></i><p>专场</p></a></li>
                <li class="divide common-icons-nav-divide"></li>
            </ul>
        </div>
        
    </div>
</header>