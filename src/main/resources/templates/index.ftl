<!DOCTYPE html>
<html>
<head>
    <title>Li Pan`s 博客 - 首页</title>
    <meta charset="UTF-8">
</head>
<link rel="stylesheet" href="/lipan/css/lipan.core.css">
<body>
<h1>首页</h1>
<hr>
<ul>
    <h1>
        <@shiro.guest>游客看到的内容</@shiro.guest>
        <@shiro.user>认证之后看到的内容</@shiro.user>
    </h1>
    <#--hdsohvidosvhdiosvhio-->
    <li><a href="/user/index">个人中心</a></li>
    <li><a href="/vip/index">会员中心</a></li>
    <li><a href="/logout">退出登录</a></li>
    <li><a href="/toLogin">登录</a></li>
    <li><a href="/toRegister">注册</a></li>
</ul>
<#include "include/footer.ftl">
</body>
</html>
