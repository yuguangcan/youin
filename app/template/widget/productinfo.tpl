<div class="m-productinfo" data-pid="{%$product.itemId%}">
	<div class="opt buy"><i class="common-icons-product-buy"></i>购买</div>
	<div class="opt share"><i class="common-icons-product-share"></i>分享</div>
	{%if $product.isCollected == 1%}
		<div class="opt liked"><i></i><span>取消收藏</span></div>
	{%else%}
		<div class="opt like"><i></i><span>收藏</span></div>
	{%/if%}
	<div class="info">
		<p class="title">{%$product.itemName%}</p>
		<span><i class="common-icons-product-share-s"></i>{%$product.shareNum%}</span>
        <span><i class="common-icons-product-like-s"></i>{%$product.collectNum%}</span>
        <p class="detail">{%$product.summary%}</p>
        <div class="user">
        	<img class="avatar" src="{%$product.avatar%}">{%$product.uname%}
        </div>
	</div>
</div>