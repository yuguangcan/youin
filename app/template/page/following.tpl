{%*已关注的设计师*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
已关注的设计师
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/follow.css -->
<link rel="stylesheet" href="/static/styles/page/follow.css"/>
<!-- endbuild -->
{%/block%}

{%block name="content"%}
<ul class="following-followers-like clearfix">
	<li><a href="javascript:;" class="active">已关注的设计师（{%$data.userInfo.followingNum%}人）</a></li>
	<li><a href="/follow/follow/fanslist">我的粉丝（{%$data.userInfo.followedNum%}人）</a></li>
	<li><a href="/mall/collect/getlist">我的收藏（{%$data.userInfo.collectNum%}件）</a></li>
</ul>

<ul class="user-list">
	<li>
		{%foreach $data.data.list as $item%}
			{%include file="youin/widget/designer-item.tpl" designer=$item%}
		{%/foreach%}
	</li>
</ul>

<!-- {%include file="youin/widget/page.tpl"%} -->
{%/block%}

{%block name="js"%}
<!-- build:js /static/youin/scripts/page/follow.js -->
<script src="static/scripts/page/follow.js"></script>
<!-- endbuild -->
{%/block%}
