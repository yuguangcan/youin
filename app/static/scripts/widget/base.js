YY.base = {
    init : function(){
        this._initHeader();
    	this._initGotop();
        this._initLogin();
        this._initUcenter();
        this._initProductInfo();
    },
    _initLogin : function(){
        function Login(){
            this.loginOverlay = $('#login-overlay');
            this.loginPopup = $('#login-popup');
            this.loginLogin = $('#login-login');
            this.loginRegister = $('#login-register');
            this.loginIntro = $('#login-intro-designer');
            var _self = this;
            if(Cookies.get('youin_uid')){
                _self.loginLogin.find('input[name="account"]').val(Cookies.get('youin_uid'));
            }
            this.loginLogin.find('h2 a').click(function(){
                _self.showRegester();
            });
            this.loginRegister.find('h2 a').click(function(){
                _self.showLogin();
            });
            $('#login-submit').click(function(e){
                e.preventDefault();
                var form = $(this).parents('form'),
                    account = $.trim(form.find('input[name="account"]').val()),
                    password = $.trim(form.find('input[name="password"]').val()),
                    error = form.find('.error');
                error.removeClass('show').html("");
                if(account == ""){
                    //error.html('请输入用户名').addClass('show');
                    alert('请输入用户名');
                    form.find('input[name="account"]').get(0).focus();
                    return;
                }
                if(password == ""){
                    //error.html('请输入密码').addClass('show');
                    alert('请输入密码');
                    form.find('input[name="password"]').get(0).focus();
                    return;
                }
                $.post('/login/checkin',{
                    account : account,
                    password : password
                },function(resp){
                    if(resp.indexOf('errno') != -1){
                        alert('用户名或密码错误');
                    }else{
                        Cookies.set('youin_uid',account,{ expires: 30 });
                        window.location.reload(true);
                    }
                });
            });
            $('#register-submit').click(function(e){
                e.preventDefault();
                var form = $(this).parents('form'),
                    account = $.trim(form.find('input[name="account"]').val()),
                    password = $.trim(form.find('input[name="password"]').val()),
                    password2 = $.trim(form.find('input[name="password2"]').val()),
                    mail = $.trim(form.find('input[name="mail"]').val()),
                    check = $('#register-term'),
                    error = form.find('.error');
                error.removeClass('show').html("");
                if(account == ""){
                    //error.html('请输入用户名').addClass('show');
                    alert('请输入用户名');
                    form.find('input[name="account"]').get(0).focus();
                    return;
                }
                if(!/^[\w|\d|_]{4,20}$/.test(account)){
                    //error.html('用户名仅支持英文、数字、_，长度为4-20位字符').addClass('show');
                    alert('用户名仅支持英文、数字、_，长度为4-20位字符');
                    form.find('input[name="account"]').get(0).focus();
                    return;
                }
                if(password == ""){
                    //error.html('请输入密码').addClass('show');
                    alert('请输入密码');
                    form.find('input[name="password"]').get(0).focus();
                    return;
                }
                if(password.length < 6 ){
                    //error.html('密码不得少于6位').addClass('show');
                    alert('密码不得少于6位');
                    form.find('input[name="password"]').get(0).focus();
                    return;
                }
                if(password != password2){
                    //error.html('两次输入密码不一致，请确认').addClass('show');
                    alert('两次输入密码不一致，请确认');
                    form.find('input[name="password2"]').get(0).focus();
                    return;
                }
                if(mail == ""){
                    //error.html('请输入邮箱地址').addClass('show');
                    alert('请输入邮箱地址');
                    form.find('input[name="mail"]').get(0).focus();
                    return;
                }
                if(!/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test(mail)){
                    //error.html('请输入正确的邮箱地址').addClass('show');
                    alert('请输入正确的邮箱地址');
                    form.find('input[name="mail"]').get(0).focus();
                    return;
                }
                if(!check.get(0).checked){
                    //error.html('请阅读并接受《有印用户协议》').addClass('show');
                    alert('请阅读并接受《有印用户协议》');
                    return;
                }
                $.post('/login/register',{
                    account : account,
                    password : password,
                    password2 : password2,
                    mail : mail
                },function(resp){
                    var data = JSON.parse(resp);
                    if(data && data.errno == 0){
                        alert('注册成功');
                        window.location.reload();
                    }else{
                        alert('注册失败，请稍候重试');
                    }
                });
            });
            $('#login-intro-designer a').click(function(){
                _self.showRegester();
            });
        }
        Login.prototype.show = function(){
            YY.misc.showPopup(this.loginPopup,this.loginOverlay);
        }
        Login.prototype.hide = function(){
            YY.misc.hidePopup(this.loginPopup,this.loginOverlay);
        }
        Login.prototype.showLogin = function(){
            this.loginRegister.hide();
            this.loginIntro.hide();
            this.loginLogin.show();
        }
        Login.prototype.showRegester = function(){
            this.loginLogin.hide();
            this.loginIntro.hide();
            this.loginRegister.show();
        }
        Login.prototype.showIntro = function(){
            this.loginLogin.hide();
            this.loginRegister.hide();
            this.loginIntro.show();
        }

        var loginPopup = new Login();
        $('#login').click(function(){
            loginPopup.show();
            loginPopup.showLogin();
        });
        $('#become-designer').click(function(){
            loginPopup.show();
            loginPopup.showIntro();
        });
    },
    _initUcenter : function(){
        var ucenterPanel = $('#ucenter-panel');
        $('#ucenter').on('mouseenter',function(){
            ucenterPanel.show();
        }).on('mouseleave',function(){
            ucenterPanel.hide();
        });
        $('#logout').click(function(e){
            e.preventDefault();
            $.post('/login/checkout',{},function(){
                window.location.reload(true);
            });
        });
    },
    _initHeader: function(){
    	$('#header .sub-nav-href').click(function(e){
            e.preventDefault();
            e.stopPropagation();
    		location.href = $(this).data('href');
    	}).on('mouseenter',function(e){
            if($(this).find('.sub-sub-nav').length > 0){
                $(this).find('.sub-sub-nav').show();
            }
        }).on('mouseleave',function(e){
            if($(this).find('.sub-sub-nav').length > 0){
                $(this).find('.sub-sub-nav').hide();
            }
        });
    },
    _initGotop : function(){
    	var gotop = $('#gotop'),
            gotopIcon = $('#gotop i');
    	$(window).on('scroll',function(){
    		if ($(window).scrollTop() > $(window).height() * 2){
    			gotop.show();
    		}else{
    			gotop.hide();
    		}
    	});
    	gotopIcon.click(function(){
    		$('body').animate({
    			scrollTop : 0
    		},300);
    	});
    },
    _initProductInfo : function(){
        $('body').on('click','.m-productinfo .like',function(e){
            e.preventDefault();
            var _this = $(this),
                parent = _this.parents('.m-productinfo'),
                pid = parent.attr('data-pid');
            $.post('/mall/collect/add?itemId='+pid,function(resp){
                var data = JSON.parse(resp);
                if(data && data.errno == 0){
                    _this.removeClass('like').addClass('liked').find('span').html('取消收藏');
                    YY.misc.changeLike(true);
                }else{
                    alert('收藏失败，请稍候再试');
                }
            });
        }).on('click','.m-productinfo .liked',function(e){
            e.preventDefault();
            var _this = $(this),
                parent = _this.parents('.m-productinfo'),
                pid = parent.attr('data-pid');
            $.post('/mall/collect/del?id='+pid,function(resp){
                var data = JSON.parse(resp);
                if(data && data.errno == 0){
                    _this.removeClass('liked').addClass('like').find('span').html('收藏');
                    YY.misc.changeLike(false);
                }else{
                    alert('取消收藏失败，请稍候再试');
                }
            });
        }).on('click','.m-productinfo .title, .m-productinfo .detail',function(e){
            var pid = $(this).parents('.m-productinfo').attr("data-pid");
            window.location.href = "/mall/item/detail?itemId=" + pid;
        }).on('click','.m-productinfo .user',function(e){
            window.location.href = "/user/card?uid=" + $(this).data('uid');
        });

    }
    
}
$(function(){
	YY.base.init();
});
