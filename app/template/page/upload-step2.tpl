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
		<section class="atr-title clearfix">
			<img src="/static/youin/images/art.jpg">
			<div>
				<p class="title">寂寞的夜</p>
				<p class="author">设计师：XX</p>
				<p class="description">有印创意工作室网罗世界各地的平面艺术作品（设计师作品插画，摄影作品等），致力于将艺术最大可能的融入我们生活的当下。通过一个艺术交流的网络平台，将这些艺术作品呈现在不同的生活元素中。</p>
			</div>
		</section>
		<section class="art-list">
			<div class="title">可选以下艺术品，请上传相应尺寸图片定制<a href="javascript:;" id="skip">跳过</a></div>
			<ul class="clearfix">
				<li>
					<img src="/static/youin/images/art-bg-1.jpg">
					<div class="upload">
						<a href="javascript:;">上传一张图</a>
						<input type="file" accept="image/*"></input>
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
				<li>
					<img src="/static/youin/images/art-bg-2.jpg">
					<div class="upload">
						<a href="javascript:;">上传一张图</a>
						<input type="file" accept="image/*"></input>
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
				<li>
					<img src="/static/youin/images/art-bg-3.jpg">
					<div class="upload">
						<a href="javascript:;">上传一张图</a>
						<input type="file" accept="image/*"></input>
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
				<li>
					<img src="/static/youin/images/art-bg-4.jpg">
					<div class="upload">
						<a href="javascript:;">上传一张图</a>
						<input type="file" accept="image/*"></input>
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
				<li>
					<img src="/static/youin/images/art-bg-5.jpg">
					<div class="upload">
						<a href="javascript:;">上传一张图</a>
						<input type="file" accept="image/*"></input>
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
				<li>
					<img src="/static/youin/images/art-bg-6.jpg">
					<div class="upload">
						<a href="javascript:;">上传一张图</a>
						<input type="file" accept="image/*"></input>
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
		</section>
		<section class="clearfix">
			<a href="javascript:;" id="submit">确定</a>
			<a href="javascript:;" id="back">返回修改</a>
		</section>
	</div>
{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/upload-step2.js -->
<script src="static/scripts/page/upload-step2.js"></script>
<!-- endbuild -->
{%/block%}