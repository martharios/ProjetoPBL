<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title><g:layoutTitle default="Grails"/></title>

    <link href="${createLinkTo(dir: 'css', file: 'main.css')}" rel="stylesheet" type="text/css" />
    <link href='http://fonts.googleapis.com/css?family=Cuprum' rel='stylesheet' type='text/css' />

    <script src="${createLinkTo(dir: 'js', file: 'jquery-1.4.4.js')}" type="text/javascript"></script>

    <script type="text/javascript"  src="${createLinkTo(dir: 'js/spinner', file: 'jquery.mousewheel.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/spinner', file: 'ui.spinner.js')}"></script>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>

    <script type="text/javascript" src="${createLinkTo(dir: 'js/fileManager', file: 'elfinder.min.js')}"></script>

    <script type="text/javascript" src="${createLinkTo(dir: 'js/wysiwyg', file: 'jquery.wysiwyg.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/wysiwyg', file: 'wysiwyg.image.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/wysiwyg', file: 'wysiwyg.link.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/wysiwyg', file: 'wysiwyg.table.js')}"></script>

    <script type="text/javascript" src="${createLinkTo(dir: 'js/flot', file: 'jquery.flot.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/flot', file: 'jquery.flot.pie.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/flot', file: 'excanvas.min.js')}"></script>

    <script type="text/javascript" src="${createLinkTo(dir: 'js/dataTables', file: 'jquery.dataTables.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/dataTables', file: 'colResizable.min.js')}"></script>

    <script type="text/javascript" src="${createLinkTo(dir: 'js/forms', file: 'forms.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/forms', file: 'autogrowtextarea.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/forms', file: 'autotab.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/forms', file: 'jquery.validationEngine-en.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/forms', file: 'jquery.validationEngine.js')}"></script>

    <script type="text/javascript" src="${createLinkTo(dir: 'js/colorPicker', file: 'colorpicker.js')}"></script>

    <script type="text/javascript" src="${createLinkTo(dir: 'js/uploader', file: 'plupload.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/uploader', file: 'plupload.html5.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/uploader', file: 'plupload.html4.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/uploader', file: 'jquery.plupload.queue.js')}"></script>

    <script type="text/javascript" src="${createLinkTo(dir: 'js/ui', file: 'progress.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/ui', file: 'jquery.jgrowl.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/ui', file: 'jquery.tipsy.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js/ui', file: 'jquery.alerts.js')}"></script>

    <script type="text/javascript" src="${createLinkTo(dir: 'js', file: 'jBreadCrumb.1.1.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js', file: 'cal.min.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js', file: 'jquery.collapsible.min.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js', file: 'jquery.ToTop.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js', file: 'jquery.listnav.js')}"></script>
    <script type="text/javascript" src="${createLinkTo(dir: 'js', file: 'jquery.sourcerer.js')}"></script>

    <script type="text/javascript" src="${createLinkTo(dir: 'js', file: 'custom.js')}"></script>
    %{--<g:javascript src="${createLinkTo(dir: 'js', file: 'custom.js')}" ></g:javascript>--}%
    <g:layoutHead/>
    <r:layoutResources />
</head>
<body>
<div id="topNav">
    <div class="fixed">
        <div class="wrapper">
            <div class="welcome"><a href="#" title=""><img src="${createLinkTo(dir: 'images', file: 'userPic.png')}" alt="" /></a><span>Howdy, Eugene!</span></div>
            <div class="userNav">
                <ul>
                    <li><a href="#" title=""><img src="${createLinkTo(dir: 'images/icons/topnav', file: 'profile.png')}" alt="" /><span>Profile</span></a></li>
                    <li><a href="#" title=""><img src="${createLinkTo(dir: 'images/icons/topnav', file: 'tasks.png')}" alt="" /><span>Tasks</span></a></li>
                    <li class="dd"><img src="${createLinkTo(dir: 'images/icons/topnav', file: 'messages.png')}" alt="" /><span>Messages</span><span class="numberTop">8</span>
                        <ul class="menu_body">
                            <li><a href="#" title="">new message</a></li>
                            <li><a href="#" title="">inbox</a></li>
                            <li><a href="#" title="">outbox</a></li>
                            <li><a href="#" title="">trash</a></li>
                        </ul>
                    </li>
                    <li><a href="#" title=""><img src="${createLinkTo(dir: 'images/icons/topnav', file: 'settings.png')}" alt="" /><span>Settings</span></a></li>
                    <li><a href="login.html" title=""><img src="${createLinkTo(dir: 'images/icons/topnav', file: 'logout.png')}" alt="" /><span>Logout</span></a></li>
                </ul>
            </div>
            <div class="fix"></div>
        </div>
    </div>
</div>
    <g:layoutBody/>
<div id="footer">
    <div class="wrapper">
        <span>&copy; Copyright 2011. All rights reserved. It's Brain admin theme by <a href="#" title="">Eugene Kopyov</a></span>
    </div>
</div>
<r:layoutResources />
</body>
</html>
