YY.designerHeader = {
	init: function(){
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
            $('.ds-header-inner').hide();
            $('.ds-header-change-inner').show();
        }).on('click','.avatar-cancel',function(){
            $('.ds-header-change-inner').hide();
            $('.ds-header-inner').show();
        }).on('click','.avatar-save',function(){

        });
	},
    initAvatarUpload : function(){
        var upload = $('.ds-header-change-inner .ds-photo'),
            picUpload = $('#avatar-file'),
            uploadDone = $('.upload-done'),
            uploadFileName = $('#upload-file'),
            uploadFileHidden = $('#upload-avatar-hidden'),
            isUploading = false;
        upload.click(function(){
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
                            uploadFileHidden.val(resp.url);
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