<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
        <style type="text/css">
        #status {
            /*background-color: #eee;*/
            /*border: .1em outset #000000;*/
            margin: 5px 10px 5px;
            padding: 1em;
            width: 200px;
            height: 800px;
            float: left;
            color: #000000;
            -moz-box-shadow: 0px 0px 1.25em #ccc;
            -webkit-box-shadow: 0px 0px 1.25em #ccc;
            box-shadow: 0px 0px 1.25em #ccc;
            -moz-border-radius: 0.6em;
            -webkit-border-radius: 0.6em;

            border-radius: 0.6em;


        }

        #status ul li a {
            display: block;
        }

        .ie6 #status {
            display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
        }
        #status ul {
            font-size: 0.9em;
            list-style-type: none;
            margin-bottom: 0.6em;
            padding: 0;
        }

        #status li {
            cursor: pointer;
            line-height: 1.8;
        }
        #status li:hover {
            background-color: rgb(59,89,152);
            color: #d3d3d3;
        }

        #status h1 {
            text-transform: uppercase;
            font-size: 1.1em;
            margin: 0 0 0.3em;
        }
        #bodyContent {
            /*background-color: #eee;*/

            margin: 5px 0px 0px;
            padding: 1em;
            width: 670px;
            height: 800px;
            float: left;
            color: #000000;
            -moz-box-shadow: 0px 0px 1.25em #ccc;
            -webkit-box-shadow: 0px 0px 1.25em #ccc;
            box-shadow: 0px 0px 1.25em #ccc;
            -moz-border-radius: 0.6em;
            -webkit-border-radius: 0.6em;

            border-radius: 0.6em;


        }

        .ie6 #bodyContent {
            display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
        }
        #status ul {
            font-size: 0.9em;
            list-style-type: none;
            margin-bottom: 0.6em;
            padding: 0;
        }

        #bodyContent li {
            cursor: pointer;
            line-height: 1.8;
        }
        #bodyContent li:hover {
            background-color: rgb(59,89,152);
            color: #d3d3d3;
        }

        #bodyContent h1 {
            text-transform: uppercase;
            font-size: 1.1em;
            margin: 0 0 0.3em;
        }

        #page-body {
            margin: 2em 1em 1.25em 18em;
        }

        h2 {
            margin-top: 1em;
            margin-bottom: 0.3em;
            font-size: 1em;
        }

        p {
            line-height: 1.5;
            margin: 0.25em 0;
        }

        #controller-list ul {
            list-style-position: inside;
        }

        #controller-list li {
            line-height: 1.3;
            list-style-position: inside;
            margin: 0.25em 0;
        }

        @media screen and (max-width: 480px) {
            #status {
                display: none;
            }

            #page-body {
                margin: 0 1em 1em;
            }

            #page-body h1 {
                margin-top: 0;
            }
        }
            body{
                width: 1200px;
            }

        </style>
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<div id="grailsLogo">
            <a href="http://grails.org">
            <img src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Grails"/></a>
        </div>
        <div class="content">
            <g:render template="/layouts/menu" />
            <div id="bodyContent">
                <g:layoutBody/>
            </div>
        </div>

		<div class="footer" role="contentinfo"><g:anoVigente /></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
