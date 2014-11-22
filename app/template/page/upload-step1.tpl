{%*上传作品*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
上传新作品
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/upload-step1.css -->
<link rel="stylesheet" href="/static/styles/page/upload-step1.css"/>
<!-- endbuild -->
{%/block%}

{%block name="content"%}
	<div class="content-inner">
		<section class="upload-nav">
			<span class="cur">1.上传新作品&nbsp;&nbsp;&nbsp;&nbsp;>>&nbsp;&nbsp;&nbsp;&nbsp;</span>
			<span>2.选择定制艺术品</span>
		</section>
		<section>
			<div class="input-item clearfix">
				<span>标题</span>
				<input type="text" placeholder="请输入作品名称" id="title"></input>
			</div>
			<div class="input-item clearfix">
				<span>描述</span>
				<textarea placeholder="请输入作品描述" id="description"></textarea>
			</div>
			<div class="input-item clearfix">
				<ul class="taglist" id="taglist">
					<li class="selected">万能</li>
					<li>人物</li>
					<li>抽象</li>
					<li>数码</li>
					<li>游戏</li>
					<li>美食</li>
					<li>电影</li>
					<li class="has-border-right">音乐</li>
					<li class="no-top">数码</li>
					<li class="no-top">游戏</li>
					<li class="no-top">美食</li>
					<li class="no-top">电影</li>
					<li class="no-top has-border-right">音乐</li>
				</ul>
				<span>标签</span>
			</div>
			<div class="input-item clearfix">
				<span></span>
				<div class="upload">
					<a href="javascript:;" id="upload">上传一张图</a>
					<input type="file" id="pic" accept="image/*"></input>
					<div>请上传您最高质量的JPEG图片，我们帮您制作成精美的有框画和无框画。（请不要上传重复作品）</div>
				</div>
				<div class="upload-done">
					<a href="javascript:;">上传成功</a>
					<div class="clearfix">
						<span id="upload-file">img.img</span>
						<span id="upload-delete">删除 X</span>
					</div>
				</div>
			</div>
			<div class="input-item clearfix">
				<span>定价</span>
				<div class="add-minus" id="add-minus">
		            <span class="minus">-</span>
		            <input type="text" value="1" id="price"></input>
		            <span class="add">+</span>
		        </div>
			</div>
		</section>
		<section class="clearfix">
			<a href="javascript:;" id="submit">下一步</a>
		</section>
	</div>
{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/upload-step1.js -->
<script src="static/scripts/page/upload-step1.js"></script>
<!-- endbuild -->
{%/block%}