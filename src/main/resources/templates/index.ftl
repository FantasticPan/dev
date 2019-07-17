<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>首页_杨青个人博客 - 一个站在web前端设计之路的女技术员个人博客网站</title>
    <meta name="keywords" content="个人博客,杨青个人博客,个人博客模板,杨青"/>
    <meta name="description" content="杨青个人博客，是一个站在web前端设计之路的女程序员个人网站，提供个人博客模板免费资源下载的个人原创网站。"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/pages/css/base.css" rel="stylesheet">
    <link href="/pages/css/index.css" rel="stylesheet">
    <link href="/pages/css/m.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="/pages/js/modernizr.js"></script>
    <![endif]-->
    <script>
        window.onload = function () {
            var oH2 = document.getElementsByTagName("h2")[0];
            var oUl = document.getElementsByTagName("ul")[0];
            oH2.onclick = function () {
                var style = oUl.style;
                style.display = style.display == "block" ? "none" : "block";
                oH2.className = style.display == "block" ? "open" : ""
            }
        }
    </script>
</head>
<body>
<header>
    <div class="tophead">
        <div class="logo"><a href="/">LiPan`s 博客</a></div>
        <div id="mnav">
            <h2><span class="navicon"></span></h2>
            <ul>
                <li><a href="index.html">网站首页</a></li>
                <li><a href="about.html">关于我</a></li>
                <li><a href="share.html">模板分享</a></li>
                <li><a href="list.html">学无止境</a></li>
                <li><a href="info.html">慢生活</a></li>
                <li><a href="gbook.html">留言</a></li>
                <li>
                    <a href="/toLogin">登录</a>
                </li>
            </ul>
        </div>
        <nav class="topnav" id="topnav">
            <ul>
                <li><a href="index.html">网站首页</a></li>
                <li><a href="about.html">关于我</a></li>
                <li><a href="share.html">模板分享</a></li>
                <li><a href="list.html">学无止境</a></li>
                <li><a href="info.html">慢生活</a></li>
                <li><a href="gbook.html">留言</a></li>
                <li>
                    <a href="/toLogin">登录</a>
                </li>
            </ul>
        </nav>
    </div>
</header>
<div class="picshow">
    <ul>
        <li><a href="/"><i><img src="/pages/images/b01.jpg"></i>
            <div class="font">
                <h3>个人博客模板《早安》</h3>
            </div>
        </a></li>
        <li><a href="/"><i><img src="/pages/images/b02.jpg"></i>
            <div class="font">
                <h3>个人博客模板《早安》</h3>
            </div>
        </a></li>
        <li><a href="/"><i><img src="/pages/images/b03.jpg"></i>
            <div class="font">
                <h3>个人博客模板《早安》</h3>
            </div>
        </a></li>
        <li><a href="/"><i><img src="/pages/images/b04.jpg"></i>
            <div class="font">
                <h3>个人博客模板《早安》</h3>
            </div>
        </a></li>
        <li><a href="/"><i><img src="/pages/images/b05.jpg"></i>
            <div class="font">
                <h3>个人博客模板《早安》</h3>
            </div>
        </a></li>
    </ul>
</div>
<article>
    <div class="blogs">
        <#list pageInfo.list as article>
            <li data-scroll-reveal="enter bottom over 1s"><span class="blogpic"><a href="/"><img src=""></a></span>
                <h3 class="blogtitle">
                    <#if article.articleTop != 0>【置顶】</#if><a href="/">${article.articleTitle}</a></h3>
                <div class="bloginfo">
                    <p>${article.articleSummary}</p>
                </div>
                <div class="autor">
                    <span class="lm"><a href="/" title="${article.articleClassify}" target="_blank" class="classname">${article.articleClassify}</a></span>
                    <span class="dtime">${article.articleReleaseDate}</span><span class="viewnum">浏览（${article.articleViewCount}）</span>
                    <span class="pingl">喜欢（${article.articleLikeCount}）</span><span class="readmore"><a href="/">阅读原文>></a></span></div>
            </li>
        </#list>
        <div class="pagelist">
            <a>&nbsp;<b>共${pageInfo.total}页</b></a>&nbsp;&nbsp;&nbsp;
            <a href="/">首页</a>&nbsp;
            <#if pageInfo.hasPreviousPage>
                <#if pageInfo.pageNum == 2>
                    <a href="/">上一页</a>&nbsp;
                </#if>
                <#if pageInfo.pageNum != 2>
                    <a href="/?pageNum=${pageInfo.prePage}">上一页</a>&nbsp;
                </#if>
            </#if>
            <#list pageInfo.navigatepageNums as page_num>
                <#if page_num == pageInfo.pageNum>
                    <b>${page_num}</b>&nbsp;
                </#if>
                <#if page_num != pageInfo.pageNum>
                    <a href="/?pageNum=${page_num}">${page_num}</a>&nbsp;
                </#if>
            </#list>
            <#if pageInfo.hasNextPage>
                <a href="/?pageNum=${pageInfo.nextPage}">下一页</a>&nbsp;
            </#if>
            <a href="/?pageNum=${pageInfo.navigateLastPage}">尾页</a></div>
    </div>
    <div class="sidebar">
        <div class="about">
            <div class="avatar"><img src="/pages/images/avatar.jpg" alt=""></div>
            <p class="abname">FantasticPan | 李攀</p>
            <p class="abposition">Java开发工程师</p>
            <div class="abtext"> 西南石油大学在读学生，好好学习，天天向上</div>
        </div>
        <div class="search">
            <form action="/e/search/index.php" method="post" name="searchform" id="searchform">
                <input name="keyboard" id="keyboard" class="input_text" value="请输入关键字"
                       style="color: rgb(153, 153, 153);"
                       onfocus="if(value=='请输入关键字'){this.style.color='#000';value=''}"
                       onblur="if(value==''){this.style.color='#999';value='请输入关键字'}" type="text">
                <input name="show" value="title" type="hidden">
                <input name="tempid" value="1" type="hidden">
                <input name="tbname" value="news" type="hidden">
                <input name="Submit" class="input_submit" value="搜索" type="submit">
            </form>
        </div>
        <div class="cloud">
            <h2 class="hometitle">标签云</h2>
            <ul>
                <a href="/">陌上花开</a>
                <a href="/">校园生活</a>
                <a href="/">html5</a>
                <a href="/">SumSung</a>
            </ul>
        </div>
        <div class="paihang">
            <h2 class="hometitle">文章分类</h2>
            <ul>
                <li><a href="/">学无止境（33）</a></li>
                <li><a href="/">日记（19）</a></li>
            </ul>
        </div>
        <div class="paihang">
            <h2 class="hometitle">点击排行</h2>
            <ul>
                <li><b><a href="/download/div/2015-04-10/746.html" target="_blank"></a></b>
                    <p><i><img src=""></i></p>
                </li>
            </ul>
        </div>
        <div class="paihang">
            <h2 class="hometitle">站长推荐</h2>
            <ul>
                <li><b><a href="/download/div/2015-04-10/746.html" target="_blank">【活动作品】柠檬绿兔小白个人博客模板30...</a></b>
                    <p><i><img src="/pages/images/t02.jpg"></i>展示的是首页html，博客页面布局格式简单，没有复杂的背景，色彩局部点缀，动态的幻灯片展示，切换卡，标...
                    </p>
                </li>
            </ul>
        </div>
        <div class="links">
            <h2 class="hometitle">友情链接</h2>
            <ul>
                <li><a href="http://www.yangqq.com" title="杨青个人博客">杨青个人博客</a></li>
                <li><a href="http://www.yangqq.com" title="杨青个人博客">杨青个人博客</a></li>
                <li><a href="http://www.yangqq.com" title="杨青个人博客">杨青个人博客</a></li>
            </ul>
        </div>
        <div class="weixin">
            <h2 class="hometitle">官方微信</h2>
            <ul>
                <img src="/pages/images/wx.jpg">
            </ul>
        </div>
    </div>
</article>
<div class="blank"></div>
<#include "include/footer.ftl"/>
<a href="#" class="cd-top">Top</a>
<script src="/pages/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="/pages/js/comm.js"></script>
<script src="/pages/js/nav.js"></script>
<script src="/pages/js/scrollReveal.js"></script>
<script>
    if (!(/msie [6|7|8|9]/i.test(navigator.userAgent))) {
        (function () {
            window.scrollReveal = new scrollReveal({reset: true});
        })();
    }
    ;
</script>

</body>
</html>
