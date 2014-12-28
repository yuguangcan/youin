YY.indexPage = {
    init:function(){
        var title = $('#title'),
        	desc = $('#description'),
        	taglist = $('#taglist li'),
            tagId = $('#tagid');
        title.on('focus',function(){
        	$(this).addClass('focus');
        }).on('blur',function(){
        	$(this).removeClass('focus');
        });
        desc.on('focus',function(){
        	$(this).addClass('focus');
        }).on('blur',function(){
        	$(this).removeClass('focus');
        });
        taglist.on('click',function(){
        	$(this).toggleClass('selected');
            setTagId();
        });
        function setTagId(){
            var _id = [];
            taglist.each(function(){
                if($(this).hasClass('selected')){
                    _id.push($(this).attr('data-tid'));
                }
            });
            tagId.val(_id.join(','));
        }


        var addMinus = $('#add-minus'),
        	price = $('#price');
        addMinus.find('.minus').click(function(){
        	price.val(parseInt(price.val())-1);
        });
        addMinus.find('.add').click(function(){
        	price.val(parseInt(price.val())+1);
        });
    },
    initUpload : function(){
        var uploadBtn = $('#upload'),
            picUpload = $('#file'),
            upload = $('.upload'),
            uploadDone = $('.upload-done'),
            uploadFileName = $('#upload-file'),
            uploadDelete = $('#upload-delete'),
            uploadFileHidden = $('#upload-file-hidden'),
            isUploading = false;
        uploadBtn.click(function(){
            if(isUploading){
                return;
            }
            picUpload.trigger('click');
        });
        picUpload.on('change',change);
        uploadDelete.click(function(){
            uploadFileName.html("");
            uploadFileHidden.val("");
            uploadDone.hide();
            upload.show();
        });
        function change(e){
            var src = e.target,
                imageName = src.value.substring(src.value.lastIndexOf('\\')+1);
            uploadBtn.html('正在上传');
            isUploading = true;
            $.ajaxFileUpload(
                {
                    url: '/image/upload',
                    type : 'post',
                    secureuri: false, //是否需要安全协议，一般设置为false
                    fileElementId: 'file', //文件上传域的ID
                    dataType: 'json', //返回值类型 一般设置为json
                    success: function (resp)  //服务器成功响应处理函数
                    {
                        if(resp && resp.errno == 0){
                            upload.hide();
                            uploadBtn.html('上传一张图');
                            uploadFileName.html(imageName);
                            uploadFileHidden.val(resp.url);
                            uploadDone.show();
                        }else{
                            alert('上传失败，请稍候再试');
                            uploadBtn.html('上传一张图');
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
            upload.append('<input type="file" id="file" name="pic" accept="image/*"></input>');
            picUpload = upload.find('#file');
            picUpload.on('change',change);
        }
    },
    initSubmit : function(){
        $('#submit').click(function(e){
            $('#upload-form').submit();
        });
    }
}
$(function(){
    YY.indexPage.init();
    YY.indexPage.initUpload();
    YY.indexPage.initSubmit();
});
