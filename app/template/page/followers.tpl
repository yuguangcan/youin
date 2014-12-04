{%*我的粉丝*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
我的粉丝
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/follow.css -->
<link rel="stylesheet" href="/static/styles/page/follow.css"/>
<!-- endbuild -->
{%/block%}

{%block name="content"%}
<ul class="following-followers-like clearfix">
	<li>
		<a href="#following">已关注的设计师（37人）</a>
	</li>
	<li>
		<a href="#followers" class="active">我的粉丝（37人）</a>
	</li>
	<li>
		<a href="#like">我的收藏（28件）</a>
	</li>
</ul>
<section class="user-list all clearfix">
	<ul>
		<li class="ds-photo">
			<div class="photo-wrap">
				<img src="/static/youin/images/ds-photo.jpg" class="photo"></div>
		</li>
		<li class="intro">
			<p class="name">永歌</p>
			<p>不在逆袭就在逆袭的路上</p>
			<span class="attent-button on">关注</span>
			<span>粉丝 2544</span>
			<span>作品 44</span>
		</li>
		<li class="product">
			<a href="###">
				<img src="/static/youin/images/product3.jpg"><img src="/static/youin/images/product4.jpg"><img src="/static/youin/images/product3.jpg">{%include file="youin/widget/more.tpl"%}</a>
		</li>
	</ul>
	<ul>
		<li class="ds-photo">
			<div class="photo-wrap">
				<img src="/static/youin/images/ds-photo.jpg" class="photo"></div>
		</li>
		<li class="intro">
			<p class="name">永歌</p>
			<p>不在逆袭就在逆袭的路上</p>
			<span class="attent-button on">关注</span>
			<span>粉丝 2544</span>
			<span>作品 44</span>
		</li>
		<li class="product">
			<a href="###">
				<img src="/static/youin/images/product3.jpg"><img src="/static/youin/images/product4.jpg"><img src="/static/youin/images/product3.jpg">{%include file="youin/widget/more.tpl"%}</a>
		</li>
	</ul>
	<ul>
		<li class="ds-photo">
			<div class="photo-wrap">
				<img src="/static/youin/images/ds-photo.jpg" class="photo"></div>
		</li>
		<li class="intro">
			<p class="name">永歌</p>
			<p>不在逆袭就在逆袭的路上</p>
			<span class="attent-button on">关注</span>
			<span>粉丝 2544</span>
			<span>作品 44</span>
		</li>
		<li class="product">
			<a href="###">
				<img src="/static/youin/images/product3.jpg"><img src="/static/youin/images/product4.jpg"><img src="/static/youin/images/product3.jpg">{%include file="youin/widget/more.tpl"%}</a>
		</li>
	</ul>
	<ul class="last-item">
		<li class="ds-photo">
			<div class="photo-wrap">
				<img src="/static/youin/images/ds-photo.jpg" class="photo"></div>
		</li>
		<li class="intro">
			<p class="name">永歌</p>
			<p>不在逆袭就在逆袭的路上</p>
			<span class="attent-button on">关注</span>
			<span>粉丝 2544</span>
			<span>作品 44</span>
		</li>
		<li class="product">
			<a href="###">
				<img src="/static/youin/images/product3.jpg"><img src="/static/youin/images/product4.jpg"><img src="/static/youin/images/product3.jpg">{%include file="youin/widget/more.tpl"%}</a>
		</li>
	</ul>
</section>
{%include file="youin/widget/page.tpl"%}
{%/block%}