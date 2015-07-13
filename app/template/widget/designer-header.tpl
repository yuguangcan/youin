<section class="m-ds-header">
    <div class="ds-header-cover"></div>
    <div class="ds-header-inner">
        <div class="ds-inform">
            <div class="ds-photo">
                <img src="{%$data.data.avatar%}" class="photo"></img>
            </div>
            <div class="ds-username">{%$data.data.uname%}</div>
            <div class="ds-intro">{%$data.data.mark%}</div>
        </div>
        {%if $data.data.uid == $data.userInfo.uid %}
        <div class="ds-cash">
            <div>{%$data.userInfo.myMoney%}元</div>
            <p>我的收入{%if $data.userInfo.myMoney < 100%}(小于100元无法提现){%/if%}</p>
        </div>
        <a class="ds-cash-out {%if $data.userInfo.myMoney < 100%}cash-none{%/if%}" href="javascript:;">提现</a>
        {%/if%}
        <div class="ds-counter">
            <table>
                <tbody>
                    <tr>
                        <td>
                            <span>{%$data.data.itemNum%}</span>
                            <p>作品</p>
                        </td>
                        <td>
                            <span id="follower-num">{%$data.data.followedNum%}</span>
                            <p>粉丝</p>
                        </td>
                        <td>
                            <span>{%$data.data.followingNum%}</span>
                            <p>关注</p>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="ds-operation">
            {%if $data.data.uid == $data.userInfo.uid %}
                {%if $data.userInfo.type == 0%}
                <a class="button change-profile" href="javascript:;">修改资料</a>
                <a class="button" href="/user/newdesigner">1元成为设计师</a>
                {%elseif $data.userInfo.type == 1%}
                <a class="button change-profile" href="javascript:;">修改资料</a>
                <a class="button" href="/pages/upload_1">上传作品</a>
                {%/if%}
            {%else%}
                {%if $data.data.followStatus == 1%}
                <div class="button followed">取消关注</div>
                {%else%}
                <div class="button follow">关注</div>
                {%/if%}
            {%/if%}
        </div>
    </div>
    <div class="ds-header-change-inner">
        <div class="ds-inform">
            <div class="ds-photo">
                <img class="photo"></img>
                <i class="common-icons-avatar-placeholder"></i>
                <input type="hidden" id="upload-avatar-hidden" name="pic"></input>
            </div>
            <input type="text" class="ds-username-input" value="{%$data.data.uname%}" placeholder="用户名"></input>
            <textarea class="ds-intro-input" placeholder="简介（不超过40字符）"></textarea>
            <input type="file" id="avatar-file" name="file" accept="image/*"></input>
        </div>
        <div class="ds-operation">
            <div class="button avatar-cancel">取消</div>
            <div class="button avatar-save">保存修改</div>
        </div>
    </div>
</section>
{%if $data.data.uid == $data.userInfo.uid %}
<div id="cash-overlay"></div>
<div id="cash-popup">
    <i class="common-icons-popup-close close"></i>
    <div id="cash-popup-input">
        <h2>请输入提现信息：</h2>
        <form id="cash-form" name="cash-form" method="post" action="/user/getmoney" class="clearfix">
            <div class="input-box">
                <input type="text" name="people" placeholder="姓名"></input>
            </div>
            <div class="input-box">
                <input type="text" name="account" placeholder="支付宝账号"></input>
            </div>
            <div class="input-box">
                <input type="tel" name="phone" placeholder="电话"></input>
            </div>
            <input type="submit" class="submit" id="cash-submit" value="提现"></a>
        </form>
    </div>
    <div id="cash-popup-confirm">
        <h2>请确认提现信息：</h2>
        <div class="confirm-box">
            <span>姓名：</span><b id="confirm-box-people"></b>
        </div>
        <div class="confirm-box">
            <span>支付宝账号：</span><b id="confirm-box-account"></b>
        </div>
        <div class="confirm-box">
            <span>电话：</span><b id="confirm-box-phone"></b>
        </div>
        <input class="submit submit-cancel" id="cash-submit-cancel" value="取消"></a>
        <input class="submit" id="cash-submit-final" value="确认提现"></a>
    </div>
    
</div>
{%/if%}
<script type="text/javascript">
    YY.context('ds-uid','{%$data.data.uid%}');
</script>