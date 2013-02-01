<%--
  Created by IntelliJ IDEA.
  User: markus
  Date: 2012-11-12
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="app">
    <title>Translate existing SRT-file - SRTMaker: Make or translate subtitles online for free</title>
</head>
<body>
    <h1>The following SRT-files are available for translation</h1>
    <g:each in="${srts}">
        <a href="edit/sub/${it.url}">${it.title}</a>
    </g:each>

</body>
</html>