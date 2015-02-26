{%if $productlist|count > 0%}
<section class="m-related-product">
	<h2>相关购买</h2>
	<ul class="clearfix">
		{%foreach $productlist as $item%}
			<li>
			    <a href="/mall/item/detail?itemId={%$item.itemId%}" target="_blank">
			        <img src="{%$item.pic%}"></img>
			        {%include file="youin/widget/productinfo.tpl" product=$item%}
			    </a>
			</li>
		{%/foreach%}
	</ul>
</section>
{%/if%}