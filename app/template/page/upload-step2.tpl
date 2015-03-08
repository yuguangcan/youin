{%*选择定制艺术品*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
选择定制艺术品
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/upload-step2.css -->
<link rel="stylesheet" href="/static/styles/page/upload-step2.css"/>
<!-- endbuild -->
{%/block%}

{%block name="content"%}
	<div class="content-inner">
		<section class="upload-nav">
			<span>1.上传新作品&nbsp;&nbsp;&nbsp;&nbsp;>>&nbsp;&nbsp;&nbsp;&nbsp;</span>
			<span  class="cur">2.选择定制艺术品</span>
		</section>
		<form id="upload-form" method="post" action="/mall/item/add">
			<section class="atr-title clearfix">
				<img src="{%$data.data.pic%}">
				<div>
					<p class="title">{%$data.data.itemName%}</p>
					<p class="author">设计师：{%$data.data.author%}</p>
					<p class="description">{%$data.data.summary%}</p>
					<input type="hidden" name="itemName" value="{%$data.data.itemName%}"></input>
					<input type="hidden" name="summary" value="{%$data.data.summary%}"></input>
					<input type="hidden" name="pic" value="{%$data.data.pic%}"></input>
					<input type="hidden" name="price" value="{%$data.data.price%}"></input>
					<input type="hidden" name="tagId" value="{%$data.data.tagId%}"></input>
				</div>
			</section>
			<section class="art-list">
				<div class="title">可选以下艺术品，请上传相应尺寸图片定制<a href="javascript:;" id="skip">跳过</a></div>
				<ul class="upload-list clearfix">
					{%foreach $data.data.products as $item%}
					<li data-pid="{%$item.id%}">
						<img data-src="/static/youin/images/art-bg-{%$item.id%}.jpg" src="/static/youin/images/art-bg-{%$item.id%}.jpg">
						<div class="upload">
							<a href="javascript:;"><img src="/static/youin/images/loading.gif"></img><b>上传一张图</b></a>
							{%if $item.id == 3 || $item.id == 4 || $item.id == 5 || $item.id == 6 || $item.id == 17 || $item.id == 18 || $item.id == 19 || $item.id == 20 %}
							<input type="file" accept="image/png" id="upload{%$item.id%}" name="file"></input>
							{%else%}
							<input type="file" accept="image/jpg,image/png" id="upload{%$item.id%}" name="file"></input>
							{%/if%}
							<div>{%$item.name%}</div>
						</div>
						<div class="upload-done">
							<a href="javascript:;">上传成功</a>
							<div class="clearfix">
								<span class="upload-file">img.img</span>
								<span class="upload-delete">删除 X</span>
							</div>
						</div>
					</li>
					{%/foreach%}
				</ul>
				<input type="hidden" name="product" id="product-value"></input>
			</section>
		</form>
		<section class="clearfix">
			<a href="javascript:;" id="submit">确定</a>
			<a href="javascript:history.go(-1);" id="back">返回修改</a>
		</section>
	</div>
{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/upload-step2.js -->
<script src="static/scripts/base/ajaxfileupload.js"></script>
<script src="static/scripts/page/upload-step2.js"></script>
<!-- endbuild -->
{%/block%}