<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>Li Pan`s 博客 - 文章编辑</title>
    <meta name="author" content="李攀">
    <link rel="stylesheet" href="/editormd/editormd.min.css"/>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<form action="/publish" method="post">
    <div class="form-group col-lg-12" style="padding-top: 10px">
        <input class="form-control" type="text" name="articleTitle" placeholder="输入文章标题" autocomplete="off">
    </div>
    <div class="form-group col-lg-12">
        <textarea class="form-control" name="articleSummary" placeholder="输入文章摘要" autocomplete="off"></textarea>
    </div>
    <div class="form-group col-lg-3">
        <div>
            <button type="submit" class="btn btn-primary">发布</button>
        </div>
    </div>
    <div class="form-group" id="editor">
        <textarea class="editormd-markdown-textarea" name="editormd-markdown-doc"></textarea>
    </div>
</form>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script src="/editormd/jquery.min.js"></script>
<script src="/editormd/editormd.min.js"></script>
<script type="text/javascript">
    $(function () {
        var editor = editormd("editor", {
            placeholder : "此处编写您要发布的文章...",
            codeFold : true,
            width: "98%",
            height: 720,
            // autoHeight : true, //根据内容自动调整高度
            saveHTMLToTextarea: true,
            // syncScrolling : "single",  //预览栏单独滚动，不写的话两边同步滚动
            path: "/editormd/lib/",
            previewTheme: "dark", //预览主题
            // theme: "dark", //工具栏主题
            // editorTheme: "pastel-on-dark", //编辑区主题
            // emoji: true,
            taskList: true,
            tocm: true,                  // Using [TOCM]
            tex: true,                   // 开启科学公式TeX语言支持，默认关闭
            flowChart: true,             // 开启流程图支持，默认关闭
            sequenceDiagram: true        // 开启时序/序列图支持，默认关闭,
        });
    });
</script>
</body>
</html>