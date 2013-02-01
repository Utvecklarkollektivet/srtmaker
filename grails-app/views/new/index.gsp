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
  <meta name="layout" content="app">
  <title>Create new SRT-file - SRTMaker: Make or translate subtitles online for free</title>
</head>
<body>
    <h1>Create a new SRT-file</h1>
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
                <div class="form-inline">
                    <input id="start1" type="text" class="input-small" placeholder="00:00:00" value="00:00:00"> to
                    <input id="end1" type="text" class="input-small" placeholder="00:00:30">
                </div>
            </div>
            <div class="span7">
                ..and the subtitle:
                <textarea id="sub1" rows="2" placeholder="shown in 30 seconds"></textarea>
            </div>
        </div>

    </div>
    <div class="span9">
        <a id="addnew" class="btn btn-primary" href="#newblock"><i class="icon-repeat icon-white"></i> Add a new block</a>
        <a id="compile" class="btn btn-success" href="#compile"><i class="icon-ok icon-white"></i> Compile</a>
    </div>
</body>
</html>