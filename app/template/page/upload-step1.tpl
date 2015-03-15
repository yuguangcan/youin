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
			<form id="upload-form" method="post" action="/pages/upload_2">
				<div class="input-item clearfix">
					<span>标题</span>
					<input type="text" placeholder="请输入作品名称" id="title" name="itemName"></input>
				</div>
				<div class="input-item clearfix">
					<span>描述</span>
					<textarea placeholder="请输入作品描述" id="summary" name="summary"></textarea>
				</div>
				<div class="input-item clearfix">
					<ul class="taglist" id="taglist">
						{%foreach $data.data.tags as $tag%}
							<li data-tid="{%$tag.tagId%}" class="{%if $tag@index > 7 %}no-top {%/if%}{%if ( not $tag@index ==0 && $tag@index is div by 7 ) || $tag@last %}has-border-right{%/if%}">{%$tag.tagName%}</li>
						{%/foreach%}
					</ul>
					<span>标签</span>
					<input type="hidden" name="tagId" id="tagid"></input>
				</div>
				<div class="input-item clearfix">
					<span></span>
					<div class="upload">
						<a href="javascript:;" id="upload"><img src="/static/youin/images/loading.gif"></img><b>上传一张图</b></a>
						<input type="file" id="file" name="file" accept="image/png, image/jpeg"></input>
						<div>请上传分辨率300DPI以上，大小在2MB-50MB之间的JPEG/PNG图片（支持RGB和CMYK格式）。</div>
					</div>
					<div class="upload-done">
						<a href="javascript:;">上传成功</a>
						<div class="clearfix">
							<span id="upload-file">img.img</span>
							<span id="upload-delete">删除 X</span>
						</div>
						<input type="hidden" id="upload-file-hidden" name="pic"></input>
					</div>
				</div>
				<div class="input-item clearfix">
					<span>定价</span>
					<!-- <div class="add-minus" id="add-minus">
			            <span class="minus">-</span>
			            <input type="text" value="1" id="price" name="price"></input>
			            <span class="add">+</span>
			        </div> -->
			        <table id="price-count">
			        	<tr>
			        		<th>商品</th>
			        		<th>基础价格(元)</th>
			        		<th>您的收益(元)</th>
			        		<th>最终售价(元)</th>
			        	</tr>
			        	<tr>
			        		<td>X-Large 40x28</td>
			        		<td>12</td>
			        		<td><input type="text" value="10" class="price-count-benefit"></input></td>
			        		<td><input type="text" value="22" class="price-count-final"></input></td>
			        	</tr>
			        	<tr>
			        		<td>XL-Large 60x58</td>
			        		<td>20</td>
			        		<td><input type="text" value="10" class="price-count-benefit"></input></td>
			        		<td><input type="text" value="30" class="price-count-final"></input></td>
			        	</tr>
			        </table>
				</div>
				<div class="clearfix">
					<a href="javascript:;" id="submit">下一步</a>
				</div>
			</form>
		</section>
	</div>
{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/upload-step1.js -->
<script src="static/scripts/base/ajaxfileupload.js"></script>
<script src="static/scripts/page/upload-step1.js"></script>
<!-- endbuild -->
{%/block%}