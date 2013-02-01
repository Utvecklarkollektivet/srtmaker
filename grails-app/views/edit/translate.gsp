<%--
  Created by IntelliJ IDEA.
  User: markus
  Date: 2012-11-15
  Time: 23:30
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="app">
    <title>Translate ${srt.title}  now! - SRTMaker: Make or translate subtitles online for free</title>
</head>
<body>
    <h1>Translate ${srt.title}</h1>
    <div class="subtitle">

        <div id="title">
            <div class="span9">
                <h4>Title</h4>
                <input id="sub-title" type="text" placeholder="Ex: Rap News 15">
            </div>
        </div>

        <div id="block1">
            <div class="span9">
                <h4 class="subtitle-heading">Block 1</h4>
            </div>
            <div class="span4">

            </div>
            <div class="span7">
                ..and the translation:
                <textarea id="sub1" rows="2" placeholder="shown in 30 seconds"></textarea>
            </div>
        </div>

    </div>
</body>
</html>