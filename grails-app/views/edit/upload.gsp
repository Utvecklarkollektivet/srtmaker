<%--
  Created by IntelliJ IDEA.
  User: markus
  Date: 2012-11-11
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <meta name="layout" content="app">
  <title>Upload and translate SRT-file - SRTMaker: Make or translate subtitles online for free</title>
</head>
<body>
    <h1>Upload SRT for translation</h1>
    <g:if test="${flash.message}">
        <div class="alert alert-danger">
            <h4>File upload failed!</h4>
            <p>Reason: ${flash.message}</p>
        </div>
    </g:if>
    <div class="alert alert-info"><strong>Word of caution:</strong><br />If you upload a file anyone may translate it.</div>
    <g:uploadForm action="uploadSrt">
        <p>Filename:</p>
        <input type="text" name="title" placeholder="Ex: Iron Man 3"/>
        <br />
        <input type="file" name="myFile" />
        <input type="submit" class="btn btn-success" value="Upload" />
    </g:uploadForm>

    <div class="alert alert-warning"><strong>Please do not upload any copyrighted files.</strong></div>

</body>
</html>