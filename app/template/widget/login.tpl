<div id="login-overlay"></div>
<div id="login-popup">
    <i class="common-icons-popup-close close"></i>
    <ul>
        <li id="login-login">
            <h2>会员登录<span>还没有账号</span><a href="javascript:;">立即注册</a></h2>
            <form id="login-form" name="login-form" method="post" action="/login/checkin" class="clearfix">
                <div class="input-box">
                    <input type="text" name="account" placeholder="请输入用户名"></input>
                </div>
                <div class="input-box">
                    <input type="password" name="password" placeholder="请输入登录密码"></input>
                </div>
                <input type="submit" class="submit" id="login-submit" value="登录"></input>
                <span class="error"></span>
            </form>
        </li>
        <li id="login-register">
            <h2>欢迎注册<span>已有账号</span><a href="javascript:;">立即登录</a></h2>
            <form id="register-form" name="register-form" method="post" action="/login/register" class="clearfix">
                <div class="input-box">
                    <input type="text" name="account" placeholder="请输入用户名"></input>
                </div>
                <div class="input-box">
                    <input type="password" name="password" placeholder="请输入密码"></input>
                </div>
                <div class="input-box">
                    <input type="password" name="password2" placeholder="请再次输入密码"></input>
                </div>
                <div class="input-box">
                    <input type="text" name="mail" placeholder="请输入常用邮箱"></input>
                </div>
                <input type="checkbox" id="register-term"></input>
                <label for="register-term">我已阅读并接受《有印用户协议》</label>
                <div>
                    <input type="submit" class="submit" id="register-submit" value="注册"></input>
                    <span class="error"></span>
                </div>
            </form>
        </li>
        <li id="login-intro-designer">
            <h2>如何成为设计师</h2>
            <div class="intro-box">
                <p>在有印，只为自己创作！</p>
                <p>免费注册成为有印设计师，在网站上传自己的原创艺术作品，即可为自己建立一个“云工厂”，将作品转变成装饰画、家居用品、数码保护壳、服装等产品，在网站宣传、生产、销售，获得利润。</p>
                <p>这里同时是一个展示自我的平台，可以关联其他社交网站，与所有人分享自己的作品，认识更多志同道合的朋友。</p>
            </div>
            <a href="javascript:;">我知道了，去注册</a>
        </li>
    </ul>
</div>