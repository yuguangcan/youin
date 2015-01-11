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
            var _self = this;
            this.loginLogin.find('h2 a').click(function(){
                _self.showRegester();
            });
            this.loginRegister.find('h2 a').click(function(){
                _self.showLogin();
            });
            $('#login-submit').click(function(e){
                var form = $(this).parent();
                $.post('/login/checkin',{
                    account : form.find('input[name="account"]').val(),
                    password : form.find('input[name="password"]').val()
                },function(resp){
                    window.location.reload(true);
                });
            });
            $('#register-submit').click(function(e){
                $(this).parent().submit();
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
            this.loginLogin.show();
        }
        Login.prototype.showRegester = function(){
            this.loginLogin.hide();
            this.loginRegister.show();
        }

        var loginPopup = new Login();
        $('#login').click(function(){
            loginPopup.show();
            loginPopup.showLogin();
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
