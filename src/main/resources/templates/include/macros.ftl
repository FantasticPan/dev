<#macro footer>
    <#include "footer.ftl"/>
</#macro>

<#macro script>
    <script type="text/javascript" src="/page/js/jquery.min.js"></script>
    <script type="text/javascript" src="/page/js/jquery.cookie.js"></script>
    <script type="text/javascript" src="/page/js/slides.js"></script>
    <script type="text/javascript" src="/page/js/sticky.js"></script>
    <script type="text/javascript" src="/page/js/superfish.js"></script>
    <script type="text/javascript" src="/page/js/jquery.lazyload.js"></script>
    <script type="text/javascript" src="/page/js/tipso.js"></script>
    <script type="text/javascript" src="/page/js/script.js"></script>
    <script type="text/javascript" src="/page/js/gb2big5.js"></script>
    <script type="text/javascript" src="/page/js/toastr.min.js"></script>
</#macro>

<#macro css>
    <!--[if lt IE 9]>
    <script src="/page/js/html5.js"></script>
    <script src="/page/js/css3-mediaqueries.js"></script>
    <![endif]-->
    <meta name="robots" content="noindex,follow">
    <link rel="stylesheet" id="begin-style-css" href="/page/css/style.css" type="text/css" media="all">
    <link rel="stylesheet" id="fonts-css" href="/page/css/fonts.css" type="text/css" media="all">
    <#--<link rel="alternate" type="application/rss+xml" title="atom 1.0" href="feed.xml">-->
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
</#macro>

<#macro header>
    <header id="masthead" class="site-header">
        <nav id="top-header">
            <div class="top-nav">
                <div id="user-profile">
                    <div class="user-login">欢迎光临！</div>
                    <div class="nav-set">
                        <div class="nav-login">
                            <@shiro.principal property="username"/>
                        </div>
                    </div>
                    <div class="nav-set">
                        <div class="nav-login">
                            <@shiro.notAuthenticated>
                                <a href="/toLogin" title="Login"><i class="fa fa-user"></i>登录</a>
                            </@shiro.notAuthenticated>
                            <@shiro.user>
                                <a href="/logout"><i class="fa fa-sign-in"></i>退出</a>
                            </@shiro.user>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="menu-topmenu-container">
                    <ul id="menu-topmenu" class="top-menu">
                        <li class="menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="p/shang">
                                <i class="fa-heart fa"></i>
                                <span class="font-text">赞赏记录</span>
                            </a>
                        </li>
                        <li class="menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="p/favorite">
                                <i class="fa-paperclip fa"></i>
                                <span class="font-text">收藏夹</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--  #menu-box -->
        <div id="menu-box">
            <div id="top-menu">
			<span class="nav-search">
				<i class="fa fa-search"></i>
			</span>
                <span class="mobile-login"><a href="admin/login" title="Login"><i class="fa fa-user"></i></a></span>
                <div class="logo-site">
                    <h1 class="site-title">
                        <a href="/" title="" rel="home">LiPan`s博客</a>
                    </h1>
                    <p class="site-description"> 程序人生，永不止步</p>
                </div><!-- .logo-site -->

                <div id="site-nav-wrap">
                    <div id="sidr-close">
                        <a href="#sidr-close" class="toggle-sidr-close">×</a>
                    </div>
                    <nav id="site-nav" class="main-nav">
                        <a href="#sidr-main" id="navigation-toggle" class="bars">
                            <i class="fa fa-bars"></i>
                        </a>
                        <div class="menu-mainmenu-container">
                            <ul id="menu-mainmenu" class="down-menu nav-menu">
                                <li id="menu-item-138"
                                    class="menu-item menu-item-type-custom menu-item-object-custom">
                                    <a href="category/javadev">
                                        <i class="fa-coffee fa"></i>
                                        <span class="font-text">Java 开发</span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li id="menu-item-109"
                                            class="menu-item menu-item-type-custom menu-item-object-custom">
                                            <a href="category/java-basic">
                                                <span class="font-text">Java 基础</span>
                                            </a>
                                        </li>
                                        <li id="menu-item-155"
                                            class="menu-item menu-item-type-custom menu-item-object-custom">
                                            <a href="category/java-web">
                                                <span class="font-text">JavaWeb</span>
                                            </a>
                                            <ul class="sub-menu">
                                                <li id="menu-item-230"
                                                    class="menu-item menu-item-type-custom menu-item-object-custom">
                                                    <a href="category/templates">
                                                        <span class="font-text">模板引擎</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li id="menu-item-193"
                                            class="menu-item menu-item-type-custom menu-item-object-custom">
                                            <a href="category/core-java">
                                                <span class="font-text">java 进阶</span>
                                            </a>
                                            <ul class="sub-menu">
                                                <li id="menu-item-229"
                                                    class="menu-item menu-item-type-custom menu-item-object-custom">
                                                    <a href="category/java-code">
                                                        <span class="font-text">Java 源码</span>
                                                    </a>
                                                </li>
                                                <li id="menu-item-242"
                                                    class="menu-item menu-item-type-custom menu-item-object-custom">
                                                    <a href="category/multi-thread">
                                                        <span class="font-text">多线程并发编程</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li id="menu-item-275"
                                    class="menu-item menu-item-type-custom menu-item-object-custom">
                                    <a href="category/back-frameworks">
                                        <i class="fa-building fa"></i>
                                        <span class="font-text">框架与实战</span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li id="menu-item-179"
                                            class="menu-item menu-item-type-custom menu-item-object-custom">
                                            <a href="category/spring">
                                                <span class="font-text">Spring 家族</span>
                                            </a>
                                            <ul class="sub-menu">
                                                <li id="menu-item-250"
                                                    class="menu-item menu-item-type-custom menu-item-object-custom">
                                                    <a href="category/springboot">
                                                        <span class="font-text">SpringBoot教程</span>
                                                    </a>
                                                </li>
                                                <li id="menu-item-251"
                                                    class="menu-item menu-item-type-custom menu-item-object-custom">
                                                    <a href="category/springcloud">
                                                        <span class="font-text">SpringCloud</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li id="menu-item-198"
                                    class="menu-item menu-item-type-custom menu-item-object-custom">
                                    <a href="category/computer-science">
                                        <i class="fa-cubes fa"></i>
                                        <span class="font-text">计算机科学</span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li id="menu-item-200"
                                            class="menu-item menu-item-type-custom menu-item-object-custom">
                                            <a href="category/data-structure-and-algorithm">
                                                <span class="font-text">数据结构和算法</span>
                                            </a>
                                        </li>
                                        <li id="menu-item-201"
                                            class="menu-item menu-item-type-custom menu-item-object-custom">
                                            <a href="category/operating-system">
                                                <span class="font-text">操作系统</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li id="menu-item-236"
                                    class="menu-item menu-item-type-custom menu-item-object-custom">
                                    <a href="category/other-tech">
                                        <i class="fa-th-large fa"></i>
                                        <span class="font-text">其他技术</span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li id="menu-item-4"
                                            class="menu-item menu-item-type-custom menu-item-object-custom">
                                            <a href="category/js">
                                                <span class="font-text">JavaScript/jQuery</span>
                                            </a>
                                        </li>
                                        <li id="menu-item-85"
                                            class="menu-item menu-item-type-custom menu-item-object-custom">
                                            <a href="category/web-build">
                                                <span class="font-text">网站建设</span>
                                            </a>
                                            <ul class="sub-menu">
                                                <li id="menu-item-16"
                                                    class="menu-item menu-item-type-custom menu-item-object-custom">
                                                    <a href="category/webserver">
                                                        <span class="font-text">Apache/Nginx</span>
                                                    </a>
                                                </li>
                                                <li id="menu-item-15"
                                                    class="menu-item menu-item-type-custom menu-item-object-custom">
                                                    <a href="category/os">
                                                        <span class="font-text">Linux</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li id="menu-item-276"
                                    class="menu-item menu-item-type-custom menu-item-object-custom">
                                    <a href="category/knowledge">
                                        <i class="fa-bookmark fa"></i>
                                        <span class="font-text">资源与知识</span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li id="menu-item-13"
                                            class="menu-item menu-item-type-custom menu-item-object-custom">
                                            <a href="category/vedio">
                                                <span class="font-text">视频收藏</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li id="menu-item-277"
                                    class="menu-item menu-item-type-custom menu-item-object-custom">
                                    <a href="p/message">
                                        <i class="fa-comments fa"></i>
                                        <span class="font-text">留言板</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav><!-- #site-nav -->
                </div><!-- #site-nav-wrap -->
                <div class="clear"></div>
            </div><!-- #top-menu -->
        </div>
        <!-- #menu-box -->
    </header><!-- #masthead -->
    <div id="search-main">
        <div class="searchbar">
            <form method="get" id="searchform" action="search">
            <span>
                <input type="text" value="" name="keyword" id="keyword" placeholder="输入搜索内容" required/>
                <button type="submit" id="searchsubmit">搜索</button>
            </span>
            </form>
        </div>
        <div class="clear"></div>
    </div>
</#macro>