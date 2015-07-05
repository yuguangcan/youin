YY.scrollLoad = (function(){
    function ScrollLoad(options){
        this.container = options.container;
        this.url = options.url;
        this.template = options.template;
        this.loading = options.loading || '';
        this.pn = 0;
        this.rn = options.rn || 12;
        this.sum = 0;
        this.emptyText = options.emptyText || '暂无内容';
        this.data = options.data || {};
        var _self = this;
        this.loadHandel = function(){
            var reachBottom = document.body.scrollTop + window.innerHeight >= $(document).height() - 200;
            if ( reachBottom ) {
                $(document).off('scroll',_self.loadHandel);
                _self.loadData();
            }
        };      
        this.init();
    }

    ScrollLoad.prototype.loadData = function(){
        var _self = this;
        var param = $.param($.extend({
            pn : _self.pn,
            rn : _self.rn
        },_self.data));
        $.get(_self.url + '?' + param, function(res) {
            var data = JSON.parse(res);
            if(data.data.itemNum > _self.sum ){
                _self.pn = _self.pn + _self.rn;
                $(document).on('scroll', _self.loadHandel);
                _self.loading && _self.loading.show();
            }else{
                $(document).off('scroll', _self.loadHandel);
                _self.loading && _self.loading.hide();
                
            }
            if(_self.pn == 0 && data.data.itemList.length == 0){
                //_self.container.append('<div class="m-empty"><p>'+_self.emptyText+'</p></div>');
            }else{
                var content = baidu.template(_self.template, {list: data.data.itemList});
                _self.container.append(content);
                _self.sum += data.data.itemList.length;
            }
            
        });
    }
    ScrollLoad.prototype.init = function(){
        this.loadData();
    }
    ScrollLoad.prototype.reset = function(){
        if(this.loadHandel){
            $(document).off('scroll', this.loadHandel);
        }
    }
    return ScrollLoad;
})();