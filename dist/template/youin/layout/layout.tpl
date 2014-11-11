<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <title>
            {%block name="title"%}有印{%/block%}
        </title>

        <link rel="stylesheet" href="/static/youin/styles/base/common.css"/>


        {%block name="css"%}
        {%/block%}

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

        <script type="text/javascript">
            var YY = YY || {};

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
        </script>
        <script src="/static/youin/scripts/base/base.js"></script>
        {%block name="js"%}
        {%/block%}
    </body>
</html>
