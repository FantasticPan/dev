<#include "include/macros.ftl"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title>LiPan`s博客 | 程序人生，永不止步</title>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="renderer" content="webkit">
    <meta name="theme-color" content="#fff">
    <meta name="keywords" content="刘言曌,言曌博客,刘䶮曌博客,Java博客,JavaEE,JavaWeb,后端开发,Java成长之路,Java,个人博客,Java个人博客">
    <meta name="description" content="言曌博客是专注JavaEE,JavaWeb的个人技术博客，同时是个人程序人生的点滴记录和时光储备。">
    <@css></@css>
    <link rel="stylesheet" href="/lipan/css/page.css" type="text/css" media="all">
</head>
<body>
<div id="page" class="hfeed site">
    <@header></@header>

    <nav class="breadcrumb">
        <div class="bull"><i class="fa fa-volume-up"></i></div>
        <div id="scrolldiv">
            <div class="scrolltext">
                <ul style="margin-top: 0px;">
                <#--<li class="scrolltext-title">-->
                <#--<a href="notice/9372" rel="bookmark" target="_blank">本站长期提供网站服务，Java问题解决，Java新手带学</a>-->
                <#--</li>-->
                <#--<li class="scrolltext-title">-->
                <#--<a href="notice/9407" rel="bookmark" target="_blank">后台在重构中，准备使用Vue Element UI来做</a>-->
                <#--</li>-->
                <#--<li class="scrolltext-title">-->
                <#--<a href="notice/9408" rel="bookmark" target="_blank">当前系统出售中，欢迎来询价</a>-->
                <#--</li>-->
                    <li class="scrolltext-title"><a href="javascript:void(0)" rel="bookmark">博客细节功能待完善...</a></li>
                    <li class="scrolltext-title"><a href="javascript:void(0)" rel="bookmark">大学生活马上就要结束了</a></li>
                    <li class="scrolltext-title"><a href="javascript:void(0)" rel="bookmark">不会写C++的JAVA人员不是一个好UI，不会用Linux的程序员不是一个好DBA</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div id="content" class="site-content">
        <div id="primary" class="content-area">
            <main id="main" class="site-main" role="main">
                <#--<div class="orderby">-->
                    <#--<ul>-->
                        <#--<li class="order">-->
                            <#--<a href="javascript:void(0)" title="文章排序">-->
                                <#--<i class="fa fa-sort-amount-asc"></i>-->
                            <#--</a>-->
                        <#--</li>-->
                    <#--</ul>-->
                    <#--<ul class="order-box">-->
                        <#--<li>-->
                            <#--<a href="?order=postId" rel="nofollow" title="按日期排序">-->
                                <#--<i class="fa fa-calendar-minus-o"></i>-->
                            <#--</a>-->
                        <#--</li>-->
                        <#--<li>-->
                            <#--<a href="?order=commentSize" rel="nofollow" title="按评论排序">-->
                                <#--<i class="fa fa-comment-o"></i>-->
                            <#--</a>-->
                        <#--</li>-->
                        <#--<li>-->
                            <#--<a href="?order=postViews" rel="nofollow" title="按浏览排序">-->
                                <#--<i class="fa fa-eye"></i>-->
                            <#--</a>-->
                        <#--</li>-->
                        <#--<li>-->
                            <#--<a href="?order=postLikes" rel="nofollow" title="按点赞排序">-->
                                <#--<i class="fa fa-thumbs-up"></i>-->
                            <#--</a>-->
                        <#--</li>-->
                    <#--</ul>-->
                <#--</div>-->

                <!-- 幻灯片 -->
                <div id="slideshow" class="wow fadeInUp" data-wow-delay="0.3s">
                    <ul class="rslides callbacks callbacks1" id="slider" style="max-width: 2000px;">
                        <#list articleSlide as article>
                            <li id="callback_s${article_index}" class="callbacks${article_index + 1}_on"
                                style="float: left; position: relative; opacity: 1; z-index: 2; transition: opacity 800ms ease-in-out 0s;">
                                <a href="/article/display?articleId=${article.articleId}" target="_blank" rel="external nofollow">
                                    <img src="/page/img/1.png" alt="${article.articleTitle}">
                                </a>
                                <p class="slider-caption">${article.articleTitle}</p>
                            </li>
                        </#list>
                    </ul>
                </div>
                <!-- 幻灯片 -->

                <!-- 文章摘要 -->
                <#list pageInfo.list as article>
                    <article class="wow fadeInUp post type-post status-publish format-standard sticky hentry rwz"
                             data-wow-delay="0.3s">
                        <figure class="thumbnail"><span class="load"><a href="article/9318">
                    <img src="/page/img/4.png" alt="SpringBoot Shiro多realm实现免密登录"></a></span>
                            <span class="cat"><a href="category/springboot">${article.articleClassify}</a></span>
                        </figure>
                        <header class="entry-header">
                            <h2 class="entry-title">
                                <a href="/article/display?articleId=${article.articleId}"
                                   rel="bookmark"><#if article.articleTop != 0><b>【置顶】</b></#if>${article.articleTitle}
                                </a>
                            </h2>
                        </header>
                        <div class="entry-content">
                            <div class="archive-content">&nbsp;&nbsp;${article.articleSummary}</div>
                            <span class="title-l"></span>
                            <span class="new-icon"></span>
                            <span class="entry-meta">
                                <span class="date"><i
                                        class="fa fa-calendar"></i> ${article.articleReleaseDate?string("yyyy-MM-dd")}&nbsp;&nbsp;</span>
                            <span class="views"><i class="fa fa-eye"></i> 浏览(${article.articleViewCount})</span>
                            <span class="comment">&nbsp;&nbsp;<a href="article/9318#comments" rel="external nofollow"><i
                                    class="fa fa-comments-o"></i> 评论(${article.articleCommentCount})</a></span>
                        </span>
                            <div class="clear"></div>
                        </div>
                        <span class="entry-more"><a href="/article/display?articleId=${article.articleId}"
                                                    rel="bookmark">阅读全文+</a></span>
                    </article>
                </#list>
            </main>

            <nav class="comment-navigation">
                <div class="pagination">
                    <a class="page-numbers" href="/">共${pageInfo.pages}页</a>
                    <a class="page-numbers" href="/">首页</a>
                    <#if pageInfo.hasPreviousPage>
                        <#if pageInfo.pageNum == 2>
                            <a class="page-numbers" href="/">上一页</a>
                        </#if>
                        <#if pageInfo.pageNum != 2>
                            <a class="page-numbers" href="/?pageNum=${pageInfo.prePage}">上一页</a>
                        </#if>
                    </#if>
                    <#list pageInfo.navigatepageNums as page_num>
                        <#if page_num == pageInfo.pageNum>
                            <span class="page-numbers current">${page_num}</span>
                        </#if>
                        <#if page_num != pageInfo.pageNum>
                            <a class="page-numbers" href="/?pageNum=${page_num}">${page_num}</a>
                        </#if>
                    </#list>
                    <#if pageInfo.hasNextPage>
                        <#if pageInfo.hasNextPage>
                            <a class="page-numbers" href="/?pageNum=${pageInfo.nextPage}">下一页</a>
                        </#if>
                    </#if>
                    <a class="page-numbers" href="/?pageNum=${pageInfo.navigateLastPage}">尾页</a>
                </div>
            </nav>
        </div><!-- .content-area -->

        <div id="sidebar" class="widget-area all-sidebar">
            <aside class="widget about wow fadeInUp" data-wow-delay="0.3s">
                <h3 class="widget-title"><i class="fa fa-bars"></i>关于本站</h3>
                <div id="feed_widget">
                    <div class="feed-about">
                        <!--样式二：小人-->
                        <a href="https://github.com/FantasticPan" class="github-corner"
                           aria-label="View source on GitHub" title="Fork me on GitHub" target="_blank">
                            <svg width="50" height="50" viewBox="0 0 250 250"
                                 style="fill:#2f889a; color:#fff; position: absolute; top: 0; border: 0; right: 0;"
                                 aria-hidden="true">
                                <path d="M0,0 L115,115 L130,115 L142,142 L250,250 L250,0 Z"></path>
                                <path d="M128.3,109.0 C113.8,99.7 119.0,89.6 119.0,89.6 C122.0,82.7 120.5,78.6 120.5,78.6 C119.2,72.0 123.4,76.3 123.4,76.3 C127.3,80.9 125.5,87.3 125.5,87.3 C122.9,97.6 130.6,101.9 134.4,103.2"
                                      fill="currentColor" style="transform-origin: 130px 106px;"
                                      class="octo-arm"></path>
                                <path d="M115.0,115.0 C114.9,115.1 118.7,116.5 119.8,115.4 L133.7,101.6 C136.9,99.2 139.9,98.4 142.2,98.6 C133.8,88.0 127.5,74.4 143.8,58.0 C148.5,53.4 154.0,51.2 159.7,51.0 C160.3,49.4 163.2,43.6 171.4,40.1 C171.4,40.1 176.1,42.5 178.8,56.2 C183.1,58.6 187.2,61.8 190.9,65.4 C194.5,69.0 197.7,73.2 200.1,77.6 C213.8,80.2 216.3,84.9 216.3,84.9 C212.7,93.1 206.9,96.0 205.4,96.6 C205.1,102.4 203.0,107.8 198.3,112.5 C181.9,128.9 168.3,122.5 157.7,114.1 C157.9,116.9 156.7,120.9 152.7,124.9 L141.0,136.5 C139.8,137.7 141.6,141.9 141.8,141.8 Z"
                                      fill="currentColor" class="octo-body"></path>
                            </svg>
                        </a>
                        <style>.github-corner:hover .octo-arm {
                            animation: octocat-wave 560ms ease-in-out
                        }

                        @keyframes octocat-wave {
                            0%, 100% {
                                transform: rotate(0)
                            }
                            20%, 60% {
                                transform: rotate(-25deg)
                            }
                            40%, 80% {
                                transform: rotate(10deg)
                            }
                        }

                        @media (max-width: 500px) {
                            .github-corner:hover .octo-arm {
                                animation: none
                            }

                            .github-corner .octo-arm {
                                animation: octocat-wave 560ms ease-in-out
                            }
                        }
                        </style>
                        <div class="about-main">
                            <div class="about-img">
                                <img src="/lipan/img/dog.jpg" alt="QR Code">
                            </div>
                            <div class="about-name">李攀</div>
                            <div class="about-the">西南石油大学在读学生，热衷于后端的学习。
                            </div>
                        </div>
                        <div class="clear"></div>
                    <#--<ul>-->
                    <#--<li class="weixin">-->
                    <#--<span><a title="微信" target="_blank" href="upload/2018/11/wechat20181230193700343.jpg"><i class="fa fa-weixin"></i></a></span>-->
                    <#--</li>-->
                    <#--<li class="tqq">-->
                    <#--<a target=blank rel="external nofollow" href=http://wpa.qq.com/msgrd?V=3&uin=847064370&Site=QQ&Menu=yes title="QQ在线"><i class="fa fa-qq"></i></a>-->
                    <#--</li>-->
                    <#--<li class="tsina"><a title="" href="http://weibo.com/liuyanzhao1/profile?rightmod=1&wvr=6&mod=personinfo&is_all=1" target="_blank" rel="external nofollow"><i class="fa fa-weibo"></i></a>-->
                    <#--</li>-->
                    <#--<li class="feed"><a title="点击查看我的GitHub" href="https://github.com/FantasticPan" target="_blank" rel="external nofollow"><i class="fa fa-github"></i></a></li>-->
                    <#--</ul>-->
                    <#--<div class="about-inf">-->
                    <#--<span class="about-pn">文章 808</span>-->
                    <#--<span class="about-cn">留言 1801</span>-->
                    <#--</div>-->
                    </div>
                </div>
                <div class="clear"></div>
            </aside>

            <aside class="widget hot_comment wow fadeInUp" data-wow-delay="0.3s">
                <h3 class="widget-title"><i class="fa fa-bars"></i>阅读排行</h3>
                <div id="hot_comment_widget">
                    <ul>
                        <#list top10Article as article>
                            <li>
                                <span class='li-icon li-icon-${article_index + 1}'>${article_index + 1}</span>
                                <a href="/article/display?articleId=${article.articleId}" rel="bookmark"
                                   title="${article.articleViewCount} views">${article.articleTitle}</a>
                            </li>
                        </#list>
                    </ul>
                </div>
                <div class="clear"></div>
            </aside>

            <aside class="widget cx_tag_cloud wow fadeInUp" data-wow-delay="0.3s">
                <h3 class="widget-title"><i class="fa fa-bars"></i>文章标签</h3>
                <div class="tagcloud">
                    <a href="tag/java" class="tag-cloud-link tag-link-75 tag-link-position-1" style="font-size: 14px;">Java</a>
                    <a href="tag/error" class="tag-cloud-link tag-link-75 tag-link-position-1" style="font-size: 14px;">故障</a>
                </div>
                <div class="clear"></div>
            </aside>

        <#--<aside class="widget recent_comments wow fadeInUp" data-wow-delay="0.3s">-->
        <#--<h3 class="widget-title"><i class="fa fa-bars"></i>近期评论</h3>-->
        <#--<div id="message" class="message-widget">-->
        <#--<ul>-->
        <#--<li>-->
        <#--<a href="post/9352#comment-id-4165" title="" rel="external nofollow">-->
        <#--<img src="/page/img/avator.png" alt="avatar" class="avatar avatar-128" height="128" width="128">-->
        <#--<span class="comment_author"><strong>1343314863</strong></span>-->
        <#--@1343314863aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa...-->
        <#--</a>-->
        <#--</li>-->
        <#--<li>-->
        <#--<a href="post/9352#comment-id-4164" title="" rel="external nofollow">-->
        <#--<img src="/page/img/avator.png" alt="avatar" class="avatar avatar-128" height="128" width="128">-->
        <#--<span class="comment_author"><strong>1343314863</strong></span>-->
        <#--@1343314863123131-->
        <#--</a>-->
        <#--</li>-->
        <#--</ul>-->
        <#--</div>-->
        <#--<div class="clear"></div>-->
        <#--</aside>-->
            <aside class="widget wow fadeInUp" data-wow-delay="0.3s">
                <h3 class="widget-title">
                    <i class="fa fa-bars"></i>网站信息
                </h3>
                <div class="widget-text">
                    <ul class="site-profile">
                        <li><i class="fa fa-file"></i> 文章总数：808 篇</li>
                    <#--<li><i class="fa fa-commenting-o"></i> 留言数量：1801 条</li>-->
                        <li><i class="fa fa-folder-open"></i> 分类数量：49 个</li>
                        <li><i class="fa fa-tags"></i> 标签总数：71 个</li>
                    <#--<li><i class="fa fa-link"></i> 链接数量：2 个</li>-->
                        <li><i class="fa fa-clock-o"></i> 运行天数：<span id="blogStart"></span> 天</li>
                        <li><i class="fa fa-eye"></i> 访问量：753671 次</li>
                        <li><i class="fa fa-pencil-square"></i> 最后更新：<span style="color:#2F889A">2019年07月01日</span></li>
                    </ul>
                    <script>
                        var dateBegin = new Date("2018-12-17");
                        var dateEnd = new Date();
                        var parseDate = dateEnd.getTime() - dateBegin.getTime();
                        var days = Math.floor(parseDate / (24 * 3600 * 1000));
                        document.getElementById('blogStart').innerHTML = days + 1;
                    </script>
                </div>
                <div class="clear"></div>
            </aside>
        </div>
        <div class="clear"></div>
    </div><!-- .site-content -->

    <div class="clear"></div>

    <@footer></@footer>
</div><!-- .site -->
<@script></@script>
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
<script type="text/javascript">$(document).ready(function () {
    $("#scrolldiv").textSlider({line: 1, speed: 300, timer: 6000});
})</script>

