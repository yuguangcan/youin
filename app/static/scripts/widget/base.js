YY.base = {
    init : function(){
        this._initHeader();
    	this._initGotop();
        this._initLogin();
        this._initUcenter();
        this._initLike();
    },
    _initLogin : function(){
        function Login(){
            this.loginOverlay = $('#login-overlay');
            this.loginPopup = $('#login-popup');
            this.loginLogin = $('#login-login');
            this.loginRegister = $('#login-register');
            this.loginIntro = $('#login-intro-designer');
            var _self = this;
            this.loginLogin.find('h2 a').click(function(){
                _self.showRegester();
            });
            this.loginRegister.find('h2 a').click(function(){
                _self.showLogin();
            });
            $('#login-submit').click(function(e){
                e.preventDefault();
                var form = $(this).parent();
                $.post('/login/checkin',{
                    account : form.find('input[name="account"]').val(),
                    password : form.find('input[name="password"]').val()
                },function(resp){
                    window.location.reload(true);
                });
            });
            $('#register-submit').click(function(e){
                e.preventDefault();
                var form = $(this).parent();
                $.post('/login/register',{
                    account : form.find('input[name="account"]').val(),
                    password : form.find('input[name="password"]').val(),
                    password2 : form.find('input[name="password2"]').val(),
                    mail : form.find('input[name="mail"]').val()
                },function(resp){
                    var data = JSON.parse(resp);
                    if(data && data.errno == 0){
                        alert('注册成功，请登录');
                        _self.showLogin();
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
    _initLike : function(){
        $('body').on('click','.m-productinfo .like',function(e){
            e.preventDefault();
            var _this = $(this),
                parent = _this.parents('.m-productinfo'),
                pid = parent.attr('data-pid');
            $.post('/mall/collect/add?itemId='+pid,function(resp){
                var data = JSON.parse(resp);
                if(data && data.errno == 0){
                    _this.removeClass('like').addClass('liked').find('span').html('取消收藏');
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
                }else{
                    alert('取消收藏失败，请稍候再试');
                }
            });
        });
    }
    
}
$(function(){
	YY.base.init();
});
