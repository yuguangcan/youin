YY.indexPage = {
    init:function(){
    	var uploadList = [];
        function Uploader(options){
        	this.uploadImg = options.uploadImg;
        	this.uploadBtn = options.uploadBtn;
        	this.picUpload = options.picUpload;
        	this.upload = options.upload;
        	this.uploadDone = options.uploadDone;
        	this.uploadFileName = options.uploadFileName;
        	this.uploadDelete = options.uploadDelete;
        	this.uploadProductId = options.uploadProductId;
        	this.isUploading = false;

        	var _self = this;
        	_self.uploadBtn.click(function(){
        		if(_self.isUploading){
        			return;
        		}
        	    _self.picUpload.trigger('click');
        	});
        	_self.picUpload.on('change',change);
        	_self.uploadDelete.click(function(){
        	    _self.uploadFileName.html("");
        	    _self.uploadImg.attr('src',_self.uploadImg.attr('data-src'));
        	    _self.uploadDone.hide();
        	    _self.upload.show();
        	});
        	function change(e){
        	    var src = e.target,
        	        imageName = src.value.substring(src.value.lastIndexOf('\\')+1);
        	    _self.uploadBtn.html('正在上传');
        	    _self.isUploading = true;
        	    $.ajaxFileUpload(
        	        {
        	            url: '/image/upload_product?productId='+_self.uploadProductId,
        	            type : 'post',
        	            data: {

        	            },
        	            timeout : 20000,
        	            secureuri: false, //是否需要安全协议，一般设置为false
        	            fileElementId:  _self.picUpload.attr('id'), //文件上传域的ID
        	            dataType: 'json', //返回值类型 一般设置为json
        	            success: function (resp)  //服务器成功响应处理函数
        	            {
        	                if(resp && resp.errno == 0){
        	                    _self.upload.hide();
        	                    _self.uploadBtn.html('上传一张图');
        	                    _self.uploadFileName.html(imageName);
        	                    _self.uploadFileName.attr('data-imgid',resp.picSet);
        	                    _self.uploadImg.attr('src',resp.pic);
        	                    _self.uploadDone.show();
        	                }else{
        	                    alert('上传失败，请稍候再试');
        	                    _self.uploadBtn.html('上传一张图');
        	                }
        	                resetPicUpload();
        	                _self.isUploading = false;
        	            },
        	            error: function ()
        	            {
        	                alert('上传失败，请稍候再试');
        	                resetPicUpload();
        	                _self.isUploading = false;
        	            }
        	        }
        	    );
        	}
        	function resetPicUpload(){
        		var clone = _self.picUpload.clone();
        	    _self.picUpload.remove();
        	    _self.picUpload = null;
        	    _self.upload.append(clone);
        	    _self.picUpload = _self.upload.find('input');
        	    _self.picUpload.on('change',change);
        	}
        } 
        Uploader.prototype.getUploadImgId = function(){
        	return this.uploadFileName.attr('data-imgid');
        }

        $('.upload-list li').each(function(index,item){
        	var uploadInstance = new Uploader({
        		uploadImg : $(item).find('img'),
        		uploadBtn : $(item).find('.upload a'),
	        	picUpload : $(item).find('input'),
	        	upload : $(item).find('.upload'),
	        	uploadDone : $(item).find('.upload-done'),
	        	uploadFileName : $(item).find('.upload-file'),
	        	uploadDelete : $(item).find('.upload-delete'),
	        	uploadProductId : $(item).attr('data-pid')
        	});

        	uploadList.push(uploadInstance);
        })
    },
    initSubmit : function(){
    	var productValue = $('#product-value');
    	$('#submit').click(function(e){
    		var _value = [];
    		$('.upload-list li').each(function(){
    			_value.push({
    				productId : $(this).attr('data-pid'),
    				picSet : $(this).find('.upload-file').attr('data-imgid')
    			});
    		});
    		productValue.val(JSON.stringify(_value));
    		$('#upload-form').submit();
    	});
    }
}
$(function(){
    YY.indexPage.init();
    YY.indexPage.initSubmit();
});
