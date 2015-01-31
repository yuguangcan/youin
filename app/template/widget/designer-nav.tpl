<div class="m-designer-nav" id="designer-nav">
    <ul class="clearfix">
        {%if $data.userInfo.type == 1%}
            {%if $select=="arts"%}
                <li class="cur">
                    <a href="javascript:;">我的作品</a>
                </li>
            {%else%}
                <li>
                    <a href="/user/card?uid={%$data.userInfo.uid%}#designer-nav">我的作品</a>
                </li>
            {%/if%}
        {%/if%}
        {%if $select=="order"%}
            <li class="cur">
                <a href="javascript:;">我的订单</a>
            </li>
        {%else%}
            <li>
                <a href="/order/userorder/getlist?type=0#designer-nav">我的订单</a>
            </li>
        {%/if%}
        {%if $select=="like"%}
            <li class="cur">
                <a href="javascript:;">我的收藏</a>
            </li>
        {%else%}
            <li>
                <a href="/mall/collect/getlist#designer-nav">我的收藏</a>
            </li>
        {%/if%}
        {%if $select=="following"%}
            <li class="cur">
                <a href="javascript:;">我的关注</a>
            </li>
        {%else%}
            <li>
                <a href="/follow/follow/getlist#designer-nav">我的关注</a>
            </li>
        {%/if%}
        {%if $select=="followers"%}
            <li class="cur">
                <a href="javascript:;">我的粉丝</a>
            </li>
        {%else%}
            <li>
                <a href="/follow/follow/fanslist#designer-nav">我的粉丝</a>
            </li>
        {%/if%}
    </ul>
</div>