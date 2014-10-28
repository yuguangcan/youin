<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>
            {%block name="title"%}有印{%/block%}
        </title>

        <!-- build:css(.tmp) /static/youyin/styles/base/common.css -->
        <link rel="stylesheet" href="static/styles/base/common.css">
        <!-- endbuild -->


        {%block name="css"%}
        {%/block%}

    </head>
    <body>
        {%block name="header"%}
            {%include file="youyin/widget/header.tpl"%}
        {%/block%}

        <div id="content">
            {%block name="content"%}
            {%/block%}
        </div>

        {%block name="footer"%}
            {%include file="youyin/widget/footer.tpl"%}
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
        <!-- build:js /static/youyin/scripts/base/base.js -->
        <script src="static/scripts/base/jquery-1.8.3.js" type="text/javascript"></script>
        <script src="static/scripts/widget/base.js" type="text/javascript"></script>
        <!-- endbuild -->
        {%block name="js"%}
        {%/block%}
    </body>
</html>
