<%@ page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

    <form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/file/uploadFile">
        <input type="file" name="file"/><br>
        <input type="submit" value="上传">
    </form>

    <hr>

    <a href="${pageContext.request.contextPath}/file/download?filename=1575359238898-001.jpg">文件下载</a>

</body>
</html>