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
<script type="text/javascript">
    YY.context('ds-uid','{%$data.data.uid%}');
</script>