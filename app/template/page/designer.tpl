{%*设计师空间*%}
{%extends file="youin/layout/layout.tpl"%}

{%block name="title"%}
设计师空间
{%/block%}

{%block name="css"%}

<!-- build:css(.tmp) /static/youin/styles/page/designer.css -->
<link rel="stylesheet" href="static/styles/page/designer.css"/>
<!-- endbuild -->
{%/block%} 

{%block name="content"%}
<section class="ds-header">
<div class="ds-header-cover"></div>
    <div class="product-list">
        <p>近期成交作品<span>详情</span></p>
        <p>商品/数量/总价/成交日期</p>
        <ol>
            <li>1.不在逆袭就在逆袭路上/2/88/20140914</li>
            <li>2.后会无期/2/88/20140914</li>
            <li>3.阿根廷别为我哭泣/2/88/20140914</li>
            <li>4.绚彩抱枕/2/88/20140914</li>
            <li>5.不在逆袭就在逆袭路上/2/88/20140914</li>
        </ol>
    </div>
    <div class="ds-inform">
        <div class="ds-photo">
            <div class="photo-wrap">
                    <img src="/static/youin/images/ds-photo.jpg" class="photo"></img>
            </div>
        </div>
        <div class="ds-username">{%$data.data.uname%}</div>
        <div class="ds-intro">{%$data.data.mark%}</div>
    </div>
    <div class="ds-counter">
        <table>
            <tbody>
                <tr>
                    <td>
                        <span>{%$data.data.itemNum%}</span>
                        <p>作品</p>
                    </td>
                    <td>
                        <span>{%$data.data.followingNum%}</span>
                        <p>粉丝</p>
                    </td>
                    <td>
                        <span>{%$data.data.followedNum%}</span>
                        <p>关注</p>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="ds-operation">
    <div class="button op-button-1">修改资料</div>
    <div class="button op-button-2">上传作品</div>
    </div>
</section>

<section class="product">
    <p>编辑/排序</p>
    <ul class="items clearfix">
        <li class="item">
            <a class="pic-box" href="###">
                <img src="/static/youin/images/product4.jpg"></img>
                <div class="pic-intro">
                    <div class="opt">
                        <span class="share"><i class="designer-icons-share"></i>369</span>
                        <span class="like"><i class="designer-icons-like"></i>2578</span>
                    </div>
                    <div class="deal">成交量<span>2578</span></div>
                </div>
            </a>
            <a href="###" class="product-title">意大利米兰绚彩挂钟</a>
            <a href="###" class="product-content">静音时尚艺术壁钟时钟石英钟，全静音设计，无闹钟和正点报时功能</a>
        </li>
        <li class="item">
            <a class="pic-box" href="###">
                <img src="/static/youin/images/product4.jpg"></img>
                <div class="pic-intro">
                    <div class="opt">
                        <span class="share"><i class="designer-icons-share"></i>369</span>
                        <span class="like"><i class="designer-icons-like"></i>2578</span>
                    </div>
                    <div class="deal">成交量<span>2578</span></div>
                </div>
            </a>
            <a href="###" class="product-title">意大利米兰绚彩挂钟</a>
            <a href="###" class="product-content">静音时尚艺术壁钟时钟石英钟，全静音设计，无闹钟和正点报时功能</a>
        </li>
        <li class="item">
            <a class="pic-box" href="###">
                <img src="/static/youin/images/product4.jpg"></img>
                <div class="pic-intro">
                    <div class="opt">
                        <span class="share"><i class="designer-icons-share"></i>369</span>
                        <span class="like"><i class="designer-icons-like"></i>2578</span>
                    </div>
                    <div class="deal">成交量<span>2578</span></div>
                </div>
            </a>
            <a href="###" class="product-title">意大利米兰绚彩挂钟</a>
            <a href="###" class="product-content">静音时尚艺术壁钟时钟石英钟，全静音设计，无闹钟和正点报时功能</a>
        </li>
        <li class="item">
            <a class="pic-box" href="###">
                <img src="/static/youin/images/product4.jpg"></img>
                <div class="pic-intro">
                    <div class="opt">
                        <span class="share"><i class="designer-icons-share"></i>369</span>
                        <span class="like"><i class="designer-icons-like"></i>2578</span>
                    </div>
                    <div class="deal">成交量<span>2578</span></div>
                </div>
            </a>
            <a href="###" class="product-title">意大利米兰绚彩挂钟</a>
            <a href="###" class="product-content">静音时尚艺术壁钟时钟石英钟，全静音设计，无闹钟和正点报时功能</a>
        </li>
        <li class="item">
            <a class="pic-box" href="###">
                <img src="/static/youin/images/product4.jpg"></img>
                <div class="pic-intro">
                    <div class="opt">
                        <span class="share"><i class="designer-icons-share"></i>369</span>
                        <span class="like"><i class="designer-icons-like"></i>2578</span>
                    </div>
                    <div class="deal">成交量<span>2578</span></div>
                </div>
            </a>
            <a href="###" class="product-title">意大利米兰绚彩挂钟</a>
            <a href="###" class="product-content">静音时尚艺术壁钟时钟石英钟，全静音设计，无闹钟和正点报时功能</a>
        </li>
        <li class="item">
            <a class="pic-box" href="###">
                <img src="/static/youin/images/product4.jpg"></img>
                <div class="pic-intro">
                    <div class="opt">
                        <span class="share"><i class="designer-icons-share"></i>369</span>
                        <span class="like"><i class="designer-icons-like"></i>2578</span>
                    </div>
                    <div class="deal">成交量<span>2578</span></div>
                </div>
            </a>
            <a href="###" class="product-title">意大利米兰绚彩挂钟</a>
            <a href="###" class="product-content">静音时尚艺术壁钟时钟石英钟，全静音设计，无闹钟和正点报时功能</a>
        </li>
        <li class="item">
            <a class="pic-box" href="###">
                <img src="/static/youin/images/product4.jpg"></img>
                <div class="pic-intro">
                    <div class="opt">
                        <span class="share"><i class="designer-icons-share"></i>369</span>
                        <span class="like"><i class="designer-icons-like"></i>2578</span>
                    </div>
                    <div class="deal">成交量<span>2578</span></div>
                </div>
            </a>
            <a href="###" class="product-title">意大利米兰绚彩挂钟</a>
            <a href="###" class="product-content">静音时尚艺术壁钟时钟石英钟，全静音设计，无闹钟和正点报时功能</a>
        </li>
        <li class="item">
            <a class="pic-box" href="###">
                <img src="/static/youin/images/product4.jpg"></img>
                <div class="pic-intro">
                    <div class="opt">
                        <span class="share"><i class="designer-icons-share"></i>369</span>
                        <span class="like"><i class="designer-icons-like"></i>2578</span>
                    </div>
                    <div class="deal">成交量<span>2578</span></div>
                </div>
            </a>
            <a href="###" class="product-title">意大利米兰绚彩挂钟</a>
            <a href="###" class="product-content">静音时尚艺术壁钟时钟石英钟，全静音设计，无闹钟和正点报时功能</a>
        </li>
    </ul>
</section>
{%/block%}