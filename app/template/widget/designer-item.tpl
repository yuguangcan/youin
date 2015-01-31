<div class="m-designer-item">
	<div class="ds-photo">
		<a href="/user/card?uid={%$designer.uid%}" target="_blank">
			<img src="{%$designer.avatar%}" class="photo">
		</a>
	</div>
	<div class="intro" data-uid="{%$designer.uid%}">
		<a class="name" href="/user/card?uid={%$designer.uid%}" target="_blank">{%$designer.uname%}</a>
		<p>{%$designer.mark%}</p>
		{%if $designer.type == 1%}
			{%if $designer.followStatus == 1 %}
			<span class="follow-btn followed">取消关注</span>
			{%else%}
			<span class="follow-btn follow">关注</span>
			{%/if%}
		{%/if%}
		<span>粉丝 <b>{%$designer.followedNum%}</b></span>
		<span>作品 {%$designer.itemNum%}</span>
	</div>
	{%if $type != 'followers'%}
	<div class="product">
		<a href="/user/card?uid={%$designer.uid%}" target="_blank">
			{%foreach $designer.itemList as $pic %}
				<img src="{%$pic.pic%}">
			{%/foreach%}
			{%include file="youin/widget/more.tpl"%}
		</a>
	</div>
	{%/if%}
</div>

