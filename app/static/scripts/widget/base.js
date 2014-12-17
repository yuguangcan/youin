YY.base = {
    init : function(){
        this._initHeader();
    	this._initGotop();
        this._initLogin();
        this._initUcenter();
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
                $(this).parent().submit();
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
    			scrollTop : 115
    		},300);
    	});
    }
    
}
$(function(){
	YY.base.init();
});
