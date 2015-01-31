<section class="m-ds-header">
    <div class="ds-header-cover"></div>
    <div class="ds-header-inner">
        <div class="ds-inform">
            <div class="ds-photo">
                <div class="photo-wrap">
                    <img src="{%$data.data.avatar%}" class="photo"></img>
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
                <span>我想成为设计师上传作品</span>
                <a class="button" href="###">修改资料</a>
                <a class="button" href="/user/newdesigner">1元成为设计师</a>
                {%elseif $data.userInfo.type == 1%}
                <a class="button" href="###">修改资料</a>
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
</section>