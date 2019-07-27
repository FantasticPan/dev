<#include "../include/macros.ftl"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title>基于SpringBoot+Shiro+Redis+ElasticSearch实现的博客系统，欢迎注册使用 | 言曌博客</title>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="renderer" content="webkit">
    <meta name="theme-color" content="#fff">
    <meta name="keywords" content="SpringBoot">
    <meta name="description" content="博主于去年下半年辞职到过年这段时间，重新整了一下博客系统。 预览地址： &nbsp;一、功能介绍本博客系统基于 SpringBoot 2.x ，支持">
    <@css></@css>
    <style>
        ::-webkit-scrollbar {
            width: 6px;
            height: 6px;
            background-color: #eee;
        }

        ::-webkit-scrollbar-thumb {
            background-color: #3798e8;
        }

        ::-webkit-scrollbar-track {
            background-color: #eee;
        }

    </style>
    <link rel="stylesheet" href="/editormd/editormd.preview.min.css"/>
</head>
<body>
<link rel="stylesheet" href="http://blog-cdn.codergroup.cn/static/plugins/highlight/highlight.css">
<style>
    .dp-highlighter {
        border: none;
        background-color: #F5F2F0;
    }

    .dp-highlighter:hover {
        border: none;
        background-color: #F5F2F0;
    }

    h2 {
        border-bottom: 1px solid red;
    }

    .entry-title {
        background: #f8f8f8;
    }
</style>
<div id="page" class="hfeed site">
    <@header></@header>
    <nav class="breadcrumb">
        <a class="crumbs" href=""><i class="fa fa-home"></i>首页</a>
        <i class="fa fa-angle-right"></i>
        <a href="category/resource-share">资源分享</a>
        <i class="fa fa-angle-right"></i>
        <a href="category/springboot">SpringBoot教程</a>
        <i class="fa fa-angle-right"></i>
        正文
    </nav>

    <div id="content" class="site-content">
        <div id="primary" class="content-area">

            <main id="main" class="site-main" role="main">
                <article class="post">
                    <header class="entry-header">
                        <h1 class="entry-title">${article.articleTitle}</h1>
                    </header><!-- .entry-header -->

                    <div class="entry-content">
                        <div class="single-content" id="md_content">${article.articleHtmlContent}</div>
                        <#--<div class="article-content" id="md_content">${article.articleHtmlContent}</div>-->
                        <div class="clear"></div>
                        <div class="separater-line"><span>正文到此结束</span></div>
                        <div id="social">
                            <div class="social-main">
                                <span class="like">
                                     <a href="javascript:void(0);" data-id="9352" title="点赞"
                                        class="favorite">
                                         <i class="fa fa-thumbs-up"></i>赞
                                         <i class="count">28</i>
                                    </a>
                                </span>
                                <div class="shang-p">
                                    <div class="shang-empty"><span></span></div>
                                    <span class="tipso_style" id="tip-p" data-tipso="
 <span id=&quot;shang&quot;> <span class=&quot;shang-main&quot;><h4><i class=&quot;be be-favorite&quot; aria-hidden=&quot;true&quot;></i> 如果认为本文对您有所帮助请赞助本站</h4> <span class=&quot;shang-img&quot;> <img src=&quot;http://imgs.zmingcx.com/wp-content/uploads/2015/11/alipay.png&quot; alt=&quot;alipay&quot;/><h4>支付宝扫一扫赞助</h4> </span> <span class=&quot;shang-img&quot;> <img src=&quot;http://imgs.zmingcx.com/wp-content/uploads/2015/11/alipay.png&quot; alt=&quot;weixin&quot;/><h4>微信钱包扫描赞助</h4> </span> <span class=&quot;clear&quot;></span> </span> </span>"> <span
                                            class="shang-s"><a title="赞助本站">赏</a></span> </span>
                                    <span class="shang-s">
                                        <a href="p/shang" target="_blank">赏</a>
                                    </span>
                                </div>
                                <div class="share-sd">
                                    <span class="share-s"><a href="javascript:void(0)" id="share-s" title="分享"><i
                                            class="fa fa-share-alt"></i>分享</a></span>
                                    <div id="share">
                                        <ul class="bdsharebuttonbox bdshare-button-style1-16"
                                            data-bd-bind="1541944366515">
                                            <li><a title="更多" class="bds_more fa fa-plus-square" data-cmd="more"
                                                   onclick="return false;" href="#"></a></li>
                                            <li><a title="分享到QQ空间" class="fa fa-qq" data-cmd="qzone"
                                                   onclick="return false;" href="#"></a></li>
                                            <li><a title="分享到新浪微博" class="fa fa-weibo" data-cmd="tsina"
                                                   onclick="return false;" href="#"></a></li>
                                            <li><a title="分享到腾讯微博" class="fa fa-pinterest-square" data-cmd="tqq"
                                                   onclick="return false;" href="#"></a></li>
                                            <li><a title="分享到人人网" class="fa fa-renren" data-cmd="renren"
                                                   onclick="return false;" href="#"></a></li>
                                            <li><a title="分享到微信" class="fa fa-weixin" data-cmd="weixin"
                                                   onclick="return false;" href="#"></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>

                        <footer class="single-footer">
                            <ul class="single-meta">
                                <li class="print">
                                    <a href="javascript:printme()" target="_self" title="打印">
                                        <i class="fa fa-print"></i>
                                    </a>
                                </li>
                                <li class="comment">
                                    <a href="#comments" rel="external nofollow">
                                        <i class="fa fa-comment-o"></i> 评论(${article.articleCommentCount})
                                    </a>
                                </li>
                                <li class="views"><i class="fa fa-eye"></i> 浏览(${article.articleViewCount})</li>
                                <li class="r-hide"><a href="javascript:pr()" title="侧边栏"><i
                                        class="fa fa-caret-left"></i> <i class="fa fa-caret-right"></i> 全屏</a></li>
                            </ul>
                            <ul id="fontsize">
                                <li>A+</li>
                            </ul>
                            <div class="single-cat-tag">
                                <div class="single-cat">所属分类：
                                    <a href="category/resource-share" rel="category tag">资源分享</a>
                                    <a href="category/springboot" rel="category tag">SpringBoot教程</a>
                                </div>
                            </div>
                        </footer><!-- .entry-footer -->

                        <div class="clear"></div>

                    </div><!-- .entry-content -->

                </article><!-- #post -->

                <div class="single-tag">
                    <ul class="wow fadeInUp" data-wow-delay="0.3s">
                        <li>
                            <a href="tag/springboot" rel="tag" style="background:#4fad7b">SpringBoot</a>
                        </li>
                    </ul>
                </div>

                <div class="authorbio wow fadeInUp" data-wow-delay="0.3s">
                    <img alt="" src="http://blog-cdn.codergroup.cn/uploads/2019/4/1f00317cbaaf712c93e481d021e93791"
                         class="avatar avatar-64 photo" height="64" width="64">
                    <ul class="spostinfo">
                        <li><strong>版权声明：</strong>本站原创文章，于 2019年02月07日，由
                            <b><a href="author/saysky"
                                  rel="author">言曌
                            </a>
                            </b> 发表。
                        </li>
                        <li class="reprinted"><strong>转载请注明：</strong>
                            <a href="article/9352" rel="bookmark">
                                基于SpringBoot+Shiro+Redis+ElasticSearch实现的博客系统，欢迎注册使用| 言曌博客
                            </a>
                        </li>
                    </ul>
                    <div class="clear"></div>
                </div>

                <div id="related-img" class="wow fadeInUp" data-wow-delay="0.3s">
                    <div id="scrolldiv">
                        <ul>
                            <li class="scrolltext-title">
                                <div class="r4">
                                    <div class="related-site">
                                        <figure class="related-site-img">
                                                <span class="load">
                                                    <a href="article/8402">
                                                        <img src="http://blog-cdn.codergroup.cn/static/images/thumbnail/img_3.jpg"
                                                             alt="CoderGroup —— 基于 SpringBoot 实现的开发者社区，欢迎入驻">
                                                    </a>
                                                </span>
                                        </figure>
                                        <div class="related-title">
                                            <a href="article/8402">CoderGroup —— 基于 SpringBoot 实现的开发者社区，欢迎入驻</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="scrolltext-title">
                                <div class="r4">
                                    <div class="related-site">
                                        <figure class="related-site-img">
                                                <span class="load">
                                                    <a href="article/7431">
                                                        <img src="http://blog-cdn.codergroup.cn/static/images/thumbnail/img_6.jpg"
                                                             alt="SpringBoot + Spring Security + Thymeleaf 实现权限管理登录">
                                                    </a>
                                                </span>
                                        </figure>
                                        <div class="related-title">
                                            <a href="article/7431">SpringBoot + Spring Security + Thymeleaf 实现权限管理登录</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="scrolltext-title">
                                <div class="r4">
                                    <div class="related-site">
                                        <figure class="related-site-img">
                                                <span class="load">
                                                    <a href="article/9352">
                                                        <img src="http://blog-cdn.codergroup.cn/uploads/2019/2/0c565ffe8be0080b5f95d81edcbc458a"
                                                             alt="基于SpringBoot+Shiro+Redis+ElasticSearch实现的博客系统，欢迎注册使用">
                                                    </a>
                                                </span>
                                        </figure>
                                        <div class="related-title">
                                            <a href="article/9352">基于SpringBoot+Shiro+Redis+ElasticSearch实现的博客系统，欢迎注册使用</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="scrolltext-title">
                                <div class="r4">
                                    <div class="related-site">
                                        <figure class="related-site-img">
                                                <span class="load">
                                                    <a href="article/8115">
                                                        <img src="http://blog-cdn.codergroup.cn/static/images/thumbnail/img_0.jpg"
                                                             alt="SpringBoot Spring Security5 实现验证码登录">
                                                    </a>
                                                </span>
                                        </figure>
                                        <div class="related-title">
                                            <a href="article/8115">SpringBoot Spring Security5 实现验证码登录</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                </div>

                <nav class="nav-single wow fadeInUp" data-wow-delay="0.3s">
                    <a href="article/9302" rel="prev">
                        <span class="meta-nav">
                            <span class="post-nav">
                                <i class="fa fa-angle-left"></i> 上一篇
                            </span><br>Shiro Freemarker标签的使用
                        </span>
                    </a>

                    <span class="meta-nav">
                        <span class="post-nav">没有了<br></span>已是最后的文章
                    </span>
                    <div class="clear"></div>
                </nav>

                <nav class="navigation post-navigation" role="navigation">
                    <h2 class="screen-reader-text">文章导航</h2>
                    <div class="nav-links">
                        <div class="nav-previous">
                            <a href="article/9302" rel="prev">
                                <span class="meta-nav-r" aria-hidden="true">
                                    <i class="fa fa-angle-left"></i>
                                </span>
                            </a>
                        </div>
                    </div>
                </nav>

                <!-- 引用 -->
                <div class="scroll-comments"></div>

                <link type="text/css" rel="stylesheet"
                      href="http://blog-cdn.codergroup.cn/static/plugins/OwO/OwO.min.css">
                <style></style>
                <div id="comments" class="comments-area">
                    <div id="respond" class="comment-respond wow fadeInUp" data-wow-delay="0.3s">
                        <h3 id="reply-title" class="comment-reply-title">发表评论
                            <small><a rel="nofollow" id="cancel-comment-reply-link" href="javascript:void(0)"
                                      style="display: none;">取消回复</a></small>
                        </h3>
                        <form action="" method="post"><p class="comment-form-comment">
                            <div class="OwO"></div>
                            <textarea id="commentContent" class="comment-input-content" name="commentContent" rows="4"
                                      tabindex="1" placeholder="赶快评论一个吧！"></textarea>
                            <div class="native-message" style="display: none"></div>
                            </p>
                            <div id="comment-author-info"><p class="comment-form-author"><label for="author">昵称<span
                                    class="required">*</span></label> <input type="text"
                                                                             class="comment-input comment-input-who"
                                                                             name="commentAuthor" id="commentAuthor">
                            </p>
                                <p class="comment-form-email"><label for="email">邮箱<span
                                        class="required">*</span></label> <input type="text"
                                                                                 class="comment-input comment-input-email"
                                                                                 name="commentAuthorEmail"
                                                                                 id="commentAuthorEmail"></p>
                                <p class="comment-form-url"><label for="url">网址</label> <input type="text"
                                                                                               class="comment-input comment-input-website"
                                                                                               name="commentAuthorUrl"
                                                                                               id="commentAuthorUrl">
                                </p></div>
                            <div class="clear"></div>
                            <p class="form-submit"><input id="submit" name="submit" type="button" tabindex="5"
                                                          value="提交评论"> <input type="hidden" name="postId" value="9352">
                                <input type="hidden" name="commentParent" id="commentParent" value="0"></p></form>
                    </div>
                    <h2 class="comments-title wow fadeInUp" data-wow-delay="0.3s"> 目前评论：50</h2>
                    <ul class="comment-list" id="comments-list">
                        <li class="comment even thread-even parent" id="comment-id-4150">
                            <div class="comment-body">
                                <div class="comment-author vcard"><img class="avatar" src="static/images/avatar/23.jpeg"
                                                                       alt="avatar"> <strong> <a
                                        href="javascript:void(0)" rel="external nofollow"
                                        class="native-list-one-head-name" target="_blank">小咸鱼2333</a> </strong> <span
                                        class="comment-meta commentmetadata native-comment-ua"> <span class="ua-info"
                                                                                                      style="display: none;"> <span
                                        class="WB-OS native-comment-ua-info" style="display: none;"> Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                        class="comment-aux"> <span class="reply"> <a rel="nofollow" at="4150"
                                                                                     class="native-list-one-footer-reback"
                                                                                     href="javascript:void(0)">回复</a> </span> 2019-07-11 17:47 </span> </span>
                                </div>
                                <p><img src='static/plugins/OwO/paopao/便便.png' alt='便便.png'
                                        style='vertical-align: middle;'></p></div>
                        </li>
                        <li class="comment even thread-even parent" id="comment-id-4146">
                            <div class="comment-body">
                                <div class="comment-author vcard"><img class="avatar"
                                                                       src="/gravatar.loli.net/avatar/31364b6bddc2bde62ff65601e02de49d?s=256&d=mm"
                                                                       alt="avatar"> <strong> <a
                                        href="javascript:void(0)" rel="external nofollow"
                                        class="native-list-one-head-name" target="_blank">陌夏</a> </strong> <span
                                        class="comment-meta commentmetadata native-comment-ua"> <span class="ua-info"
                                                                                                      style="display: none;"> <span
                                        class="WB-OS native-comment-ua-info" style="display: none;"> Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                        class="comment-aux"> <span class="reply"> <a rel="nofollow" at="4146"
                                                                                     class="native-list-one-footer-reback"
                                                                                     href="javascript:void(0)">回复</a> </span> 2019-07-08 17:26 </span> </span>
                                </div>
                                <p>看着还不过，不过文章编辑能加上markdown就更好了,富文本还是太麻烦</p></div>
                        </li>
                        <li class="comment even thread-even parent" id="comment-id-4136">
                            <div class="comment-body">
                                <div class="comment-author vcard"><img class="avatar" src="static/images/avatar/19.jpeg"
                                                                       alt="avatar"> <strong> <a
                                        href="javascript:void(0)" rel="external nofollow"
                                        class="native-list-one-head-name" target="_blank">testadmin</a> </strong> <span
                                        class="comment-meta commentmetadata native-comment-ua"> <span class="ua-info"
                                                                                                      style="display: none;"> <span
                                        class="WB-OS native-comment-ua-info" style="display: none;"> Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                        class="comment-aux"> <span class="reply"> <a rel="nofollow" at="4136"
                                                                                     class="native-list-one-footer-reback"
                                                                                     href="javascript:void(0)">回复</a> </span> 2019-06-28 10:02 </span> </span>
                                </div>
                                <p>...</p></div>
                        </li>
                        <li class="comment even thread-even parent" id="comment-id-4135">
                            <div class="comment-body">
                                <div class="comment-author vcard"><img class="avatar"
                                                                       src="/gravatar.loli.net/avatar/?s=256&d=mm"
                                                                       alt="avatar"> <strong> <a
                                        href="javascript:void(0)" rel="external nofollow"
                                        class="native-list-one-head-name" target="_blank">请求签</a> </strong> <span
                                        class="comment-meta commentmetadata native-comment-ua"> <span class="ua-info"
                                                                                                      style="display: none;"> <span
                                        class="WB-OS native-comment-ua-info" style="display: none;"> Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                        class="comment-aux"> <span class="reply"> <a rel="nofollow" at="4135"
                                                                                     class="native-list-one-footer-reback"
                                                                                     href="javascript:void(0)">回复</a> </span> 2019-06-25 14:31 </span> </span>
                                </div>
                                <p>的顶顶顶顶顶</p></div>
                        </li>
                        <li class="comment even thread-even parent" id="comment-id-4134">
                            <div class="comment-body">
                                <div class="comment-author vcard"><img class="avatar"
                                                                       src="/gravatar.loli.net/avatar/3c3854d9959d258f16343d32d74098c2?s=256&d=mm"
                                                                       alt="avatar"> <strong> <a
                                        href="javascript:void(0)" rel="external nofollow"
                                        class="native-list-one-head-name" target="_blank">root</a> </strong> <span
                                        class="comment-meta commentmetadata native-comment-ua"> <span class="ua-info"
                                                                                                      style="display: none;"> <span
                                        class="WB-OS native-comment-ua-info" style="display: none;"> Mozilla/5.0 (Linux; U; Android 8.1.0; zh-cn; V1813BT Build/OPM1.171019.026) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.132 MQQBrowser/9.0 Mobile Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                        class="comment-aux"> <span class="reply"> <a rel="nofollow" at="4134"
                                                                                     class="native-list-one-footer-reback"
                                                                                     href="javascript:void(0)">回复</a> </span> 2019-06-24 14:12 </span> </span>
                                </div>
                                <p>66</p></div>
                        </li>
                        <li class="comment even thread-even parent" id="comment-id-4133">
                            <div class="comment-body">
                                <div class="comment-author vcard"><img class="avatar"
                                                                       src="/gravatar.loli.net/avatar/0f422e6885643652649feaa5d48be8f9?s=256&d=mm"
                                                                       alt="avatar"> <strong> <a
                                        href="http://www.baidu.com" rel="external nofollow"
                                        class="native-list-one-head-name" target="_blank">sdf</a> </strong> <span
                                        class="comment-meta commentmetadata native-comment-ua"> <span class="ua-info"
                                                                                                      style="display: none;"> <span
                                        class="WB-OS native-comment-ua-info" style="display: none;"> Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                        class="comment-aux"> <span class="reply"> <a rel="nofollow" at="4133"
                                                                                     class="native-list-one-footer-reback"
                                                                                     href="javascript:void(0)">回复</a> </span> 2019-06-23 23:47 </span> </span>
                                </div>
                                <p>@逐梦 test luk 2</p></div>
                        </li>
                        <li class="comment even thread-even parent" id="comment-id-4132">
                            <div class="comment-body">
                                <div class="comment-author vcard"><img class="avatar"
                                                                       src="/gravatar.loli.net/avatar/0f422e6885643652649feaa5d48be8f9?s=256&d=mm"
                                                                       alt="avatar"> <strong> <a
                                        href="http://www.baidu.com" rel="external nofollow"
                                        class="native-list-one-head-name" target="_blank">sdf</a> </strong> <span
                                        class="comment-meta commentmetadata native-comment-ua"> <span class="ua-info"
                                                                                                      style="display: none;"> <span
                                        class="WB-OS native-comment-ua-info" style="display: none;"> Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                        class="comment-aux"> <span class="reply"> <a rel="nofollow" at="4132"
                                                                                     class="native-list-one-footer-reback"
                                                                                     href="javascript:void(0)">回复</a> </span> 2019-06-23 23:47 </span> </span>
                                </div>
                                <p>test luk</p></div>
                        </li>
                        <li class="comment even thread-even parent" id="comment-id-4130">
                            <div class="comment-body">
                                <div class="comment-author vcard"><img class="avatar"
                                                                       src="/gravatar.loli.net/avatar/?s=256&d=mm"
                                                                       alt="avatar"> <strong> <a
                                        href="javascript:void(0)" rel="external nofollow"
                                        class="native-list-one-head-name" target="_blank">逐梦</a> </strong> <span
                                        class="comment-meta commentmetadata native-comment-ua"> <span class="ua-info"
                                                                                                      style="display: none;"> <span
                                        class="WB-OS native-comment-ua-info" style="display: none;"> Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                        class="comment-aux"> <span class="reply"> <a rel="nofollow" at="4130"
                                                                                     class="native-list-one-footer-reback"
                                                                                     href="javascript:void(0)">回复</a> </span> 2019-06-18 14:20 </span> </span>
                                </div>
                                <p>博主，Github中没有开源数据库表吗？？<img src='static/plugins/OwO/paopao/吃瓜.png' alt='吃瓜.png'
                                                             style='vertical-align: middle;'></p></div>
                            <ul class="comment-list children">
                                <li class="comment even thread-even parent" id="comment-id-4158">
                                    <div class="comment-body">
                                        <div class="comment-author vcard"><img class="avatar"
                                                                               src="http://blog-cdn.codergroup.cn/uploads/2019/5/747438d86d4d48597dda250e98fa9dcd"
                                                                               alt="avatar"> <strong> <a href="AAA"
                                                                                                         rel="external nofollow"
                                                                                                         class="native-list-one-head-name"
                                                                                                         target="_blank">1343314863</a>
                                        </strong> <span class="comment-meta commentmetadata native-comment-ua "> <span
                                                class="ua-info" style="display: none;"> <span
                                                class="WB-OS native-comment-ua-info" style="display: none;"> Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                                class="comment-aux"> <span class="reply"> <a rel="nofollow" at="4158"
                                                                                             class="native-list-one-footer-reback"
                                                                                             href="javascript:void(0)">回复</a> </span> 2019-07-19 17:35 </span> </span>
                                        </div>
                                        <p><a href='#comment-id-4130'>@逐梦</a>asdasdas</p></div>
                                    <ul class="comment-list children">
                                        <li class="comment even thread-even parent" id="comment-id-4159">
                                            <div class="comment-body">
                                                <div class="comment-author vcard"><img class="avatar"
                                                                                       src="http://blog-cdn.codergroup.cn/uploads/2019/5/747438d86d4d48597dda250e98fa9dcd"
                                                                                       alt="avatar"> <strong> <a
                                                        href="AAA" rel="external nofollow"
                                                        class="native-list-one-head-name" target="_blank">1343314863</a>
                                                </strong> <span class="comment-meta commentmetadata native-comment-ua "> <span
                                                        class="ua-info" style="display: none;"> <span
                                                        class="WB-OS native-comment-ua-info" style="display: none;"> Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                                        class="comment-aux"> <span class="reply"> <a rel="nofollow"
                                                                                                     at="4159"
                                                                                                     class="native-list-one-footer-reback"
                                                                                                     href="javascript:void(0)">回复</a> </span> 2019-07-19 17:35 </span> </span>
                                                </div>
                                                <p><a href='#comment-id-4158'>@1343314863</a>士大夫士大夫士大夫</p></div>
                                            <ul class="comment-list children">
                                                <li class="comment even thread-even parent" id="comment-id-4160">
                                                    <div class="comment-body">
                                                        <div class="comment-author vcard"><img class="avatar"
                                                                                               src="http://blog-cdn.codergroup.cn/uploads/2019/5/747438d86d4d48597dda250e98fa9dcd"
                                                                                               alt="avatar"> <strong> <a
                                                                href="AAA" rel="external nofollow"
                                                                class="native-list-one-head-name" target="_blank">1343314863</a>
                                                        </strong> <span
                                                                class="comment-meta commentmetadata native-comment-ua "> <span
                                                                class="ua-info" style="display: none;"> <span
                                                                class="WB-OS native-comment-ua-info"
                                                                style="display: none;"> Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                                                class="comment-aux"> <span class="reply"> <a
                                                                rel="nofollow" at="4160"
                                                                class="native-list-one-footer-reback"
                                                                href="javascript:void(0)">回复</a> </span> 2019-07-19 17:36 </span> </span>
                                                        </div>
                                                        <p><a href='#comment-id-4159'>@1343314863</a>翻译的也容易</p></div>
                                                    <ul class="comment-list children">
                                                        <li class="comment even thread-even parent"
                                                            id="comment-id-4161">
                                                            <div class="comment-body">
                                                                <div class="comment-author vcard"><img class="avatar"
                                                                                                       src="http://blog-cdn.codergroup.cn/uploads/2019/5/747438d86d4d48597dda250e98fa9dcd"
                                                                                                       alt="avatar">
                                                                    <strong> <a href="AAA" rel="external nofollow"
                                                                                class="native-list-one-head-name"
                                                                                target="_blank">1343314863</a> </strong>
                                                                    <span class="comment-meta commentmetadata native-comment-ua "> <span
                                                                            class="ua-info"
                                                                            style="display: none;"> <span
                                                                            class="WB-OS native-comment-ua-info"
                                                                            style="display: none;"> Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                                                            class="comment-aux"> <span class="reply"> <a
                                                                            rel="nofollow" at="4161"
                                                                            class="native-list-one-footer-reback"
                                                                            href="javascript:void(0)">回复</a> </span> 2019-07-19 17:49 </span> </span>
                                                                </div>
                                                                <p><a href='#comment-id-4160'>@1343314863</a>465435645
                                                                </p></div>
                                                            <ul class="comment-list children">
                                                                <li class="comment even thread-even parent"
                                                                    id="comment-id-4162">
                                                                    <div class="comment-body">
                                                                        <div class="comment-author vcard"><img
                                                                                class="avatar"
                                                                                src="http://blog-cdn.codergroup.cn/uploads/2019/5/747438d86d4d48597dda250e98fa9dcd"
                                                                                alt="avatar"> <strong> <a href="AAA"
                                                                                                          rel="external nofollow"
                                                                                                          class="native-list-one-head-name"
                                                                                                          target="_blank">1343314863</a>
                                                                        </strong> <span
                                                                                class="comment-meta commentmetadata native-comment-ua "> <span
                                                                                class="ua-info" style="display: none;"> <span
                                                                                class="WB-OS native-comment-ua-info"
                                                                                style="display: none;"> Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                                                                class="comment-aux"> <span
                                                                                class="reply"> <a rel="nofollow"
                                                                                                  at="4162"
                                                                                                  class="native-list-one-footer-reback"
                                                                                                  href="javascript:void(0)">回复</a> </span> 2019-07-19 17:50 </span> </span>
                                                                        </div>
                                                                        <p><a href='#comment-id-4161'>@1343314863</a>123123123123
                                                                        </p></div>
                                                                    <ul class="comment-list children">
                                                                        <li class="comment even thread-even parent"
                                                                            id="comment-id-4163">
                                                                            <div class="comment-body">
                                                                                <div class="comment-author vcard"><img
                                                                                        class="avatar"
                                                                                        src="http://blog-cdn.codergroup.cn/uploads/2019/5/747438d86d4d48597dda250e98fa9dcd"
                                                                                        alt="avatar"> <strong> <a
                                                                                        href="AAA"
                                                                                        rel="external nofollow"
                                                                                        class="native-list-one-head-name"
                                                                                        target="_blank">1343314863</a>
                                                                                </strong> <span
                                                                                        class="comment-meta commentmetadata native-comment-ua "> <span
                                                                                        class="ua-info"
                                                                                        style="display: none;"> <span
                                                                                        class="WB-OS native-comment-ua-info"
                                                                                        style="display: none;"> Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                                                                        class="comment-aux"> <span
                                                                                        class="reply"> <a rel="nofollow"
                                                                                                          at="4163"
                                                                                                          class="native-list-one-footer-reback"
                                                                                                          href="javascript:void(0)">回复</a> </span> 2019-07-19 17:50 </span> </span>
                                                                                </div>
                                                                                <p><a href='#comment-id-4162'>@1343314863</a>123123123
                                                                                </p></div>
                                                                        </li>
                                                                    </ul><!-- .comment-list --> </li>
                                                            </ul><!-- .comment-list --> </li>
                                                        <li class="comment even thread-even parent"
                                                            id="comment-id-4164">
                                                            <div class="comment-body">
                                                                <div class="comment-author vcard"><img class="avatar"
                                                                                                       src="http://blog-cdn.codergroup.cn/uploads/2019/5/747438d86d4d48597dda250e98fa9dcd"
                                                                                                       alt="avatar">
                                                                    <strong> <a href="AAA" rel="external nofollow"
                                                                                class="native-list-one-head-name"
                                                                                target="_blank">1343314863</a> </strong>
                                                                    <span class="comment-meta commentmetadata native-comment-ua "> <span
                                                                            class="ua-info"
                                                                            style="display: none;"> <span
                                                                            class="WB-OS native-comment-ua-info"
                                                                            style="display: none;"> Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                                                            class="comment-aux"> <span class="reply"> <a
                                                                            rel="nofollow" at="4164"
                                                                            class="native-list-one-footer-reback"
                                                                            href="javascript:void(0)">回复</a> </span> 2019-07-19 17:56 </span> </span>
                                                                </div>
                                                                <p><a href='#comment-id-4160'>@1343314863</a>123131</p>
                                                            </div>
                                                            <ul class="comment-list children">
                                                                <li class="comment even thread-even parent"
                                                                    id="comment-id-4165">
                                                                    <div class="comment-body">
                                                                        <div class="comment-author vcard"><img
                                                                                class="avatar"
                                                                                src="http://blog-cdn.codergroup.cn/uploads/2019/5/747438d86d4d48597dda250e98fa9dcd"
                                                                                alt="avatar"> <strong> <a href="AAA"
                                                                                                          rel="external nofollow"
                                                                                                          class="native-list-one-head-name"
                                                                                                          target="_blank">1343314863</a>
                                                                        </strong> <span
                                                                                class="comment-meta commentmetadata native-comment-ua "> <span
                                                                                class="ua-info" style="display: none;"> <span
                                                                                class="WB-OS native-comment-ua-info"
                                                                                style="display: none;"> Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                                                                class="comment-aux"> <span
                                                                                class="reply"> <a rel="nofollow"
                                                                                                  at="4165"
                                                                                                  class="native-list-one-footer-reback"
                                                                                                  href="javascript:void(0)">回复</a> </span> 2019-07-19 18:21 </span> </span>
                                                                        </div>
                                                                        <p><a href='#comment-id-4164'>@1343314863</a>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbddddddddddddddddddddddddddddddddddddddddddddddddddddddddfffffffffffffffffffffffffffffffffffffffffffffffqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333rrrrr
                                                                        </p></div>
                                                                </li>
                                                            </ul><!-- .comment-list --> </li>
                                                    </ul><!-- .comment-list --> </li>
                                            </ul><!-- .comment-list --> </li>
                                    </ul><!-- .comment-list --> </li>
                            </ul><!-- .comment-list --> </li>
                        <li class="comment even thread-even parent" id="comment-id-4129">
                            <div class="comment-body">
                                <div class="comment-author vcard"><img class="avatar"
                                                                       src="/gravatar.loli.net/avatar/?s=256&d=mm"
                                                                       alt="avatar"> <strong> <a
                                        href="javascript:void(0)" rel="external nofollow"
                                        class="native-list-one-head-name" target="_blank">fy</a> </strong> <span
                                        class="comment-meta commentmetadata native-comment-ua"> <span class="ua-info"
                                                                                                      style="display: none;"> <span
                                        class="WB-OS native-comment-ua-info" style="display: none;"> Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                        class="comment-aux"> <span class="reply"> <a rel="nofollow" at="4129"
                                                                                     class="native-list-one-footer-reback"
                                                                                     href="javascript:void(0)">回复</a> </span> 2019-06-18 13:09 </span> </span>
                                </div>
                                <p>( ง ᵒ̌皿ᵒ̌)ง⁼³₌₃<img src='static/plugins/OwO/alu/鼓掌.png' alt='鼓掌.png'
                                                       style='vertical-align: middle;'></p></div>
                        </li>
                        <li class="comment even thread-even parent" id="comment-id-4128">
                            <div class="comment-body">
                                <div class="comment-author vcard"><img class="avatar"
                                                                       src="http://blog-cdn.codergroup.cn/uploads/2019/5/89d6019f29d3fd265d0afb557f99e38c"
                                                                       alt="avatar"> <strong> <a
                                        href="javascript:void(0)" rel="external nofollow"
                                        class="native-list-one-head-name" target="_blank">WD92632</a> </strong> <span
                                        class="comment-meta commentmetadata native-comment-ua"> <span class="ua-info"
                                                                                                      style="display: none;"> <span
                                        class="WB-OS native-comment-ua-info" style="display: none;"> Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                        class="comment-aux"> <span class="reply"> <a rel="nofollow" at="4128"
                                                                                     class="native-list-one-footer-reback"
                                                                                     href="javascript:void(0)">回复</a> </span> 2019-06-17 13:19 </span> </span>
                                </div>
                                <p>asd</p></div>
                        </li>
                    </ul><!-- .comment-list -->
                    <div class="scroll-links">
                        <nav class="navigation comment-navigation" role="navigation"><h2 class="screen-reader-text">
                            评论导航</h2>
                            <div class="nav-links">
                                <div class="nav-previous"><a
                                        href="https://liuyanzhao.com/message.html/comment-page-3/#comments">较早评论</a>
                                </div>
                            </div>
                        </nav>
                    </div>
                    <nav class="comment-navigation">
                        <div class="pagination">
                            <span class="page-numbers current">1</span>
                            <a class="page-numbers" href="?page=2#comments-list">2</a>
                            <a class="page-numbers" href="?page=3#comments-list">3</a>
                            <a class="page-numbers" href="?page=4#comments-list">4</a>
                            <a class="next page-numbers" href="?page=2#comments-list">
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </div>
                    </nav>
                    <div class="clear"></div>
                </div>
                <script src="http://blog-cdn.codergroup.cn/static/plugins/jquery/jquery.min.js"></script>
                <script src="http://blog-cdn.codergroup.cn/static/plugins/md5/md5.min.js"></script>
                <script src="http://blog-cdn.codergroup.cn/static/plugins/ua-parser/ua-parser.min.js"></script>
                <script src="http://blog-cdn.codergroup.cn/static/plugins/OwO/OwO.min.js"></script>
                <script> var defaultPlaceholder = $('#commentContent').attr("placeholder");
                var s = new OwO({
                    logo: 'OωO表情',
                    container: document.getElementsByClassName('OwO')[0],
                    target: document.getElementsByClassName('comment-input-content')[0],
                    position: 'down',
                    width: '100%',
                    maxHeight: '210px',
                    api: "static/plugins/OwO/OwO.min.json"
                });
                $(document).ready(function () {
                    $(".native-comment-ua").each(function (i) {
                        var uaInfo = $(this).find(".native-comment-ua-info").html();
                        $(this).find('.ua-info').show().html(show_ua(uaInfo));
                    });
                    if ($('#commentAuthor').val() == '') {
                        var author = localStorage.getItem("author");
                        $("#commentAuthor").val(author == 'undefined' ? '' : author);
                    }
                    if ($('#commentAuthorEmail').val() == '') {
                        var email = localStorage.getItem("email");
                        $("#commentAuthorEmail").val(email == 'undefined' ? '' : email);
                    }
                    if ($('#commentAuthorUrl').val() == '') {
                        var url = localStorage.getItem("url");
                        $("#commentAuthorUrl").val(url == 'undefined' ? '' : url);
                    }
                });
                $('#submit').click(function () {
                    var author = $("#commentAuthor");
                    var content = $("#commentContent");
                    var email = $("#commentAuthorEmail");
                    var url = $("#commentAuthorUrl");
                    if (author.val() == '' || content.val() == '') {
                        $(".native-message").html("<span style='color:red'>请输入必填项！</span>");
                        $(".native-message").fadeIn(1000);
                        setTimeout(function () {
                            $(".native-message").fadeOut(1000);
                        }, 1500);
                        return;
                    }
                    $(this).attr("disabled", "disabled");
                    $(this).html("提交中...");
                    $.ajax({
                        type: 'POST',
                        url: 'newComment',
                        async: false,
                        data: {
                            'postId': $('input[name=postId]').val(),
                            'commentContent': $('textarea[name=commentContent]').val(),
                            'commentAuthor': $('input[name=commentAuthor]').val(),
                            'commentAuthorEmail': $('input[name=commentAuthorEmail]').val(),
                            'commentAuthorUrl': $('input[name=commentAuthorUrl]').val(),
                            'commentAgent': navigator.userAgent,
                            'commentParent': $('input[name=commentParent]').val()
                        },
                        success: function (data) {
                            localStorage.setItem('author', author.val());
                            localStorage.setItem('email', email.val());
                            localStorage.setItem('url', url.val());
                            if (data.code == 1) {
                                $('.comment-input-content').val("");
                                $(".native-message").html("<span>" + data.msg + "</span>");
                                window
                            } else {
                                $(".native-message").html("<span style='color:red'>" + data.msg + "</span>");
                            }
                            $(".native-message").fadeIn(1000);
                            setTimeout(function () {
                                $(".native-message").fadeOut(1000);
                                $("#submit").removeAttr("disabled");
                                $("#submit").html("提交评论");
                                window.location.reload();
                            }, 1500);
                        }
                    });
                });
                $('.native-list-one-footer-reback').click(function () {
                    var at = $(this).attr("at");
                    var commentParentAuthor = $('#comment-id-' + at).find(".native-list-one-head-name").html();
                    $('#commentParent').val(at);
                    $('#commentContent').attr("placeholder", "@" + commentParentAuthor + ": ");
                    $('#commentContent').focus();
                    $('#cancel-comment-reply-link').show();
                });
                $('#cancel-comment-reply-link').click(function () {
                    $('#commentContent').focus();
                    $('#commentContent').attr("placeholder", defaultPlaceholder);
                    $('#commentParent').val(0);
                    $('#cancel-comment-reply-link').hide();
                });
                $('.comment-delete-link').click(function () {
                    var id = $(this).attr('data-id');
                    $.ajax({
                        type: 'POST',
                        url: 'admin/comment/remove',
                        async: false,
                        data: {'commentId': id,},
                        success: function (data) {
                            setTimeout(function () {
                                window.location.reload();
                            }, 1500);
                        }
                    });
                });
                var parser = new UAParser();

                function show_ua(string) {
                    parser.setUA(string);
                    var uua = parser.getResult();
                    if (uua.os.version == 'x86_64') {
                        uua.os.version = 'x64';
                    }
                    var browser = uua.browser.name + ' ' + uua.browser.version;
                    var os = uua.os.name + ' ' + uua.os.version;
                    return '<span class="ua visible-md-block">' + browser + '</span> <span class="ua visible-md-block">' + os + '</span>';
                } </script>
            </main>

        </div><!-- .content-area -->

        <div id="sidebar" class="widget-area all-sidebar">
            <aside id="text-2" class="widget widget_text wow fadeInUp" data-wow-delay="0.3s"><h3
                    class="widget-title"><i class="fa fa-bars"></i>支持本站</h3>
                <div class="textwidget">
                    <span style="color:red;">博主近期开了淘宝店(店名：<b>言曌博客咨询部</b>)，欢迎大家来咨询。主营【Java问题解决】，【Java项目毕业设计】、【毕业论文】、【网站建设】等内容。</span>
                    <img src="http://blog-cdn.codergroup.cn/uploads/2019/5/b8feb24338e42dd0b25e7b78945cd990">
                </div>
                <div class="clear"></div>
            </aside>


            <aside class="widget wow fadeInUp" data-wow-delay="0.3s">
                <h3 class="widget-title"><i class="fa fa-bars"></i>热门标签</h3>
                <div class="tagcloud">
                    <a href="tag/java"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="191个话题">Java</a>
                    <a href="tag/error"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="72个话题">故障</a>
                    <a href="tag/wordpress"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="69个话题">WordPress</a>
                    <a href="tag/springboot"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="65个话题">SpringBoot</a>
                    <a href="tag/js"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="45个话题">JS</a>
                    <a href="tag/essay"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="38个话题">美文</a>
                    <a href="tag/video"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="24个话题">视频</a>
                    <a href="tag/计算机网络"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="24个话题">计算机网络</a>
                    <a href="tag/thread"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="23个话题">多线程</a>
                    <a href="tag/begin"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="12个话题">知更鸟主题</a>
                    <a href="tag/thinkphp"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="12个话题">ThinkPHP</a>
                    <a href="tag/ssm"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="12个话题">SSM</a>
                    <a href="tag/软件"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="12个话题">软件</a>
                    <a href="tag/good-advice"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="11个话题">他山之石</a>
                    <a href="tag/exercises"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="11个话题">习题</a>
                    <a href="tag/data-structure"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="11个话题">数据结构</a>
                    <a href="tag/gui"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="11个话题">GUI</a>
                    <a href="tag/maven"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="10个话题">Maven</a>
                    <a href="tag/qiniu"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="9个话题">七牛</a>
                    <a href="tag/spring-security"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="9个话题">Spring Security</a>
                    <a href="tag/hibernate"
                       class="tag-cloud-link tag-link-75 tag-link-position-1"
                       style="font-size: 14px;" title="8个话题">Hibernate</a>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </aside>

            <aside class="widget wow fadeInUp" data-wow-delay="0.3s">
                <h3 class="widget-title"><i class="fa fa-bars"></i>阅读榜</h3>
                <div id="hot_comment_widget">
                    <ul>
                        <li>
                            <span class='li-icon li-icon-1'>1</span>
                            <a href="article/5202" rel="bookmark"
                               title=" 122331 views">
                                【新】三国志13威力加强pk版1.13版本下载地址和解压密码</a>
                        </li>
                        <li>
                            <span class='li-icon li-icon-2'>2</span>
                            <a href="article/4730" rel="bookmark"
                               title=" 58590 views">
                                《盛世中的蝼蚁》原文</a>
                        </li>
                        <li>
                            <span class='li-icon li-icon-3'>3</span>
                            <a href="article/3223" rel="bookmark"
                               title=" 21148 views">
                                Java学习资料整合（持续更新）</a>
                        </li>
                        <li>
                            <span class='li-icon li-icon-4'>4</span>
                            <a href="article/6347" rel="bookmark"
                               title=" 17356 views">
                                一个简单漂亮的Java博客系统-适合初学ssm者</a>
                        </li>
                        <li>
                            <span class='li-icon li-icon-5'>5</span>
                            <a href="article/8402" rel="bookmark"
                               title=" 16667 views">
                                CoderGroup —— 基于 SpringBoot 实现的开发者社区，欢迎入驻</a>
                        </li>
                        <li>
                            <span class='li-icon li-icon-6'>6</span>
                            <a href="article/5872" rel="bookmark"
                               title=" 12468 views">
                                Intellij IDEA如何创建资源文件夹Source Folder</a>
                        </li>
                        <li>
                            <span class='li-icon li-icon-7'>7</span>
                            <a href="article/5828" rel="bookmark"
                               title=" 9538 views">
                                《信长之野望13天道》下载地址和win10好卡解决方案</a>
                        </li>
                        <li>
                            <span class='li-icon li-icon-8'>8</span>
                            <a href="article/2176" rel="bookmark"
                               title=" 8137 views">
                                配置七牛自定义域名cdn加速，让你的网站飞起来</a>
                        </li>
                        <li>
                            <span class='li-icon li-icon-9'>9</span>
                            <a href="article/6300" rel="bookmark"
                               title=" 8016 views">
                                SSM博客实战(9)-拦截器验证权限和登录与注销的实现</a>
                        </li>
                        <li>
                            <span class='li-icon li-icon-10'>10</span>
                            <a href="article/7431" rel="bookmark"
                               title=" 7546 views">
                                SpringBoot + Spring Security + Thymeleaf 实现权限管理登录</a>
                        </li>
                    </ul>
                </div>
                <div class="clear"></div>
            </aside>


        </div>
        <div class="clear"></div>
    </div><!-- .site-content -->
    <@footer></@footer>
</div><!-- .site -->
<@script></@script>
<script src="/editormd/editormd.min.js"></script>
<script src="/editormd/lib/marked.min.js"></script>
<script src="/editormd/lib/prettify.min.js"></script>
<script type="text/javascript">
    editormd.markdownToHTML("md_content");
</script>
<script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?6afab79aca1c297eeabbd7b79812dba7";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>

<script>
    (function () {
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>
</body>
</html>

