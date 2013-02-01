<%--
  Created by IntelliJ IDEA.
  User: markus
  Date: 2012-11-04
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="SRTMaker: Make or translate subtitles online for free"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'app.css')}" type="text/css">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'bootstrap.js')}"></script>
    <g:layoutHead/>
</head>
<body>
    <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a class="brand" href="#">SRTMaker</a>
                <div class="nav-collapse collapse">
                    <ul class="nav">
                        <li><a href="/srtmaker/new">New</a></li>
                        <li><a href="/srtmaker/edit">Translate existing</a></li>
                        <li><a href="/srtmaker/edit/upload">Upload</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </div>

    <div class="container app-body">
        <g:layoutBody/>
    </div> <!-- /container -->
    <g:javascript library="jquery" plugin="jquery"/>
    <r:layoutResources />
    <script type="text/javascript" src="${resource(dir: 'js', file: 'application.js')}"></script>
</body>
</html>