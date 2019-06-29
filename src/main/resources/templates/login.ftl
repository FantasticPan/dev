<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>Li Pan`s 博客 - 登录</title>
    <meta name="author" content="李攀">
    <meta name="keywords" content=""/>
    <meta name="description" content="">
    <meta name="robots" content="nofollow"/>
    <link href="https://cdn.bootcss.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/fancybox/2.1.5/jquery.fancybox.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/nprogress/0.2.0/nprogress.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/toastr.js/2.0.3/css/toastr.min.css" rel="stylesheet">
    <link href="/lipan/css/lipan.core.css" rel="stylesheet">
</head>
<body>
<section class="material-half-bg">
    <div class="cover"></div>
</section>
<section class="login-content">
    <div class="login-box">
        <form class="login-form" action="/login" method="post">
            <h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>登录</h3>
            <div class="form-group"><label class="control-label">账号</label>
                <input class="form-control" id="username" name="username" type="text" placeholder="请输入账号"></div>
            <div class="form-group"><label class="control-label">密码</label>
                <input class="form-control" id="password" name="password" type="password" placeholder="请输入密码"></div>
            <div class="form-group">
                <div class="utility">
                    <div class="animated-checkbox"><label><input type="checkbox"><span
                            class="label-text">记住我</span> </label></div>
                    <p class="mb-2"><a href="#" data-toggle="flip">忘记密码？</a></p></div>
            </div>
            <div class="form-group btn-container">
                <button type="submit" class="btn btn-primary btn-block"><i
                        class="fa fa-sign-in fa-lg fa-fw"></i>登录
                </button>
            </div>
            <div class="form-group sign_other_way">
                <ul class="list-unstyled list-inline">
                    <li class="list-inline-item"><a href="javascript:alert('功能开发中~~')" class="btn btn-sm btn-danger" title="码云"
                                                    rel="external nofollow"><i class="fa fa-gg"> </i></a></li>
                    <li class="list-inline-item"><a href="javascript:alert('功能开发中~~')" class="btn btn-sm btn-secondary" title="Github"
                                                    rel="external nofollow"><i class="fa fa-github"> </i></a></li>
                    <li class="list-inline-item"><a href="javascript:alert('功能开发中~~')" class="btn btn-sm btn-warning" title="新浪微博"
                                                    rel="external nofollow"><i class="fa fa-weibo"> </i></a></li>
                    <li class="list-inline-item"><a href="javascript:alert('功能开发中~~');" class="btn btn-sm btn-info"
                                                    title="QQ" rel="external nofollow"><i class="fa fa-qq"> </i></a>
                    </li>
                    <li class="list-inline-item"><a href="javascript:alert('功能开发中~~');"
                                                    class="btn btn-sm btn-success" title="微信" rel="external nofollow"><i
                            class="fa fa-weixin"> </i></a></li>
                </ul>
            </div>
        </form>
        <!--<form class="forget-form disabled" action="#"><h3 class="login-head"><i class="fa fa-lg fa-fw fa-lock disable"></i>忘记密码？-->
        <!--</h3>-->
            <!--<div class="form-group"><label class="control-label">注册邮箱</label> <input class="form-control" type="text"-->
                                                                                     <!--placeholder="请输入注册邮箱">-->
            <!--</div>-->
            <!--<div class="form-group btn-container">-->
                <!--<button type="button" class="btn btn-success btn-block"><i-->
                        <!--class="fa fa-unlock fa-lg fa-fw"></i>重置密码-->
                <!--</button>-->
            <!--</div>-->
            <!--<div class="form-group mt-3"><p class="mb-0"><a href="#" data-toggle="flip"><i-->
                    <!--class="fa fa-angle-left fa-fw"></i> 返回登录</a></p></div>-->
        <!--</form>-->
    </div>
</section>
<script src="https://cdn.bootcss.com/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js" type="text/javascript"></script>
<script src="https://cdn.bootcss.com/jquery_lazyload/1.9.7/jquery.lazyload.min.js" type="text/javascript"></script>
<!--<script type="text/javascript"> $('.login-content [data-toggle="flip"]').click(function () {-->
    <!--$('.login-box').toggleClass('flipped');-->
    <!--return false;-->
<!--}); </script>-->
</body>
</html>