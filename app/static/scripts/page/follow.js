YY.followPage = {
    init: function() {
       $('.user-list').on('click','.follow',function(){
            var _this = $(this);
            $.post('/follow/follow/add?followUid='+_this.parent().data('uid'),function(resp){
                var data = JSON.parse(resp);
                if(data && data.errno == 0){
                    _this.removeClass('follow').addClass('followed').html('取消关注');
                    var _num = _this.next().find('b');
                    _num.html(parseInt(_num.html()) + 1);
                }else{
                    alert('关注失败，请稍候再试');
                }
            });
        }).on('click','.followed',function(){
            var _this = $(this);
            $.post('/follow/follow/del?followUid='+_this.parent().data('uid'),function(resp){
                var data = JSON.parse(resp);
                if(data && data.errno == 0){
                    _this.removeClass('followed').addClass('follow').html('关注');
                    var _num = _this.next().find('b');
                    _num.html(parseInt(_num.html()) + 1);
                }else{
                    alert('取消关注失败，请稍候再试');
                }
            });
        });
    }
}
$(function() {
    YY.followPage.init();
});