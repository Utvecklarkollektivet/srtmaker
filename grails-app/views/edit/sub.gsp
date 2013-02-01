<%--
  Created by IntelliJ IDEA.
  User: markus
  Date: 2012-11-14
  Time: 22:43
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="app">
    <title>${srt.title} - SRTMaker: Make or translate subtitles online for free</title>
</head>
<body>
    <h1 class="more-from-left">${srt.title}</h1>
    <div class="row row-fluid more-from-left-x2">
        <div class="span9">
            <div class="row">
                <div class="span6">
                    <pre>${srt.srtFile}</pre>
                </div>
                <div class="span6">
                    <g:if test="${numberOfTranslations == 0}">
                        <div class="alert alert-danger">
                            <p><strong>No translations found!</strong> Why don't you <a href="/srtmaker/edit/translate/${srt.url}">create one</a>?</p>
                        </div>
                    </g:if>
                    <g:else>
                        <a href="/srtmaker/edit/translate/${srt.url}" class="btn btn-info">Translate this!</a>
                    </g:else>
                </div>
            </div>
        </div>
    </div>

</body>
</html>