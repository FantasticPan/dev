<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="google-site-verification" content="pgE6-JQiRcnwUEbth-XRI1r4bLw6I8VLu1X_icolkXs"/>
    <meta name="baidu-site-verification" content="d4kcdwiGHw"/>
    <meta name="360-site-verification" content="f228f962664adaeb68640cfdeea74e4f"/>
    <meta name="sogou_site_verification" content="1DV3rRsGcO"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>LiPan's博客</title>
    <meta name="author" content="张亚东(yadong.zhang0415#gmail.com)"/>
    <meta name="keywords" content="Spring Boot,微服务,OneBlog开源博客,DBlog开源博客,张亚东博客,全栈工程师,OneBlog开源博客,DBlog开源博客"/>
    <meta name="description" content="张亚东博客是一个程序员的个人技术博客(微博ID:@七彩狼丿)，旨在分享工作和学习中用到的技术、遇到的疑难知识点，也为了备战自己的人生。心之所向，无所不能。"
          id="meta_description"/>
    <link rel="canonical" href=""/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/2.5.1/jquery-confirm.min.css" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/nprogress/0.2.0/nprogress.min.css" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.1/css/bootstrapValidator.min.css"
          rel="stylesheet"/>
    <link href="https://static.zhyd.me/static/css/zhyd.core.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<nav id="topmenu" class="navbar navbar-default navbar-fixed-top">
    <div class="menu-box">
        <div class="pull-left">
            <ul class="list-unstyled list-inline">
                <li><span id="currentTime"></span></li>
            </ul>
            <div class="clear"></div>
        </div>
        <div class="menu-topmenu-container pull-right">
            <ul class="list-unstyled list-inline pull-left">
                <li><a href="reward" class="menu_a red" title="赞助博主" data-toggle="tooltip" data-placement="bottom"
                       rel="nofollow"> <i class="fa fa-money fa-fw"></i>赞助博主</a></li>
                <li><a href="osp" class="menu_a red" title="开源项目" data-toggle="tooltip" data-placement="bottom"> <i
                        class="fa fa-gg fa-fw"></i>开源项目</a></li>
                <li><a href="tool" class="menu_a red" title="推荐工具" data-toggle="tooltip" data-placement="bottom"> <i
                        class="fa fa-fire fa-fw"></i>推荐工具</a></li>
                <li><a href="about" class="menu_a" title="关于博客" data-toggle="tooltip" data-placement="bottom"
                       rel="nofollow"> <i class="fa fa-info fa-fw"></i>关于</a></li>
                <li><a href="links" class="menu_a" title="友情链接" data-toggle="tooltip" data-placement="bottom"
                       rel="nofollow"> <i class="fa fa-link fa-fw"></i>友情链接</a></li>
            </ul>
            <ul class="list-unstyled list-inline pull-left">
                <li><a href="/login" rel="nofollow" title="登录">欢迎！<i class="fa fa-user"></i>登录</a></li>
            </ul>
        </div>
    </div>
</nav>
<nav id="mainmenu" class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="menu-box">
        <div class="navbar-header">
            <span class="pull-right nav-search toggle-search" data-toggle="modal" data-target=".nav-search-box"> <i
                    class="fa fa-search"></i> </span>
            <a type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
               aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a>
            <a class="navbar-brand logo" href="#"></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <div class="pull-left site-desc" style="line-height: 0.9;">
                <h1 style="font-size: 20px;font-weight: 700;" class="auto-shake"><a href="" data-original-title="写博客、记日志、闲聊扯淡鼓捣技术" data-toggle="tooltip" data-placement="bottom">LiPan's博客</a>
                </h1>
                <p class="site-description">写博客、记日志、闲聊扯淡鼓捣技术</p>
            </div>
            <ul class="nav navbar-nav ">
                <li><a href="" class="menu_a"> <i class="fa fa-home"></i>首页</a></li>
                <li><a href="type/12" class="menu_a"><i class="fa fa-diamond"></i>开源软件</a></li>
                <li><a href="type/13" class="menu_a"><i class="fa fa-share-alt"></i>资源分享</a></li>
                <li class="dropdown"><a href="#" class="dropdown-toggle menu_a" data-toggle="dropdown" aria-expanded="false"> <i class="fa fa-code"></i>编程相关 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="type/2" title="点击查看《后端编程》的文章">后端编程</a></li>
                        <li><a href="type/1" title="点击查看《前端编程》的文章">前端编程</a></li>
                        <li><a href="type/6" title="点击查看《微信小程序》的文章">微信小程序</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle menu_a" data-toggle="dropdown" aria-expanded="false"> <i class="fa fa-linux"></i>服务器相关 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="type/3" title="点击查看《Linux运维》的文章">Linux运维</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle menu_a" data-toggle="dropdown" aria-expanded="false"> <i class="fa fa-th-list"></i>其他 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="type/5" title="点击查看《闲言碎语》的文章">闲言碎语</a></li>
                        <li><a href="type/4" title="点击查看《开发工具》的文章">开发工具</a></li>
                    </ul>
                </li>
                <li><a href="type/11" class="menu_a"> <i class="fa fa-envira"></i>Oneblog</a></li>
                <li><a href="guestbook" class="menu_a"> <i class="fa fa-comments-o"></i>留言板</a></li>
                <li><span class="pull-right nav-search main-search" data-toggle="modal"
                          data-target=".nav-search-box"> <i class="fa fa-search"></i> </span></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container custome-container">
    <!--[if lt IE 9]>
    <div class="alert alert-danger topframe" role="alert">Oh My God！你的浏览器实在
        <strong>太太太太太太旧了</strong>，赶紧升级浏览器
        <a target="_blank" class="alert-link" href="http://browsehappy.com">立即升级</a></div>
    <![endif]-->
    <nav class="breadcrumb">
        <div class="notify">
            <i class="fa fa-volume-up"></i>
        </div>
        <div id="scrolldiv">
            <div class="scrolltext">
                <ul class="list-unstyled" id="notice-box">
                    <li class="scrolltext-title"><a href="javascript:void(0)" rel="bookmark">博客细节功能待完善...</a></li>
                    <li class="scrolltext-title"><a href="javascript:void(0)" rel="bookmark">大学生活马上就要结束了</a></li>
                    <li class="scrolltext-title"><a href="javascript:void(0)" rel="bookmark">不会写C++的JAVA人员不是一个好UI，不会用Linux的程序员不是一个好DBA</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="row">
        <div class="col-sm-8 blog-main">
            <div class="blog-body expansion" style="padding: 0;">
                <div id="myCarousel" class="carousel slide" style="height:300px;">
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="2" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="3" class=""></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <a href="article/141"><img src="http://cdn.zhyd.me/flyat/cover/20170806183429366.jpg" alt="Spring Boot 快速集成第三方登录功能" title="Spring Boot 快速集成第三方登录功能"/></a>
                            <div class="zyd-carousel-caption">Spring Boot 快速集成第三方登录功能</div>
                        </div>
                        <div class="item ">
                            <a href="article/140"><img src="http://cdn.zhyd.me/zhyd/cover/20190322202754432.png" alt="JustAuth1.9.0版本正式来袭！Teambition、人人、Pinterest、Stack Overflow等尽收眼底！" title="JustAuth1.9.0版本正式来袭！Teambition、人人、Pinterest、Stack Overflow等尽收眼底！"/></a>
                            <div class="zyd-carousel-caption">JustAuth1.9.0版本正式来袭！Teambition、人人、Pinterest、Stack Overflow等尽收眼底！</div>
                        </div>
                        <div class="item ">
                            <a href="article/139"><img src="http://cdn.zhyd.me/zhyd/cover/20190523093804781.png" alt="JustAuth升级到v1.8.1版本，新增AuthState工具类，可自动生成state" title="JustAuth升级到v1.8.1版本，新增AuthState工具类，可自动生成state"/></a>
                            <div class="zyd-carousel-caption">JustAuth升级到v1.8.1版本，新增AuthState工具类，可自动生成state</div>
                        </div>
                        <div class="item ">
                            <a href="article/136"> <img src="http://cdn.zhyd.me/zhyd/cover/20190703191930396.jpg" alt="Springboot系列之RestApi中获取枚举类属性的几种方式" title="Springboot系列之RestApi中获取枚举类属性的几种方式"/></a>
                            <div class="zyd-carousel-caption">
                                Springboot系列之RestApi中获取枚举类属性的几种方式
                            </div>
                        </div>
                    </div>
                    <a class="left carousel-control hide" href="#myCarousel" role="button" data-slide="prev"> <span
                            class="fa fa-angle-left fa-fw fa-3x" aria-hidden="true"></span> <span class="sr-only">Previous</span></a>
                    <a class="right carousel-control hide" href="#myCarousel" role="button" data-slide="next"> <span
                            class="fa fa-angle-right fa-fw fa-3x" aria-hidden="true"></span> <span
                            class="sr-only">Next</span></a>
                </div>
            </div>
            <#list pageInfo.list as article>
                <article class="fade-in">
                    <figure class="thumbnail">
                        <a href="/article/display?articleId=${article.articleId}"><img width="150" height="150" data-original="http://cdn.zhyd.me/zhyd/cover/20190322202754432.png-img_150x150" class="img-responsive lazy-img" alt="好消息！JustAuth已支持QQ和微信授权登录！"/></a>
                        <span class="cat"><a href="type/12">${article.articleClassify}"</a></span>
                    </figure>
                    <header class="entry-header">
                        <h2 class="entry-title">
                            <a href="/article/display?articleId=${article.articleId}" rel="bookmark" title="点击查看文章详情" data-toggle="tooltip" data-placement="bottom"><#if article.articleTop != 0>【置顶】</#if>${article.articleTitle}</a>
                        </h2>
                    </header>
                    <div class="entry-content">
                        <div class="archive-content">
                            ${article.articleSummary}
                        </div>
                        <span class="title-l"></span>
                        <span class="entry-meta"><span class="date" title="文章发表日期" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-calendar-o fa-fw"></i>${article.articleReleaseDate}</span> <span class="views" title="文章阅读次数" data-toggle="tooltip" data-placement="bottom"> <i class="fa fa-eye fa-fw"></i>浏览(${article.articleViewCount})</span><span class="comment" title="文章评论次数" data-toggle="tooltip" data-placement="bottom">
                            <a href="article/131#comment-box" rel="external nofollow">
                                <i class="fa fa-comments-o fa-fw"></i>评论(${article.articleCommentCount})</a></span></span>
                        <div class="clear"></div>
                        <span class="entry-more"><a href="/article/display?articleId=${article.articleId}" rel="bookmark" title="点击查看文章详情" data-toggle="tooltip" data-placement="bottom">阅读全文+</a></span></div>
                </article>
            </#list>
            <nav>
                <ul class="pager page-btn" data-url="/" data-search="false">
                    <li><a class="pointer">共${pageInfo.total}页</a>&nbsp;&nbsp;</li>
                    <li><a class="pointer" href="/">首页</a></li>
                    <#if pageInfo.hasPreviousPage>
                        <#if pageInfo.pageNum == 2>
                            <li><a class="pointer" href="/">上一页</a></li>
                        </#if>
                        <#if pageInfo.pageNum != 2>
                            <li><a class="pointer" href="/?pageNum=${pageInfo.prePage}">上一页</a></li>
                        </#if>
                    </#if>
                    <#list pageInfo.navigatepageNums as page_num>
                        <#if page_num == pageInfo.pageNum>
                            <li><a class="pointer active">${page_num}</a></li>
                        </#if>
                        <#if page_num != pageInfo.pageNum>
                            <li><a class="pointer" href="/?pageNum=${page_num}">${page_num}</a></li>
                        </#if>
                    </#list>
                    <#if pageInfo.hasNextPage>
                        <li><a class="pointer" href="/?pageNum=${pageInfo.nextPage}">下一页</a></li>
                    </#if>
                    <li><a class="pointer" href="/?pageNum=${pageInfo.navigateLastPage}">尾页</a></li>
                </ul>
            </nav>
        </div>
        <div class="col-sm-3 blog-sidebar">
            <div class="sidebar-module" style="position: relative;">
                <div class="about-author">
                    <div class="about-main">
                        <div class="about-img col-md-4">
                            <a href="https://gitee.com/yadong.zhang/static/raw/master/wx/wechat_account.jpg"
                               class="showImage" title="微信公众号“码一码”"> <img src="https://gitee.com/yadong.zhang/static/raw/master/wx/wechat_account.jpg" alt="微信公众号" style="border-radius: 0;"/></a>
                        </div>
                        <div class="about-site col-md-8">
                            <h2 class="about-name">张亚东博客</h2>
                            <small class="about-the">一个程序员的个人博客，心之所向，无所不能</small>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
            <div class="sidebar-module ad-sidebar-356x230">
                <h5 class="sidebar-title"><i class="fa fa-thumbs-o-up icon"></i> <strong>站长推荐~~~</strong></h5>
                <div class="zyd-ad" data-position="sidebar_1"></div>
            </div>
            <div class="sidebar-module article-module hide" style="top: 0;">
                <h5 class="sidebar-title"><i class="fa fa-book icon"></i> <strong>本文目录</strong> <i
                        class="fa fa-close pull-right close-article-menu hide pointer"></i></h5>
                <div id="article-menu">
                    <ul class="list-unstyled"></ul>
                </div>
            </div>
            <div class="sidebar-module">
                <h5 class="sidebar-title"><i class="fa fa-tags icon"></i> <strong>文章标签</strong></h5>
                <a style="font-size: 15.71px;margin: 5px;" href="tag/1" title="Linux" data-toggle="tooltip"
                   data-placement="bottom">Linux</a>
                <a style="font-size: 11.45px;margin: 5px;" href="tag/2" title="Java" data-toggle="tooltip"
                   data-placement="bottom">Java</a>
            </div>
            <div class="sidebar-module">
                <ul class="nav nav-tabs sidebar-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#profile" aria-controls="profile" role="tab"
                                                              data-toggle="tab"> <i class="fa fa-list"></i>近期文章</a></li>
                    <li role="presentation"><a href="#home" aria-controls="home" role="tab" data-toggle="tab"> <i
                            class="fa fa-thumbs-o-up"></i>站长推荐</a></li>
                    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">
                        <i class="fa fa-hand-peace-o"></i>随机文章</a></li>
                </ul>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="profile">
                        <ol class="list-unstyled">
                            <li><span class="li-icon li-icon-1">1</span> <a href="article/141"
                                                                            title="Spring Boot 快速集成第三方登录功能"
                                                                            data-toggle="tooltip"
                                                                            data-placement="bottom">Spring Boot
                                快速集成第三方登录功能</a></li>
                            <li><span class="li-icon li-icon-2">2</span> <a href="article/140"
                                                                            title="JustAuth1.9.0版本正式来袭！Teambition、人人、Pinterest、Stack Overflow等尽收眼底！"
                                                                            data-toggle="tooltip"
                                                                            data-placement="bottom">JustAuth1.9.0版本正式来袭！Teambition、人人、Pinterest、Stack
                                Overflow等尽收眼底！</a></li>
                            <li><span class="li-icon li-icon-3">3</span> <a href="article/139"
                                                                            title="JustAuth升级到v1.8.1版本，新增AuthState工具类，可自动生成state"
                                                                            data-toggle="tooltip"
                                                                            data-placement="bottom">JustAuth升级到v1.8.1版本，新增AuthState工具类，可自动生成state</a>
                            </li>
                            <li><span class="li-icon li-icon-4">4</span> <a href="article/136"
                                                                            title="Springboot系列之RestApi中获取枚举类属性的几种方式"
                                                                            data-toggle="tooltip"
                                                                            data-placement="bottom">Springboot系列之RestApi中获取枚举类属性的几种方式</a>
                            </li>
                        </ol>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="home">
                        <ol class="list-unstyled">
                            <li><span class="li-icon li-icon-1">1</span> <a href="article/141"
                                                                            title="Spring Boot 快速集成第三方登录功能"
                                                                            data-toggle="tooltip"
                                                                            data-placement="bottom">Spring Boot
                                快速集成第三方登录功能</a></li>
                            <li><span class="li-icon li-icon-2">2</span> <a href="article/140"
                                                                            title="JustAuth1.9.0版本正式来袭！Teambition、人人、Pinterest、Stack Overflow等尽收眼底！"
                                                                            data-toggle="tooltip"
                                                                            data-placement="bottom">JustAuth1.9.0版本正式来袭！Teambition、人人、Pinterest、Stack
                                Overflow等尽收眼底！</a></li>
                            <li><span class="li-icon li-icon-3">3</span> <a href="article/139"
                                                                            title="JustAuth升级到v1.8.1版本，新增AuthState工具类，可自动生成state"
                                                                            data-toggle="tooltip"
                                                                            data-placement="bottom">JustAuth升级到v1.8.1版本，新增AuthState工具类，可自动生成state</a>
                            </li>
                        </ol>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="messages">
                        <ol class="list-unstyled">
                            <li><span class="li-icon li-icon-1">1</span> <a href="article/117"
                                                                            title="DBlog开源博客新增博客迁移功能（支持多个站点）"
                                                                            data-toggle="tooltip"
                                                                            data-placement="bottom">DBlog开源博客新增博客迁移功能（支持多个站点）</a>
                            </li>
                            <li><span class="li-icon li-icon-2">2</span> <a href="article/12" title="查看本机IP、端口以及删掉指定程序"
                                                                            data-toggle="tooltip"
                                                                            data-placement="bottom">查看本机IP、端口以及删掉指定程序</a>
                            </li>
                            <li><span class="li-icon li-icon-3">3</span> <a href="article/67" title="Java常见异常种类"
                                                                            data-toggle="tooltip"
                                                                            data-placement="bottom">Java常见异常种类</a></li>
                            <li><span class="li-icon li-icon-4">4</span> <a href="article/51" title="奥林匹克公园一日游"
                                                                            data-toggle="tooltip"
                                                                            data-placement="bottom">奥林匹克公园一日游</a></li>
                        </ol>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
            <div class="sidebar-module">
                <h5 class="sidebar-title"><i class="fa fa-info icon"></i> <strong>网站信息</strong></h5>
                <ul class="ul-default">
                    <li><i class="fa fa-file fa-fw"></i>文章总数：140 篇</li>
                    <li><i class="fa fa-tags fa-fw"></i>标签总数：46 个</li>
                    <li><i class="fa fa-folder-open fa-fw"></i>分类总数：12 个</li>
                    <li><i class="fa fa-comments fa-fw"></i>留言数量：614 条</li>
                    <li><i class="fa fa-calendar fa-fw"></i>运行天数：996天</li>
                    <li><i class="fa fa-pencil-square fa-fw"></i>最后更新：2018年07月17日18点</li>
                </ul>
            </div>
            <div class="clear"></div>
            <div class="sidebar-module ad">
                <div class="ad-sidebar-bottom zyd-ad" data-position="sidebar_2"></div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12 zhyd-container">
            <div class="zyd-ad" data-position="index_1" style="margin-bottom: 10px;max-height: 135px;"></div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-6 zhyd-container">
            <div class="zhyd-box">
                <div class="category">
                    <div style="color: #e04620;">
                        <i class="fa fa-fire fa-fw fa-2x"></i>热门文章
                    </div>
                </div>
                <div class="zhyd-content">
                    <div class="row">
                        <div class="col-md-12 col-xs-12 overflow-initial">
                            <ul class="list-unstyled alist">
                                <li class="item-date">02-01</li>
                                <li class="item-title item-title-0"><a class="t" href="article/78"
                                                                       data-original-title="5680人浏览了该文章"
                                                                       data-toggle="tooltip" data-placement="bottom">Given
                                    final block not properly padded异常解决方案</a> <br/>
                                    <div class="item-head">
                                        <figure class="zhyd-thumbnail" style="float: left;margin-right: 20px;">
                                            <a href="article/78"> <img
                                                    data-original="http://cdn.zhyd.me/flyat/cover/20170503151632291.png-type_cover"
                                                    class="img-responsive lazy-img" alt="热门文章"
                                                    style="float: left;width: 150px;height: 120px;"/></a>
                                        </figure>
                                        <div class="item-head-desc">
                                            java通过aes加密报错javax.crypto.BadPaddingException: Given final block not
                                            properly padded的解决方案
                                        </div>
                                    </div>
                                </li>
                                <li class="item-date">02-07</li>
                                <li class="item-title item-title-1"><a class="t" href="article/80"
                                                                       data-original-title="5049人浏览了该文章"
                                                                       data-toggle="tooltip" data-placement="bottom">Springboot
                                    + Freemarker项目中使用自定义注解</a> <br/></li>
                                <li class="item-date">02-07</li>
                                <li class="item-title item-title-1"><a class="t" href="article/80"
                                                                       data-original-title="5049人浏览了该文章"
                                                                       data-toggle="tooltip" data-placement="bottom">Springboot
                                    + Freemarker项目中使用自定义注解</a> <br/></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-6 zhyd-container">
            <div class="zhyd-box">
                <div class="category">
                    <div>
                        <i class="fa fa-css3 fa-fw fa-2x"></i>前端技术
                    </div>
                </div>
                <div class="zhyd-content">
                    <div class="row">
                        <div class="col-md-12 col-xs-12 overflow-initial">
                            <ul class="list-unstyled alist">
                                <li class="item-date">08-22</li>
                                <li class="item-title item-title-0"><a class="t" href="article/116"
                                                                       data-original-title="1050人浏览了该文章"
                                                                       data-toggle="tooltip" data-placement="bottom">echarts统计图中世界国家汉化表及汉化方式</a>
                                    <br/>
                                    <div class="item-head">
                                        <figure class="zhyd-thumbnail" style="float: left;margin-right: 20px;">
                                            <a href="article/116"> <img
                                                    data-original="http://cdn.zhyd.me/zhyd/cover/20180822134411541.jpg-type_cover"
                                                    class="img-responsive lazy-img" alt="前端技术文章列表封面"
                                                    style="float: left;width: 150px;height: 120px;"/></a>
                                        </figure>
                                        <div class="item-head-desc">
                                            echarts中世界国家汉化表，以及超详细的汉化步骤...
                                        </div>
                                    </div>
                                </li>
                                <li class="item-date">06-09</li>
                                <li class="item-title item-title-1"><a class="t" href="article/101"
                                                                       data-original-title="1029人浏览了该文章"
                                                                       data-toggle="tooltip" data-placement="bottom">input
                                    type=file accept中可以限制的文件类型</a> <br/></li>
                                <li class="item-date">02-07</li>
                                <li class="item-title item-title-1"><a class="t" href="article/80"
                                                                       data-original-title="5049人浏览了该文章"
                                                                       data-toggle="tooltip" data-placement="bottom">Springboot
                                    + Freemarker项目中使用自定义注解</a> <br/></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-6 zhyd-container">
            <div class="zhyd-box">
                <div class="category">
                    <div>
                        <i class="fa fa-coffee fa-fw fa-2x"></i>后端技术
                    </div>
                </div>
                <div class="zhyd-content">
                    <div class="row">
                        <div class="col-md-12 col-xs-12 overflow-initial">
                            <ul class="list-unstyled alist">
                                <li class="item-date">07-03</li>
                                <li class="item-title item-title-0"><a class="t" href="article/136"
                                                                       data-original-title="241人浏览了该文章"
                                                                       data-toggle="tooltip" data-placement="bottom">Springboot系列之RestApi中获取枚举类属性的几种方式</a>
                                    <br/>
                                    <div class="item-head">
                                        <figure class="zhyd-thumbnail" style="float: left;margin-right: 20px;">
                                            <a href="article/136"> <img
                                                    data-original="http://cdn.zhyd.me/zhyd/cover/20190703191930396.jpg-type_cover"
                                                    class="img-responsive lazy-img" alt="后端技术文章列表封面"
                                                    style="float: left;width: 150px;height: 120px;"/></a>
                                        </figure>
                                        <div class="item-head-desc">
                                            我们在日常开发中经常会遇到，实体类中的枚举属性，在通过`@ResponseBody`注解返回到前端后，默认被解析成了枚举对象的`name`值，当我们需要获取枚举类的详细属性时就会变得非常麻烦，今天给大家分享几种常用的获取枚举类属性的方式。
                                        </div>
                                    </div>
                                </li>
                                <li class="item-date">06-01</li>
                                <li class="item-title item-title-1"><a class="t" href="article/99"
                                                                       data-original-title="4665人浏览了该文章"
                                                                       data-toggle="tooltip" data-placement="bottom">Nginx做反向代理之后,访问项目跳转到localhost</a>
                                    <br/></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-6 zhyd-container">
            <div class="zhyd-box">
                <div class="category">
                    <div>
                        <i class="fa fa-linux fa-fw fa-2x"></i>Linux编程
                    </div>
                </div>
                <div class="zhyd-content">
                    <div class="row">
                        <div class="col-md-12 col-xs-12 overflow-initial">
                            <ul class="list-unstyled alist">
                                <li class="item-date">06-27</li>
                                <li class="item-title item-title-0"><a class="t" href="article/108"
                                                                       data-original-title="1516人浏览了该文章"
                                                                       data-toggle="tooltip" data-placement="bottom">就在今天，阿里云挂了！！</a>
                                    <br/>
                                    <div class="item-head">
                                        <figure class="zhyd-thumbnail" style="float: left;margin-right: 20px;">
                                            <a href="article/108"> <img
                                                    data-original="http://cdn.zhyd.me/flyat/cover/20170502143953315.jpg-type_cover"
                                                    class="img-responsive lazy-img" alt="Linux编程文章列表封面"
                                                    style="float: left;width: 150px;height: 120px;"/></a>
                                        </figure>
                                        <div class="item-head-desc">
                                            就在今天，阿里云挂了！！
                                        </div>
                                    </div>
                                </li>
                                <li class="item-date">06-01</li>
                                <li class="item-title item-title-1"><a class="t" href="article/99"
                                                                       data-original-title="4665人浏览了该文章"
                                                                       data-toggle="tooltip" data-placement="bottom">Nginx做反向代理之后,访问项目跳转到localhost</a>
                                    <br/></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-6 zhyd-container">
            <div class="zhyd-box">
                <div class="category">
                    <div>
                        <i class="fa fa-cube fa-fw fa-2x"></i>开发工具
                    </div>
                </div>
                <div class="zhyd-content">
                    <div class="row">
                        <div class="col-md-12 col-xs-12 overflow-initial">
                            <ul class="list-unstyled alist">
                                <li class="item-date">07-18</li>
                                <li class="item-title item-title-0"><a class="t" href="article/114"
                                                                       data-original-title="1928人浏览了该文章"
                                                                       data-toggle="tooltip" data-placement="bottom">使用yuicompressor压缩js和css文件的两种方式</a>
                                    <br/>
                                    <div class="item-head">
                                        <figure class="zhyd-thumbnail" style="float: left;margin-right: 20px;">
                                            <a href="article/114"> <img
                                                    data-original="http://cdn.zhyd.me/flyat/cover/20170706181555350.png-type_cover"
                                                    class="img-responsive lazy-img" alt="开发工具文章列表封面"
                                                    style="float: left;width: 150px;height: 120px;"/></a>
                                        </figure>
                                        <div class="item-head-desc">
                                            使用yuicompressor压缩js和css文件的两种方式：命令行和maven
                                        </div>
                                    </div>
                                </li>
                                <li class="item-date">07-18</li>
                                <li class="item-title item-title-1"><a class="t" href="article/113"
                                                                       data-original-title="735人浏览了该文章"
                                                                       data-toggle="tooltip" data-placement="bottom">“码一码”公众号欢迎关注</a>
                                    <br/></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-6 zhyd-container">
            <div class="zhyd-box">
                <div class="category">
                    <div>
                        <i class="fa fa-folder-open-o fa-fw fa-2x"></i>其他文章
                    </div>
                </div>
                <div class="zhyd-content">
                    <div class="row">
                        <div class="col-md-12 col-xs-12 overflow-initial">
                            <ul class="list-unstyled alist">
                                <li class="item-date">04-19</li>
                                <li class="item-title item-title-0"><a class="t" href="article/130"
                                                                       data-original-title="652人浏览了该文章"
                                                                       data-toggle="tooltip" data-placement="bottom">天下开源一大抄，看你会抄不会抄</a>
                                    <br/>
                                    <div class="item-head">
                                        <figure class="zhyd-thumbnail" style="float: left;margin-right: 20px;">
                                            <a href="article/130"> <img
                                                    data-original="http://cdn.zhyd.me/flyat/cover/20170406180005776.png-type_cover"
                                                    class="img-responsive lazy-img" alt="其他文章列表封面"
                                                    style="float: left;width: 150px;height: 120px;"/></a>
                                        </figure>
                                        <div class="item-head-desc">
                                            天下开源一大抄，看你会抄不会抄
                                        </div>
                                    </div>
                                </li>
                                <li class="item-date">04-18</li>
                                <li class="item-title item-title-1"><a class="t" href="article/129"
                                                                       data-original-title="299人浏览了该文章"
                                                                       data-toggle="tooltip" data-placement="bottom">正确提问方式</a>
                                    <br/></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade nav-search-box" tabindex="-1" role="dialog" aria-labelledby="navSearchModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="padding: 5px 15px;">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: 10px;">
                    <span aria-hidden="true">&times;</span></button>
                <h4><i class="fa fa-search"></i>搜索文章</h4>
            </div>
            <div class="modal-body">
                <form action="index/1" method="post" class="form-horizontal searchForm" id="searchForm">
                    <input type="hidden" name="pageNumber" value="1"/>
                    <div class="input-group bottom-line">
                        <input type="text" class="form-control br-none" name="keywords" value="" required="required"
                               placeholder="输入搜索内容"/>
                        <span class="input-group-btn"> <button class="btn btn-default br-none nav-search-btn pointer"
                                                               type="submit"> <i
                                class="fa fa-search"></i>搜索</button> </span>
                    </div>
                    <div class="clear"></div>
                    <ul class="list-unstyled list-inline search-hot">
                        <li><strong style="position: relative;top: 2px;color: #999999;">热门搜索：</strong></li>
                        <li><a class="pointer" rel="external nofollow"> <span class="label label-danger">OneBlog</span></a>
                        </li>
                        <li><a class="pointer" rel="external nofollow"> <span
                                class="label label-default">Java</span></a></li>
                        <li><a class="pointer" rel="external nofollow"> <span
                                class="label label-primary">Springboot</span></a></li>
                        <li><a class="pointer" rel="external nofollow"> <span
                                class="label label-success">Linux</span></a></li>
                        <li><a class="pointer" rel="external nofollow"> <span class="label label-info">Maven</span></a>
                        </li>
                        <li><a class="pointer" rel="external nofollow"> <span
                                class="label label-warning">Bootstrap</span></a></li>
                    </ul>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade bs-example-modal-sm" id="comment-detail-modal" tabindex="-1" role="dialog"
     aria-labelledby="comment-detail-modal-label">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="comment-detail-modal-label">评论信息框</h4>
                <small><i class="fa fa-lightbulb-o fa-fw"></i>可以通过QQ号实时获取昵称和头像</small>
            </div>
            <div class="modal-body">
                <form id="detail-form">
                    <input type="hidden" name="avatar"/>
                    <div class="form-group input-logo">
                        <input type="text" class="form-control" name="qq" placeholder="选填" value=""/>
                        <img class="pull-left hide" alt=""/>
                        <span class="fa fa-qq pull-left" aria-hidden="true">QQ</span>
                    </div>
                    <div class="form-group input-logo">
                        <input type="text" class="form-control" name="nickname" placeholder="必填" value="匿名"/>
                        <span class="fa fa-user pull-left" aria-hidden="true">昵称</span>
                    </div>
                    <div class="form-group input-logo">
                        <input type="text" class="form-control" name="email" placeholder="选填"/>
                        <span class="fa fa-envelope pull-left" aria-hidden="true">邮箱</span>
                    </div>
                    <div class="form-group input-logo">
                        <input type="text" class="form-control" name="url" placeholder="选填"/>
                        <span class="fa fa-globe pull-left" aria-hidden="true">网址</span>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-default btn-sm" id="detail-form-btn"><i
                                class="fa fa-smile-o"></i>提交评论
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="reward" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">山无棱江水为竭，冬雷震震夏雨雪，才敢请君舍</h4>
            </div>
            <div class="modal-body">
                <div class="col-sm-12 col-md-12" style="text-align: center;margin: 0 auto;float: initial">
                    <a href="http://cdn.zhyd.me/zhyd/qrcode/zfb_code.png" class="showImage" title="支付宝收钱码"
                       rel="external nofollow"> <img src="http://cdn.zhyd.me/zhyd/qrcode/zfb_code.png" alt="支付宝收钱码"
                                                     class="img-rounded" style="width: 250px;height: auto;"/></a>
                    <a href="http://cdn.zhyd.me/zhyd/qrcode/wx_code.png" class="showImage" title="微信收钱码"
                       rel="external nofollow"> <img src="http://cdn.zhyd.me/zhyd/qrcode/wx_code.png" alt="微信收钱码"
                                                     class="img-rounded" style="width: 250px;height: auto"/></a>
                </div>
                <div style="width: 100%;color: #a3a3a3;font-size: 16px;font-family: 'Microsoft YaHei';text-align: center;margin-top: 10px">
                    转账时请备注“
                    <strong>博客赞助</strong>”
                </div>
            </div>
        </div>
        <small class="font-bold"></small>
    </div>
    <small class="font-bold"></small>
</div>
<div class="clear blog-footer">
    <div class="container">
        <div class="col-xs-12 col-sm-4 col-md-4 text-left fade-in">
            <h4>其他链接</h4>
            <ul class="list-unstyled list-inline" style="padding: 4px;padding-left: 0;">
                <li>
                    <a href="http://shang.qq.com/wpa/qunwpa?idkey=9f986e9b33b1de953e1ef9a96cdeec990affd0ac7855e00ff103514de2027b60"
                       target="_blank" title="加入我的QQ交流群：190886500" data-toggle="tooltip" data-placement="bottom"
                       rel="external nofollow"> <i class="fa fa-qq"></i>QQ交流群</a></li>
                <li><a href="https://promotion.aliyun.com/ntms/act/ambassador/sharetouser.html?userCode=wylo59db"
                       target="_blank" title="史上最全的阿里云优惠券" data-toggle="tooltip" data-placement="bottom"
                       rel="external nofollow"> <i class="fa fa-fire fa-fw"></i>阿里云券</a></li>
                <li><a href="https://mi.aliyun.com/shop/19462" target="_blank" title="闲置域名出售" data-toggle="tooltip"
                       data-placement="bottom" rel="external nofollow"> <i
                        class="fa fa-globe fa-fw fa-spin"></i>域名出售</a></li>
                <li><a href="sitemap.html" target="_blank" title="网站地图" data-toggle="tooltip" data-placement="bottom">
                    <i class="fa fa-map-o fa-fw"></i>网站地图</a></li>
                <li><a href="recommended" title="站长推荐" data-toggle="tooltip" data-placement="bottom"> <i
                        class="fa fa-thumbs-o-up fa-fw"></i>站长推荐</a></li>
                <li><a href="updateLog" title="更新记录" data-toggle="tooltip" data-placement="bottom" rel="nofollow"> <i
                        class="fa fa-file-o fa-fw"></i>更新记录</a></li>
                <li><a href="archives" title="归档目录" data-toggle="tooltip" data-placement="bottom"> <i
                        class="fa fa-folder-o fa-fw"></i>归档目录</a></li>
                <li><a href="tool" title="推荐工具" data-toggle="tooltip" data-placement="bottom"> <i
                        class="fa fa-fire fa-fw"></i>推荐工具</a></li>
                <li><a href="disclaimer" title="免责声明" data-toggle="tooltip" data-placement="bottom" rel="nofollow"> <i
                        class="fa fa-file-o fa-fw"></i>免责声明</a></li>
            </ul>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4 text-left fade-in">
            <h4>关于本站</h4>
            <div style="padding: 4px;padding-left: 0;">
                <p style="white-space: initial;">个人技术类博客</p>
                <p style="white-space: initial;">写博客、记日志、闲聊扯淡鼓捣技术。</p>
            </div>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4 text-left fade-in">
            <h4>问题交流</h4>
            <div class="row" style="padding: 4px;padding-left: 0;">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="img-widget">
                        <div class="widget-header">
                            <a href="https://gitee.com/yadong.zhang/static/raw/master/wx/wechat_account.jpg"
                               target="_blank" class="showImage" title="[码一码]公众号" rel="external nofollow"> <img
                                    data-original="https://gitee.com/yadong.zhang/static/raw/master/wx/wechat_account.jpg"
                                    alt="[码一码]公众号" class="img-responsive img-rounded auto-shake lazy-img"/></a>
                        </div>
                        <div class="widget-footer">
                            <span>公众号</span>
                        </div>
                    </div>
                    <div class="img-widget">
                        <div class="widget-header">
                            <a href="https://gitee.com/yadong.zhang/static/raw/master/wx/wx.png" target="_blank"
                               class="showImage" title="添加微信(备注:加群)" rel="external nofollow"> <img
                                    data-original="https://gitee.com/yadong.zhang/static/raw/master/wx/wx.png"
                                    alt="添加微信(备注:加群)" class="img-responsive img-rounded auto-shake lazy-img"/></a>
                        </div>
                        <div class="widget-footer">
                            <span>微信(备注:加群)</span>
                        </div>
                    </div>
                    <div class="img-widget">
                        <div class="widget-header">
                            <a href="https://static.zhyd.me/static/img/qq_group.png" class="showImage"
                               title="QQ群(190886500)二维码" rel="external nofollow"> <img
                                    data-original="https://static.zhyd.me/static/img/qq_group.png"
                                    alt="QQ群(190886500)二维码" class="img-responsive img-rounded auto-shake lazy-img"/></a>
                        </div>
                        <div class="widget-footer">
                            <span>QQ群</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="footer">
    <div class="clear">
        <p>托管于 <a href="https://promotion.aliyun.com/ntms/act/ambassador/sharetouser.html?userCode=wylo59db"
                  target="_blank" title="阿里云-为了无法计算的价值" data-toggle="tooltip" data-placement="bottom"
                  rel="external nofollow">阿里云</a>&amp; <a href="https://www.qiniu.com/" target="_blank"
                                                          title="七牛云-国内领先的企业级云服务商" data-toggle="tooltip"
                                                          data-placement="bottom" rel="external nofollow">七牛云</a>&middot;
            <a href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank" title="查看备案信息"
               data-toggle="tooltip" data-placement="bottom" rel="external nofollow">鲁ICP备17054970号-1</a></p>
        <p>Copyright&copy;2016-2019 张亚东博客 保留所有权利 &middot; Powered by <a href="https://gitee.com/yadong.zhang/DBlog"
                                                                        title="OneBlog是一款简洁美观、自适应的Java博客系统..."
                                                                        data-toggle="tooltip" data-placement="right"
                                                                        target="_blank" rel="external nofollow">
            <strong>OneBlog</strong></a>&middot; <a
                href="http://tongji.baidu.com/web/welcome/ico?s=590226d2f4ffbf051442eb75f37333c9" target="_blank"
                title="点击查看张亚东博客网站统计详情" data-toggle="tooltip" data-placement="right" rel="external nofollow"> <i
                class="fa fa-bar-chart-o fa-fw"></i>网站统计</a></p>
        <div class="inline external-links">
            <a>友情链接：</a>
            <a href="http://www.nbclass.com/" target="_blank" title="" data-toggle="tooltip"
               data-placement="right">智博客</a>
            <a href="http://www.javadaba.com" target="_blank" title="Java资源分享站" data-toggle="tooltip"
               data-placement="right">Java资源分享</a>
            <a href="http://mushiming.top" target="_blank" title="技术分享" data-toggle="tooltip" data-placement="right">穆世明博客</a>
            <a href="https://www.1990v.cn/" target="_blank" title="分享PHP及web前端技术的个人博客" data-toggle="tooltip"
               data-placement="right">后起之秀blog</a>
            <a href="https://www.chenshuangyi.com" target="_blank" title="十年如一日，不断学习。" data-toggle="tooltip"
               data-placement="right">陈双义博客</a>
            <a href="https://zgboke.org " target="_blank" title="收录国内优秀独立博客！" data-toggle="tooltip"
               data-placement="right">中国博客联盟</a>
            <a href="http://storeweb.cn" target="_blank" title="个人网站的商店，这里是我们的“个人网站”共享与发布平台" data-toggle="tooltip"
               data-placement="right">个站商店</a>
            <a href="https://www.qs5.org" target="_blank" title="简单小屋,青青优雅..." data-toggle="tooltip"
               data-placement="right">青石坞</a>
            <a href="https://limh.me" target="_blank" title="明月浩空 - 记录生活点滴，这苦涩的根必将会迎来满园芬芳！" data-toggle="tooltip"
               data-placement="right">明月浩空</a>
            <a href="links" title="更多链接" data-toggle="tooltip" data-placement="right"> <i
                    class="fa fa-plus"></i>更多链接</a>
        </div>
    </div>
</footer>
<a class="to-top" title="点击返回顶部" data-toggle="tooltip" data-placement="bottom"></a>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.0/js/bootstrap.min.js"
        type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery_lazyload/1.9.7/jquery.lazyload.min.js"
        type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/2.5.1/jquery-confirm.min.js"
        type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"
        type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/2.3.0/mustache.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/js-xss/0.3.3/xss.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/nprogress/0.2.0/nprogress.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.1/js/bootstrapValidator.min.js"
        type="text/javascript"></script>
<script type="text/javascript">var appConfig = {
    wwwPath: '',
    staticPath: 'https://static.zhyd.me/static',
    qiuniuBasePath: 'http://cdn.zhyd.me/',
    wxPraiseCode: 'zhyd/qrcode/wx_code.png',
    zfbPraiseCode: 'zhyd/qrcode/zfb_code.png',
    uid: '',
    username: '',
    blog: ''
}</script>
<script type="text/javascript" src="https://static.zhyd.me/static/js/zhyd.core.min.js"></script>
<script type="text/javascript">(function () {
    var hm = document.createElement("script\
    hm.src = "
    https: //hm.baidu.com/hm.js?efa8a312aef0c2214fd566b50ef6ff7a";
            var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();
(function () {
    var bp = document.createElement('script');
    var curProtocol = window.location.protocol.split(':')[0];
    if (curProtocol === 'https') {
        bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
    } else {
        bp.src = 'http://push.zhanzhang.baidu.com/push.js';
    }
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(bp, s);
})(); // var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://\document.write(unescape("%3Cspan id='cnzz_stat_icon_1273049101'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s19.cnzz.com/z_stat.php%3Fid%3D1273049101%26online%3D1%26show%3Dline' type='text/javascript'%3E%3C/script%3E"));
</script>
<script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>(adsbygoogle = window.adsbygoogle || []).push({
    google_ad_client: "ca-pub-5952456993869384",
    enable_page_level_ads: true
});</script>
</body>
</html>