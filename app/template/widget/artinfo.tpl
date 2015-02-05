<div class="m-artinfo">
    <a class="pic-box" href="/pages/art?itemId={%$item.itemId%}" target="_blank">
        <img src="{%$item.pic%}"></img>
        <div class="pic-intro">
            <div class="opt">
                <span class="share"><i class="common-icons-art-share"></i>{%$item.shareNum%}</span>
                <span class="like"><i class="common-icons-art-like"></i>{%$item.collectNum%}</span>
            </div>
            <div class="deal">成交量<span>{%$item.saleNum%}</span></div>
        </div>
    </a>
    <a href="/pages/art?itemId={%$item.itemId%}" class="product-title" target="_blank">{%$item.itemName%}</a>
    <a href="/pages/art?itemId={%$item.itemId%}" class="product-content" >{%$item.summary%}</a>
</div>