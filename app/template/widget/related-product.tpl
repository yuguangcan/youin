{%if $productlist|count > 0%}
<section class="m-related-product">
	<h2>热销艺术品</h2>
	<ul class="clearfix">
		{%foreach $productlist as $item%}
			<li>
			    <a href="javascript:;" target="_blank">
			        <img src="{%$item.pic%}"></img>
			        {%include file="youin/widget/productinfo.tpl" product=$item%}
			    </a>
			</li>
		{%/foreach%}
	</ul>
</section>
{%/if%}