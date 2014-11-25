{%*商品详情*%}

{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
商品详情
{%/block%}

{%block name="css"%}
<!-- build:css(.tmp) /static/youin/styles/page/product.css -->
<link rel="stylesheet" href="/static/styles/page/product.css"/>
<!-- endbuild -->
{%/block%}

{%block name="content"%}
	<section class="product">
		<div class="product-img">
			<div id="magnifier-img">
				<img src="/static/youin/images/product3.jpg">
				<div></div>
			</div>
			<div id="magnifier"><img src=""></div>
			<ul class="clearfix">
				<li class="cur">
					<img src="/static/youin/images/product3.jpg">
				</li>
				<li>
					<img src="/static/youin/images/product4.jpg">
				</li>
				<li>
					<img src="/static/youin/images/product5.jpg">
				</li>
				<li>
					<img src="/static/youin/images/product4.jpg">
				</li>
				<li>
					<img src="/static/youin/images/product5.jpg">
				</li>
			</ul>
		</div>
		<div class="product-info">
			<h2>寂寞的夜</h2>
			<div class="product-detail">
				<div class="author">
					<img src="/static/youin/images/ds-photo.jpg">
					<p class="name">yongge</p>
					<div class="clearfix"><span>作品</span><span>26</span></div>
					<div class="clearfix"><span>粉丝</span><span>2623</span></div>
					<a href="javascript:;">+关注</a>
				</div>
				<div class="info-item mt-20">
					<span class="label">价格：</span><div class="price">￥168</div>
				</div>
				<div class="info-item mb-10">
					<ul class="attr-list clearfix">
		                <li class="cur">30cm*30cm<i></i></li>
		                <li>30cm*30cm<i></i></li>
		                <li>30cm*30cm<i></i></li>
		            </ul>
					<span class="label">尺寸：</span>
				</div>
				<div class="info-item mb-10">
					<ul class="attr-list clearfix">
		                <li class="cur">白色<i></i></li>
		                <li>蓝色<i></i></li>
		                <li>灰色<i></i></li>
		            </ul>
					<span class="label">颜色：</span>
				</div>
				<div class="info-item">
					<span class="label">购买数量：</span>
					<div class="add-minus" id="add-minus">
			            <span class="minus">-</span>
			            <input type="text" value="1" id="count"></input>
			            <span class="add">+</span>
			        </div>
			        <span class="notice">(库存10件)</span>
				</div>
				<div class="opt clearfix">
					<a href="javascript:;" class="add-cart"><i class="product-icons-cart"></i>加入购物车</a>
					<a href="javascript:;" class="like-btn"><i class="product-icons-like"></i>收藏</a>
				</div>
			</div>
		</div>
	</section>

	<section class="relate-product">
		<h2>相关艺术品</h2>
		<ul class="clearfix">
			<li>
				<img src="/static/youin/images/product5.jpg">
			</li>
			<li>
				<img src="/static/youin/images/product5.jpg">
			</li>
			<li>
				<img src="/static/youin/images/product5.jpg">
			</li>
			<li>
				<img src="/static/youin/images/product5.jpg">
			</li>
		</ul>
	</section>

	<section class="relate-buy">
		<h2>相关购买</h2>
		<ul class="clearfix">
			<li>
			    <a href="###">
			        <img src="/static/youin/images/product3.jpg"></img>
			        {%include file="youin/widget/productinfo.tpl"%}
			    </a>
			</li>
			<li>
			    <a href="###">
			        <img src="/static/youin/images/product3.jpg"></img>
			        {%include file="youin/widget/productinfo.tpl"%}
			    </a>
			</li>
			<li>
			    <a href="###">
			        <img src="/static/youin/images/product3.jpg"></img>
			        {%include file="youin/widget/productinfo.tpl"%}
			    </a>
			</li>
			<li>
			    <a href="###">
			        <img src="/static/youin/images/product3.jpg"></img>
			        {%include file="youin/widget/productinfo.tpl"%}
			    </a>
			</li>
		</ul>
	</section>
{%/block%}

{%block name="js"%}

<!-- build:js /static/youin/scripts/page/product.js -->
<script src="static/scripts/page/product.js"></script>
<!-- endbuild -->
{%/block%}