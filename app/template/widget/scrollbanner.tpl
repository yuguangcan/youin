<section class="m-scrollbanner">
    <div class="scrollable">
        <div class="items">
            {%foreach $banner as $item%}
                <a href="{%$item.url%}">
                    <img src="{%$item.pic%}">
                </a>
            {%/foreach%}
        </div>
    </div>
    <div class="navi navi-pre">
        <a href="javascript:;"></a>
    </div>
    <div class="navi navi-next">
        <a href="javascript:;"></a>
    </div>
    <ul class="scroll-point">
        {%foreach $banner as $item%}
            <li {%if $item@index == 0%}class="cur"{%/if%}></li>
        {%/foreach%}
    </ul>
</section>