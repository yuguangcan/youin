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
					<li data-pid="1">
						<img data-src="/static/youin/images/art-bg-1.jpg" src="/static/youin/images/art-bg-1.jpg">
						<div class="upload">
							<a href="javascript:;">上传一张图</a>
							<input type="file" accept="image/jpeg" id="upload1" name="file"></input>
							<div>请上传您最高质量的JPEG图片（RGB）。尺寸要求为3500px（宽）*3500px（高）</div>
						</div>
						<div class="upload-done">
							<a href="javascript:;">上传成功</a>
							<div class="clearfix">
								<span class="upload-file">img.img</span>
								<span class="upload-delete">删除 X</span>
							</div>
						</div>
					</li>
					<li data-pid="2">
						<img data-src="/static/youin/images/art-bg-1.jpg" src="/static/youin/images/art-bg-1.jpg">
						<div class="upload">
							<a href="javascript:;">上传一张图</a>
							<input type="file" accept="image/jpeg" id="upload2" name="file"></input>
							<div>请上传您最高质量的JPEG图片（RGB）。尺寸要求为3500px（宽）*3500px（高）</div>
						</div>
						<div class="upload-done">
							<a href="javascript:;">上传成功</a>
							<div class="clearfix">
								<span class="upload-file">img.img</span>
								<span class="upload-delete">删除 X</span>
							</div>
						</div>
					</li>
					<li data-pid="9">
						<img data-src="/static/youin/images/art-bg-1.jpg" src="/static/youin/images/art-bg-1.jpg">
						<div class="upload">
							<a href="javascript:;">上传一张图</a>
							<input type="file" accept="image/jpeg" id="upload3" name="file"></input>
							<div>请上传您最高质量的JPEG图片（RGB）。尺寸要求为3500px（宽）*3500px（高）</div>
						</div>
						<div class="upload-done">
							<a href="javascript:;">上传成功</a>
							<div class="clearfix">
								<span class="upload-file">img.img</span>
								<span class="upload-delete">删除 X</span>
							</div>
						</div>
					</li>
					<li data-pid="7">
						<img data-src="/static/youin/images/art-bg-2.jpg" src="/static/youin/images/art-bg-2.jpg">
						<div class="upload">
							<a href="javascript:;">上传一张图</a>
							<input type="file" accept="image/jpeg" id="upload4" name="file"></input>
							<div>请上传您最高质量的JPEG图片（RGB）。尺寸要求为3500px（宽）*3500px（高）</div>
						</div>
						<div class="upload-done">
							<a href="javascript:;">上传成功</a>
							<div class="clearfix">
								<span class="upload-file">img.img</span>
								<span class="upload-delete">删除 X</span>
							</div>
						</div>
					</li>
					<li data-pid="10">
						<img data-src="/static/youin/images/art-bg-3.jpg" src="/static/youin/images/art-bg-3.jpg">
						<div class="upload">
							<a href="javascript:;">上传一张图</a>
							<input type="file" accept="image/jpeg" id="upload5" name="file"></input>
							<div>请上传您最高质量的JPEG图片（RGB）。尺寸要求为3500px（宽）*3500px（高）</div>
						</div>
						<div class="upload-done">
							<a href="javascript:;">上传成功</a>
							<div class="clearfix">
								<span class="upload-file">img.img</span>
								<span class="upload-delete">删除 X</span>
							</div>
						</div>
					</li>
					<li data-pid="10">
						<img data-src="/static/youin/images/art-bg-4.jpg" src="/static/youin/images/art-bg-4.jpg">
						<div class="upload">
							<a href="javascript:;">上传一张图</a>
							<input type="file" accept="image/jpeg" id="upload6" name="file"></input>
							<div>请上传您最高质量的JPEG图片（RGB）。尺寸要求为3500px（宽）*3500px（高）</div>
						</div>
						<div class="upload-done">
							<a href="javascript:;">上传成功</a>
							<div class="clearfix">
								<span class="upload-file">img.img</span>
								<span class="upload-delete">删除 X</span>
							</div>
						</div>
					</li>
					<li data-pid="6">
						<img data-src="/static/youin/images/art-bg-5.jpg" src="/static/youin/images/art-bg-5.jpg">
						<div class="upload">
							<a href="javascript:;">上传一张图</a>
							<input type="file" accept="image/jpeg" id="upload7" name="file"></input>
							<div>请上传您最高质量的JPEG图片（RGB）。尺寸要求为3500px（宽）*3500px（高）</div>
						</div>
						<div class="upload-done">
							<a href="javascript:;">上传成功</a>
							<div class="clearfix">
								<span class="upload-file">img.img</span>
								<span class="upload-delete">删除 X</span>
							</div>
						</div>
					</li>
					<li data-pid="11">
						<img data-src="/static/youin/images/art-bg-6.jpg" src="/static/youin/images/art-bg-6.jpg">
						<div class="upload">
							<a href="javascript:;">上传一张图</a>
							<input type="file" accept="image/jpeg" id="upload8" name="file"></input>
							<div>请上传您最高质量的JPEG图片（RGB）。尺寸要求为3500px（宽）*3500px（高）</div>
						</div>
						<div class="upload-done">
							<a href="javascript:;">上传成功</a>
							<div class="clearfix">
								<span class="upload-file">img.img</span>
								<span class="upload-delete">删除 X</span>
							</div>
						</div>
					</li>
				</ul>
				<input type="hidden" name="product" id="product-value"></input>
			</section>
		</form>
		<section class="clearfix">
			<a href="javascript:;" id="submit">确定</a>
			<a href="javascript:;" id="back">返回修改</a>
		</section>
	</div>
{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/upload-step2.js -->
<script src="static/scripts/base/ajaxfileupload.js"></script>
<script src="static/scripts/page/upload-step2.js"></script>
<!-- endbuild -->
{%/block%}