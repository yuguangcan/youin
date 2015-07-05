YY.designerHeader = {
    originHeader : $('.ds-header-inner'),
    changedHeader : $('.ds-header-change-inner'),
    originPhoto : $('.ds-header-inner .photo'),
    originName : $('.ds-header-inner .ds-username'),
    originIntro : $('.ds-header-inner .ds-intro'),
    changedName : $('.ds-header-change-inner .ds-username-input'),
    changedIntro : $('.ds-header-change-inner .ds-intro-input'),
    changedPhoto : $('.ds-header-change-inner .photo'),
    changedPhotoIcon : $('.ds-header-change-inner .ds-photo i'),
    uploadFileHidden : $('#upload-avatar-hidden'),
    cashpopup : $('#cash-popup'),
    cashpopupOverlay : $('#cash-overlay'),
	init: function(){
        var _self = this;
		$('.m-ds-header').on('click','.follow',function(){
            var _this = $(this);
            $.post('/follow/follow/add?followUid='+YY.context('ds-uid'),function(resp){
                var data = JSON.parse(resp);
                if(data && data.errno == 0){
                    _this.removeClass('follow').addClass('followed').html('取消关注');
                    $('#follower-num').html(parseInt($('#follower-num').html()) + 1);
                }else{
                    alert('关注失败，请稍候再试');
                }
            });
        }).on('click','.followed',function(){
            var _this = $(this);
            $.post('/follow/follow/del?followUid='+YY.context('ds-uid'),function(resp){
                var data = JSON.parse(resp);
                if(data && data.errno == 0){
                    _this.removeClass('followed').addClass('follow').html('关注');
                    $('#follower-num').html(parseInt($('#follower-num').html()) - 1);
                }else{
                    alert('取消关注失败，请稍候再试');
                }
            });
        }).on('click','.change-profile',function(){
            _self.changedPhoto.attr('src',"");
            _self.changedPhotoIcon.show();
            _self.uploadFileHidden.val(_self.originPhoto.attr('src'));
            _self.changedName.val(_self.originName.html());
            _self.changedIntro.val(_self.originIntro.html());
            _self.originHeader.hide();
            _self.changedHeader.show();
        }).on('click','.avatar-cancel',function(){
            _self.changedHeader.hide();
            _self.originHeader.show();
        }).on('click','.avatar-save',function(){
            var uname = $.trim(_self.changedName.val()),
                mark = $.trim(_self.changedIntro.val());
            if(uname == ""){
                alert('请输入用户名');
                return;
            }
            $.post('/user/infoupdate',{
                avatar : _self.uploadFileHidden.val(),
                uname : uname,
                mark : mark
            },function(resp){
                alert('修改成功');
                _self.originPhoto.attr('src',_self.uploadFileHidden.val());
                _self.originName.html(_self.changedName.val());
                _self.originIntro.html(_self.changedIntro.val());
                _self.changedHeader.hide();
                _self.originHeader.show();
            });
        }).on('click','.ds-cash-out',function(){
            
            if(!$(this).hasClass('cash-none')){
                YY.misc.showPopup(_self.cashpopup,_self.cashpopupOverlay);
            }

        });
        if(_self.cashpopup.length > 0){
            _self.cashpopup.find('form').on('submit',function(e){
                e.preventDefault();
                $.post('/user/getmoney',{
                    people : $(this).find('input[name="people"]').val(),
                    account : $(this).find('input[name="account"]').val(),
                    phone : $(this).find('input[name="phone"]').val()
                },function(resp){
                    var data = JSON.parse(resp);
                    if(data && data.errno == 0){
                        alert('提现成功');
                        $(".ds-cash div").html("0元");
                        $(".ds-cash-out").addClass('cash-none');
                        YY.misc.hidePopup(_self.cashpopup,_self.cashpopupOverlay);
                    }else{
                        alert('提现失败，请稍候再试');
                    }
                });
            });  
        }
	},
    initAvatarUpload : function(){
        var upload = $('.ds-header-change-inner .ds-inform'),
            picUpload = $('#avatar-file'),
            isUploading = false,
            _self = this;
        upload.find('.ds-photo').click(function(){
            if(isUploading){
                return;
            }
            picUpload.trigger('click');
        });
        picUpload.on('change',change);
        function change(e){
            var src = e.target,
                imageName = src.value.substring(src.value.lastIndexOf('\\')+1);
            isUploading = true;
            $.ajaxFileUpload(
                {
                    url: '/image/upload_avatar',
                    type : 'post',
                    secureuri: false, //是否需要安全协议，一般设置为false
                    fileElementId: 'avatar-file', //文件上传域的ID
                    dataType: 'json', //返回值类型 一般设置为json
                    success: function (resp)  //服务器成功响应处理函数
                    {
                        if(resp && resp.errno == 0){
                            _self.uploadFileHidden.val(resp.url);
                            _self.changedPhoto.attr('src',resp.url);
                            _self.changedPhotoIcon.hide();
                        }else{
                            alert('上传失败，请稍候再试');
                        }
                        resetPicUpload();
                        isUploading = false;
                    },
                    error: function ()
                    {
                        alert('上传失败，请稍候再试');
                        resetPicUpload();
                        isUploading = false;
                    }
                }
            );
        }
        function resetPicUpload(){
            picUpload.remove();
            picUpload = null;
            upload.append('<input type="file" id="avatar-file" name="pic" accept="image/*"></input>');
            picUpload = upload.find('#avatar-file');
            picUpload.on('change',change);
        }
    }
}
$(function(){
    YY.designerHeader.init();
    YY.designerHeader.initAvatarUpload();
})