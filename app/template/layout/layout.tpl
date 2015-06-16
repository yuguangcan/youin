<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <title>
            {%block name="title"%}有印{%/block%}
        </title>

        <!-- build:css(.tmp) /static/youin/styles/base/common.css -->
        <link rel="stylesheet" href="static/styles/base/common.css">
        <!-- endbuild -->


        {%block name="css"%}
        {%/block%}

        <script type="text/javascript">
            var YY = YY || {};
            
            (function(){
                var _data = {};
                YY.context = function (key, value) {
                    var length = arguments.length;
                    if (length > 1) {
                        _data[key] = value;
                    } else if (length == 1) {
                        if (typeof key == 'object') {
                            for (var k in key) {
                                if (key.hasOwnProperty(k)) {
                                    _data[k] = key[k];
                                }
                            }
                        } else {
                            return _data[key];
                        }
                    }
                };
            })();

        </script>
    </head>
    <body>
        {%block name="header"%}
            {%include file="youin/widget/header.tpl"%}
        {%/block%}

        <div id="content">
            {%block name="content"%}
            {%/block%}
        </div>

        {%block name="footer"%}
            {%include file="youin/widget/footer.tpl"%}
        {%/block%}
        
        {%block name="gotop"%}
            <div id="gotop">
                <div class="gotop-inner">
                    <i class="common-icons-gotop"></i>
                </div>
            </div>
        {%/block%}

        {%block name="login"%}
            {%include file="youin/widget/login.tpl"%}
        {%/block%}

        <!-- build:js /static/youin/scripts/base/base.js -->
        <script src="static/scripts/base/jquery-1.8.3.js" type="text/javascript"></script>
        <script src="static/scripts/base/js.cookie.js" type="text/javascript"></script>
        <script src="static/scripts/widget/misc.js" type="text/javascript"></script>
        <script src="static/scripts/widget/base.js" type="text/javascript"></script>
        <!-- endbuild -->
        {%block name="js"%}
        {%/block%}
    </body>
</html>
