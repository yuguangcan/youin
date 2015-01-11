YY.designerPage = {
    init: function() {
        $('.ds-operation').on('click','.follow',function(){
            var _this = $(this);
            $.post('/follow/follow/add?followUid='+YY.context('uid'),function(resp){
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
            $.post('/follow/follow/del?followUid='+YY.context('uid'),function(resp){
                var data = JSON.parse(resp);
                if(data && data.errno == 0){
                    _this.removeClass('followed').addClass('follow').html('关注');
                    $('#follower-num').html(parseInt($('#follower-num').html()) - 1);
                }else{
                    alert('取消关注失败，请稍候再试');
                }
            });
        });
    }
}
$(function() {
    YY.designerPage.init();
});