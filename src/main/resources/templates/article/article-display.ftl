<#include "../include/macros.ftl"/>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title>ElasticSeach实时同步MySQL数据 | 言曌博客</title>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="renderer" content="webkit">
    <meta name="theme-color" content="#fff">
    <meta name="keywords" content="MySQL,elasticsearch">
    <meta name="description"
          content="ElasticSearch是目前最风靡的一款的开源框架，可用于站内搜索和日志分析。 目前，我们准备把所有文章搜索或分页都基于 ElasticSearch 实现，其&ldquo;搜索速度快，有分词，高亮">
    <@css></@css>
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
        <a href="category/search-engine">搜索引擎框架</a>
        <i class="fa fa-angle-right"></i>
        <a href="category/dependency">第三方依赖</a>
        <i class="fa fa-angle-right"></i>
        正文
    </nav>

    <div id="content" class="site-content">
        <div id="primary" class="content-area">

            <main id="main" class="site-main" role="main">
                <article class="post">
                    <header class="entry-header">
                        <h1 class="entry-title">
                            ElasticSeach实时同步MySQL数据
                        </h1>
                    </header><!-- .entry-header -->

                    <div class="entry-content">
                        <div class="single-content">
                            <p>ElasticSearch是目前最风靡的一款的开源框架，可用于站内搜索和日志分析。 目前，我们准备把所有文章搜索或分页都基于 ElasticSearch 实现，其&ldquo;搜索速度快，有分词，高亮等功能&rdquo;非常吸引人。
                                通常为了缓解 MySQL 的压力，我们可以尝试让 MySQL 用于写，读都从 ElasticSearch 或 Redis 来进行。然后，我们需要解决的就是数据如何从
                                MySQL实时或近实时同步到 ElasticSearch 中去，可以用 MySQL 的 binlog 出发，它记录了 MySQL 执行的 sql
                                语句(除了查询语句)，可以用于恢复数据。 目前通过 binlog 实现 mysql 数据同步到 es
                                中的开源框架有好几个，本文介绍其中一种：go-mysql-elasticsearch，在 mac 上实践。 官方地址：<a
                                        href="https://github.com/siddontang/go-mysql-elasticsearch"
                                        rel="noopener noreferrer" target="_blank">https://github.com/siddontang/go-mysql-elasticsearch</a>
                                &nbsp;</p>
                            <h2>一、安装 go 环境</h2>
                            <p><strong>1.下载</strong> go语言中文网：<a href="https://studygolang.com/dl"
                                                                rel="noopener noreferrer" target="_blank">https://studygolang.com/dl</a>
                                下载 &gt; 1.9 版本的对应的包，mac 版可以直接下载 pkg 后缀的执行文件，双击安装 也可以直接下载压缩包，然后解压 &nbsp;
                                <strong>2.配置环境变量</strong></p>
                            <div class="dp-highlighter">
                                <ol class="dp-j" start="1">
                                    <li class="alt">export&nbsp;PATH=$PATH:/usr/local/go/bin</li>
                                    <li>export&nbsp;GOPATH=/Users/liuyanzhao/go</li>
                                </ol>
                            </div>
                            <p>&nbsp;</p>
                            <h2>二、下载 go-mysql-elasticsearch</h2>
                            <p>分别执行以下三行命令(也可以直接克隆上面的 github 资源地址到本地) go get github.com/siddontang/go-mysql-elasticsearch
                                cd&nbsp;<code>$GOPATH/src/github.com/siddontang/go-mysql-elasticsearch</code> make
                                &nbsp;</p>
                            <h2>三、配置</h2>
                            <p><strong>1.MySQL 配置</strong> 修改 MySQL 的 my.cnf 文件，mac 上是在 /etc/my.cnf</p>
                            <div class="dp-highlighter">
                                <div class="bar"><br></div>
                                <ol class="dp-j" start="1">
                                    <li class="alt">binlog_format=ROW</li>
                                    <li>log-bin=mysql-bin</li>
                                    <li class="alt">server-id=<span class="number">1</span></li>
                                </ol>
                            </div>
                            <p>下面分别说明一下这三行配置 go-mysql-search 限定了 binlog 必须使用 ROW 模式，server-id 和 下面的配置文件中的一致。 &nbsp;
                                <strong>2.go-mysql-elasticsearch 配置</strong></p>
                            <p class="p1">修改 go-mysql-elasticsearch/etc/river.toml</p>
                            <p class="p1">该文件是唯一配置文件</p>
                            <div class="dp-highlighter">
                                <div class="bar"><br></div>
                                <ol class="dp-j" start="1">
                                    <li class="alt">#&nbsp;MySQL&nbsp;address,&nbsp;user&nbsp;and&nbsp;password</li>
                                    <li>#&nbsp;user&nbsp;must&nbsp;have&nbsp;replication&nbsp;privilege&nbsp;in&nbsp;MySQL.</li>
                                    <li class="alt">my_addr&nbsp;=&nbsp;<span
                                            class="string">&quot;127.0.0.1:3306&quot;</span></li>
                                    <li>my_user&nbsp;=&nbsp;<span class="string">&quot;root&quot;</span></li>
                                    <li class="alt">my_pass&nbsp;=&nbsp;<span class="string">&quot;123456&quot;</span>
                                    </li>
                                    <li>my_charset&nbsp;=&nbsp;<span class="string">&quot;utf8&quot;</span></li>
                                    <li class="alt"><br></li>
                                    <li>#&nbsp;Set&nbsp;<span class="keyword">true</span> when&nbsp;elasticsearch&nbsp;use&nbsp;https
                                    </li>
                                    <li class="alt">#es_https&nbsp;=&nbsp;<span class="keyword">false</span></li>
                                    <li>#&nbsp;Elasticsearch&nbsp;address</li>
                                    <li class="alt">es_addr&nbsp;=&nbsp;<span
                                            class="string">&quot;127.0.0.1:9200&quot;</span></li>
                                    <li>#&nbsp;Elasticsearch&nbsp;user&nbsp;and&nbsp;password,&nbsp;maybe&nbsp;set&nbsp;by&nbsp;shield,&nbsp;nginx,&nbsp;or&nbsp;x-pack</li>
                                    <li class="alt">es_user&nbsp;=&nbsp;<span class="string">&quot;&quot;</span></li>
                                    <li>es_pass&nbsp;=&nbsp;<span class="string">&quot;&quot;</span></li>
                                    <li class="alt"><br></li>
                                    <li>#&nbsp;Path&nbsp;to&nbsp;store&nbsp;data,&nbsp;like&nbsp;master.info,&nbsp;<span
                                            class="keyword">if</span> not&nbsp;set&nbsp;or&nbsp;empty,
                                    </li>
                                    <li class="alt">#&nbsp;we&nbsp;must&nbsp;use&nbsp;<span class="keyword">this</span>
                                        to&nbsp;support&nbsp;breakpoint&nbsp;resume&nbsp;syncing.
                                    </li>
                                    <li>#&nbsp;TODO:&nbsp;support&nbsp;other&nbsp;storage,&nbsp;like&nbsp;etcd.</li>
                                    <li class="alt">data_dir&nbsp;=&nbsp;<span class="string">&quot;./var&quot;</span>
                                    </li>
                                    <li><br></li>
                                    <li class="alt">#&nbsp;Inner&nbsp;Http&nbsp;status&nbsp;address</li>
                                    <li>stat_addr&nbsp;=&nbsp;<span class="string">&quot;127.0.0.1:12800&quot;</span>
                                    </li>
                                    <li class="alt"><br></li>
                                    <li>#&nbsp;pseudo&nbsp;server&nbsp;id&nbsp;like&nbsp;a&nbsp;slave</li>
                                    <li class="alt">server_id&nbsp;=&nbsp;<span class="number">1</span></li>
                                    <li><br></li>
                                    <li class="alt">#&nbsp;mysql&nbsp;or&nbsp;mariadb</li>
                                    <li>flavor&nbsp;=&nbsp;<span class="string">&quot;mysql&quot;</span></li>
                                    <li class="alt"><br></li>
                                    <li>#&nbsp;mysqldump&nbsp;execution&nbsp;path</li>
                                    <li class="alt">#&nbsp;<span class="keyword">if</span> not&nbsp;set&nbsp;or&nbsp;empty,&nbsp;ignore&nbsp;mysqldump.
                                    </li>
                                    <li>mysqldump&nbsp;=&nbsp;<span class="string">&quot;mysqldump&quot;</span></li>
                                    <li class="alt"><br></li>
                                    <li>#&nbsp;<span class="keyword">if</span> we&nbsp;have&nbsp;no&nbsp;privilege&nbsp;to&nbsp;use&nbsp;mysqldump&nbsp;with&nbsp;--master-data,
                                    </li>
                                    <li class="alt">#&nbsp;we&nbsp;must&nbsp;skip&nbsp;it.</li>
                                    <li>#skip_master_data&nbsp;=&nbsp;<span class="keyword">true</span></li>
                                    <li class="alt"><br></li>
                                    <li>#&nbsp;minimal&nbsp;items&nbsp;to&nbsp;be&nbsp;inserted&nbsp;in&nbsp;one&nbsp;bulk</li>
                                    <li class="alt">bulk_size&nbsp;=&nbsp;<span class="number">128</span></li>
                                    <li><br></li>
                                    <li class="alt">
                                        #&nbsp;force&nbsp;flush&nbsp;the&nbsp;pending&nbsp;requests&nbsp;<span
                                            class="keyword">if</span> we&nbsp;don&#39;t&nbsp;have&nbsp;enough&nbsp;items&nbsp;&gt;=&nbsp;bulk_size
                                    </li>
                                    <li>flush_bulk_time&nbsp;=&nbsp;<span class="string">&quot;200ms&quot;</span></li>
                                    <li class="alt"><br></li>
                                    <li>#&nbsp;Ignore&nbsp;table&nbsp;without&nbsp;primary&nbsp;key</li>
                                    <li class="alt">skip_no_pk_table&nbsp;=&nbsp;<span class="keyword">false</span></li>
                                    <li><br></li>
                                    <li class="alt">#&nbsp;MySQL&nbsp;data&nbsp;source</li>
                                    <li>[[source]]</li>
                                    <li class="alt">schema&nbsp;=&nbsp;<span class="string">&quot;sens_blog&quot;</span>
                                    </li>
                                    <li><br></li>
                                    <li class="alt"><br></li>
                                    <li>[[rule]]</li>
                                    <li class="alt">schema&nbsp;=&nbsp;<span class="string">&quot;sens_blog&quot;</span>
                                    </li>
                                    <li>table&nbsp;=&nbsp;<span class="string">&quot;sens_post&quot;</span></li>
                                    <li class="alt">index&nbsp;=&nbsp;<span class="string">&quot;blog&quot;</span></li>
                                    <li>type&nbsp;=&nbsp;<span class="string">&quot;post&quot;</span></li>
                                    <li class="alt">filter&nbsp;=&nbsp;[<span class="string">&quot;post_id&quot;</span>,&nbsp;<span
                                            class="string">&quot;user_id&quot;</span>,&nbsp;<span class="string">&quot;post_title&quot;</span>,&nbsp;<span
                                            class="string">&quot;post_summary&quot;</span>,&nbsp;<span class="string">&quot;post_thumbnail&quot;</span>,&nbsp;<span
                                            class="string">&quot;post_type&quot;</span>,&nbsp;<span class="string">&quot;post_status&quot;</span>,&nbsp;<span
                                            class="string">&quot;post_views&quot;</span>,&nbsp;&nbsp;<span
                                            class="string">&quot;post_likes&quot;</span>,&nbsp;<span class="string">&quot;comment_size&quot;</span>,&nbsp;<span
                                            class="string">&quot;post_date&quot;</span>]
                                    </li>
                                    <li>id&nbsp;=&nbsp;[<span class="string">&quot;post_id&quot;</span>]</li>
                                    <li class="alt"><br></li>
                                    <li>[rule.field]</li>
                                    <li class="alt">post_id&nbsp;=&nbsp;<span class="string">&quot;postId&quot;</span>
                                    </li>
                                    <li>user_id&nbsp;=&nbsp;<span class="string">&quot;userId&quot;</span></li>
                                    <li class="alt">post_title&nbsp;=&nbsp;<span
                                            class="string">&quot;postTitle&quot;</span></li>
                                    <li>post_summary&nbsp;=&nbsp;<span class="string">&quot;postSummary&quot;</span>
                                    </li>
                                    <li class="alt">post_thumbnail&nbsp;=&nbsp;<span class="string">&quot;postThumbnail&quot;</span>
                                    </li>
                                    <li>post_type&nbsp;=&nbsp;<span class="string">&quot;postType&quot;</span></li>
                                    <li class="alt">post_status&nbsp;=&nbsp;<span
                                            class="string">&quot;postStatus&quot;</span></li>
                                    <li>post_views&nbsp;=&nbsp;<span class="string">&quot;postViews&quot;</span></li>
                                    <li class="alt">post_likes&nbsp;=&nbsp;<span
                                            class="string">&quot;postLikes&quot;</span></li>
                                    <li>comment_size&nbsp;=&nbsp;<span class="string">&quot;commentSize&quot;</span>
                                    </li>
                                    <li class="alt">post_date&nbsp;=&nbsp;<span
                                            class="string">&quot;postDate&quot;</span></li>
                                </ol>
                            </div>
                            <p class="p1">上面的&nbsp;schema 指的是 MySQL 数据库名，table 数据库中要同步的表名，index 是 ES 索引，type 是 ES
                                类型。</p>
                            <p class="p1">上面这段配置指的是 同步 MySQL sens_blog 数据库中的 sens_post 表到 ES 中，索引为 blog，类型为
                                post。如果索引没有创建，会自动创建。如果索引创建了，不会自动创建。</p>
                            <p class="p1">建议还是自己创建 索引</p>
                            <p class="p1">PUT&nbsp;127.0.0.1:9200/blog</p>
                            <div class="dp-highlighter">
                                <div class="bar"><br></div>
                                <ol class="dp-j" start="1">
                                    <li class="alt">{</li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">&quot;settings&quot;</span>:&nbsp;{
                                    </li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;number_of_shards&quot;</span>:&nbsp;<span
                                            class="number">5</span>,
                                    </li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">&quot;number_of_replicas&quot;</span>:&nbsp;<span
                                            class="number">1</span></li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;},</li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;<span class="string">&quot;mappings&quot;</span>:&nbsp;{
                                    </li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;post&quot;</span>:&nbsp;{
                                    </li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;properties&quot;</span>:&nbsp;{
                                    </li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;postId&quot;</span>:&nbsp;{
                                    </li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;type&quot;</span>:&nbsp;<span class="string">&quot;long&quot;</span>
                                    </li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},</li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;userId&quot;</span>:&nbsp;{
                                    </li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;type&quot;</span>:&nbsp;<span class="string">&quot;long&quot;</span>
                                    </li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},</li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;postTitle&quot;</span>:&nbsp;{
                                    </li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;type&quot;</span>:&nbsp;<span class="string">&quot;text&quot;</span>
                                    </li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},</li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;postSummary&quot;</span>:&nbsp;{
                                    </li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;type&quot;</span>:&nbsp;<span class="string">&quot;text&quot;</span>
                                    </li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},</li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;postThumbnail&quot;</span>:&nbsp;{
                                    </li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;type&quot;</span>:&nbsp;<span class="string">&quot;keyword&quot;</span>
                                    </li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},</li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;postType&quot;</span>:&nbsp;{
                                    </li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;type&quot;</span>:&nbsp;<span class="string">&quot;keyword&quot;</span>
                                    </li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},</li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;postStatus&quot;</span>:&nbsp;{
                                    </li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;type&quot;</span>:&nbsp;<span class="string">&quot;integer&quot;</span>
                                    </li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},</li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;postViews&quot;</span>:&nbsp;{
                                    </li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;type&quot;</span>:&nbsp;<span class="string">&quot;long&quot;</span>
                                    </li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},</li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;postLikes&quot;</span>:&nbsp;{
                                    </li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;type&quot;</span>:&nbsp;<span class="string">&quot;long&quot;</span>
                                    </li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},</li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;commentSize&quot;</span>:&nbsp;{
                                    </li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;type&quot;</span>:&nbsp;<span class="string">&quot;long&quot;</span>
                                    </li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},</li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;postDate&quot;</span>:&nbsp;{
                                    </li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                                            class="string">&quot;type&quot;</span>:&nbsp;<span class="string">&quot;date&quot;</span>
                                    </li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</li>
                                    <li class="alt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</li>
                                    <li>&nbsp;&nbsp;&nbsp;&nbsp;}</li>
                                    <li class="alt">}</li>
                                </ol>
                            </div>
                            <p class="p1"><br></p>
                            <h2 class="p1">四、启动，开始自动同步</h2>
                            <p class="p1">上面配置文件修改后，保存。</p>
                            <p class="p1">执行命令：</p>
                            <div class="dp-highlighter">
                                <ol class="dp-j" start="1">
                                    <li class="alt">./bin/go-mysql-elasticsearch&nbsp;-config=./etc/river.toml</li>
                                </ol>
                            </div>
                            <p class="p1">然后就能开始同步。</p>
                            <p class="p1">打开 es 的 head 插件：http://127.0.0.1:9100 查看数据</p>
                            <p class="p1"><a
                                    href="http://blog-cdn.codergroup.cn/uploads/2019/02/WX20190205-193343@2x.png"><img
                                    class="wp-image-9335 aligncenter fr-fic fr-dii"
                                    src="http://blog-cdn.codergroup.cn/uploads/2019/02/WX20190205-193343@2x-1024x611.png"
                                    alt="" width="651" height="389"></a></p>
                            <p class="p1">如果你不小心删除了索引，想要重新同步，但是却发现无法同步之前的数据。</p>
                            <p class="p1">你可以删除 go-mysql-elasticsearch/var/master.info 即可解决问题</p>
                            <p class="p1"><br></p>
                            <audio controls="controls" style="display: none;"><br></audio>
                        </div>


                        <div class="clear"></div>
                        <div id="social">
                            <div class="social-main">
                                <span class="like">
                                     <a href="javascript:void(0);" data-id="9334" title="点赞"
                                        class="favorite">
                                         <i class="fa fa-thumbs-up"></i>赞
                                         <i class="count">3</i>
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
                                        <i class="fa fa-comment-o"></i> 1
                                    </a>
                                </li>
                                <li class="views"><i class="fa fa-eye"></i> 299 views</li>
                                <li class="r-hide"><a href="javascript:pr()" title="侧边栏"><i
                                        class="fa fa-caret-left"></i> <i class="fa fa-caret-right"></i> 全屏</a></li>
                            </ul>
                            <ul id="fontsize">
                                <li>A+</li>
                            </ul>
                            <div class="single-cat-tag">
                                <div class="single-cat">所属分类：
                                    <a href="category/search-engine" rel="category tag">搜索引擎框架</a>
                                    <a href="category/dependency" rel="category tag">第三方依赖</a>
                                </div>
                            </div>
                        </footer><!-- .entry-footer -->

                        <div class="clear"></div>

                    </div><!-- .entry-content -->

                </article><!-- #post -->

                <div class="single-tag">
                    <ul class="wow fadeInUp" data-wow-delay="0.3s">
                        <li>
                            <a href="tag/mysql" rel="tag" style="background:#4fad7b">MySQL</a>
                        </li>
                        <li>
                            <a href="tag/elasticsearch" rel="tag" style="background:#4fad7b">elasticsearch</a>
                        </li>
                    </ul>
                </div>

                <div class="authorbio wow fadeInUp" data-wow-delay="0.3s">
                <#--<img alt="" src="http://blog-cdn.codergroup.cn/uploads/2019/4/1f00317cbaaf712c93e481d021e93791"-->
                <#--class="avatar avatar-64 photo" height="64" width="64">-->
                    <ul class="spostinfo">
                        <li><strong>版权声明：</strong>本站原创文章，于 2019年02月05日，由
                            <b><a href="author/saysky"
                                  rel="author">言曌
                            </a>
                            </b> 发表。
                        </li>
                        <li class="reprinted"><strong>转载请注明：</strong>
                            <a href="article/9334" rel="bookmark">
                                ElasticSeach实时同步MySQL数据| 言曌博客
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
                                                    <a href="article/7170">
                                                        <img src="http://blog-cdn.codergroup.cn/static/images/thumbnail/img_6.jpg"
                                                             alt="SpringBoot 整合 elasticsearch 实例">
                                                    </a>
                                                </span>
                                        </figure>
                                        <div class="related-title">
                                            <a href="article/7170">SpringBoot 整合 elasticsearch 实例</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="scrolltext-title">
                                <div class="r4">
                                    <div class="related-site">
                                        <figure class="related-site-img">
                                                <span class="load">
                                                    <a href="article/5514">
                                                        <img src="http://blog-cdn.codergroup.cn/static/images/thumbnail/img_0.jpg"
                                                             alt="安装MySQL出现 Install/Remove of the Service Denied！">
                                                    </a>
                                                </span>
                                        </figure>
                                        <div class="related-title">
                                            <a href="article/5514">安装MySQL出现 Install/Remove of the Service Denied！</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="scrolltext-title">
                                <div class="r4">
                                    <div class="related-site">
                                        <figure class="related-site-img">
                                                <span class="load">
                                                    <a href="article/9338">
                                                        <img src="http://blog-cdn.codergroup.cn/uploads/2019/2/2eccea206276fb06d02c34a5380da18f"
                                                             alt="SpringBoot 整合ElasticSearch，实现站内搜索，高亮关键字">
                                                    </a>
                                                </span>
                                        </figure>
                                        <div class="related-title">
                                            <a href="article/9338">SpringBoot 整合ElasticSearch，实现站内搜索，高亮关键字</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="scrolltext-title">
                                <div class="r4">
                                    <div class="related-site">
                                        <figure class="related-site-img">
                                                <span class="load">
                                                    <a href="article/9334">
                                                        <img src="http://blog-cdn.codergroup.cn/uploads/2019/2/2eccea206276fb06d02c34a5380da18f"
                                                             alt="ElasticSeach实时同步MySQL数据">
                                                    </a>
                                                </span>
                                        </figure>
                                        <div class="related-title">
                                            <a href="article/9334">ElasticSeach实时同步MySQL数据</a>
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

                    <a href="article/9338" rel="next">
                        <span class="meta-nav">
                            <span class="post-nav">下一篇
                                <i class="fa fa-angle-right"></i>
                            </span><br>SpringBoot 整合ElasticSearch，实现站内搜索，高亮关键字
                        </span>
                    </a>
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
                        <div class="nav-next">
                            <a href="article/9338" rel="next">
                                <span class="meta-nav-l" aria-hidden="true">
                                    <i class="fa fa-angle-right"></i>
                                </span>
                            </a>
                        </div>
                    </div>
                </nav>

                <!-- 引用 -->
                <div class="scroll-comments"></div>

                <link type="text/css" rel="stylesheet" href="/page/css/OwO.min.css">
                <style></style>
                <div id="comments" class="comments-area">
                    <#if article.articleCanComment == true>
                        <div id="respond" class="comment-respond wow fadeInUp" data-wow-delay="0.3s">
                            <h3 id="reply-title" class="comment-reply-title">发表评论
                                <small><a rel="nofollow" id="cancel-comment-reply-link" href="javascript:void(0)" style="display: none;">取消回复</a></small>
                            </h3>
                            <form action="" method="post"><p class="comment-form-comment">
                                <div class="OwO"></div>
                                <textarea id="commentContent" class="comment-input-content" name="commentContent" rows="4"
                                          tabindex="1" placeholder="赶快评论一个吧！"></textarea>
                                <div class="native-message" style="display: none"></div>
                                </p>
                                <div id="comment-author-info"><p class="comment-form-author"><label for="author">昵称<span
                                        class="required">*</span></label> <input type="text" class="comment-input comment-input-who" name="commentAuthor" id="commentAuthor">
                                </p>
                                    <p class="comment-form-email"><label for="email">邮箱<span class="required">*</span></label> <input type="text" class="comment-input comment-input-email" name="commentAuthorEmail" id="commentAuthorEmail"></p>
                                    <p class="comment-form-url"><label for="url">网址</label>
                                        <input type="text" class="comment-input comment-input-website" name="commentAuthorUrl" id="commentAuthorUrl">
                                    </p></div>
                                <div class="clear"></div>
                                <p class="form-submit"><input id="submit" name="submit" type="button" tabindex="5" value="提交评论"> <input type="hidden" name="postId" value="9334">
                                    <input type="hidden" name="commentParent" id="commentParent" value="0"></p></form>
                        </div>
                        <h2 class="comments-title wow fadeInUp" data-wow-delay="0.3s"> 目前评论：1</h2>
                        <ul class="comment-list" id="comments-list">
                            <li class="comment even thread-even parent" id="comment-id-4141">
                                <div class="comment-body">
                                    <div class="comment-author vcard"><img class="avatar" src="/page/img/avator-comment.png" alt="avatar"> <strong> <a
                                            href="javascript:void(0)" rel="external nofollow"
                                            class="native-list-one-head-name" target="_blank">哈哈</a> </strong> <span
                                            class="comment-meta commentmetadata native-comment-ua"> <span class="ua-info"
                                                                                                          style="display: none;"> <span
                                            class="WB-OS native-comment-ua-info" style="display: none;"> Mozilla/5.0 (Linux; U; Android 9; zh-; MI 8 Build/PKQ1.180729.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 Mobile Safari/537.36 XiaoMi/MiuiBrowser/10.9.0 </span> 江苏省 移动 </span> <br> <span
                                            class="comment-aux"> <span class="reply"> <a rel="nofollow" at="4141" class="native-list-one-footer-reback" href="javascript:void(0)">回复</a> </span> 2019-07-07 10:13 </span> </span>
                                    </div>
                                    <p>好牛啊</p></div>
                            </li>
                            <li class="comment even thread-even parent" id="comment-id-4118">
                                <div class="comment-body">
                                    <div class="comment-author vcard"><img class="avatar" src="/page/img/avator-comment.png" alt="avatar"> <strong> <a
                                            href="javascript:void(0)" rel="external nofollow"
                                            class="native-list-one-head-name" target="_blank">haibara98</a> </strong> <span
                                            class="comment-meta commentmetadata native-comment-ua"> <span class="ua-info"
                                                                                                          style="display: none;"> <span
                                            class="WB-OS native-comment-ua-info" style="display: none;"> Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                            class="comment-aux"> <span class="reply"> <a rel="nofollow" at="4118"
                                                                                         class="native-list-one-footer-reback"
                                                                                         href="javascript:void(0)">回复</a> </span> 2019-06-11 15:34 </span> </span>
                                    </div>
                                    <p>ndndnd</p></div>
                            </li>
                            <li class="comment even thread-even parent" id="comment-id-4117">
                                <div class="comment-body">
                                    <div class="comment-author vcard"><img class="avatar" src="static/images/avatar/30.jpeg"
                                                                           alt="avatar"> <strong> <a
                                            href="javascript:void(0)" rel="external nofollow"
                                            class="native-list-one-head-name" target="_blank">haibara98</a> </strong> <span
                                            class="comment-meta commentmetadata native-comment-ua"> <span class="ua-info"
                                                                                                          style="display: none;"> <span
                                            class="WB-OS native-comment-ua-info" style="display: none;"> Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                            class="comment-aux"> <span class="reply"> <a rel="nofollow" at="4117"
                                                                                         class="native-list-one-footer-reback"
                                                                                         href="javascript:void(0)">回复</a> </span> 2019-06-11 15:33 </span> </span>
                                    </div>
                                    <p>mhgmf</p></div>
                            </li>
                            <li class="comment even thread-even parent" id="comment-id-2028">
                                <div class="comment-body">
                                    <div class="comment-author vcard"><img class="avatar"
                                                                           src="/page/img/avator-comment.png"
                                                                           alt="avatar"> <strong> <a
                                            href="javascript:void(0)" rel="external nofollow"
                                            class="native-list-one-head-name" target="_blank">sadfsadfdsa</a> </strong>
                                        <span class="comment-meta commentmetadata native-comment-ua"> <span class="ua-info" style="display: none;"> <span
                                                class="WB-OS native-comment-ua-info" style="display: none;"> Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                                class="comment-aux"> <span class="reply">
                                            <a rel="nofollow" at="2028" class="native-list-one-footer-reback" href="javascript:void(0)">回复</a> </span> 2019-03-18 10:09 </span> </span>
                                    </div>
                                    <p>|´・ω・)ノ<img src='/page/img/avator-comment.png' alt='呵呵.png'
                                                   style='vertical-align: middle;'></p></div>
                                <ul class="comment-list children">
                                    <li class="comment even thread-even parent" id="comment-id-2029">
                                        <div class="comment-body">
                                            <div class="comment-author vcard"><img class="avatar" src="/page/img/avator-comment.png" alt="avatar"> <strong>
                                                <a href="javascript:void(0)" rel="external nofollow"
                                                    class="native-list-one-head-name" target="_blank">sadfsadfdsa</a>
                                            </strong> <span class="comment-meta commentmetadata native-comment-ua "> <span
                                                    class="ua-info" style="display: none;"> <span class="WB-OS native-comment-ua-info" style="display: none;"> Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36 </span> 江苏省 移动 </span> <br> <span
                                                    class="comment-aux"> <span class="reply"> <a rel="nofollow" at="2029" class="native-list-one-footer-reback" href="javascript:void(0)">回复</a> </span> 2019-03-18 10:19 </span> </span></div>
                                            <p><a href='#comment-id-2028'>@sadfsadfdsa</a> tttttt</p></div>
                                    </li>
                                </ul><!-- .comment-list --> </li>
                        </ul><!-- .comment-list -->
                        <div class="scroll-links">
                            <nav class="navigation comment-navigation" role="navigation"><h2 class="screen-reader-text">
                                评论导航</h2>
                                <div class="nav-links">
                                    <div class="nav-previous"><a href="https://liuyanzhao.com/message.html/comment-page-3/#comments">较早评论</a>
                                    </div>
                                </div>
                            </nav>
                        </div>
                        <nav class="comment-navigation">
                            <div class="pagination"><span class="page-numbers current">1</span> <a class="page-numbers"
                                                                                                   href="?page=2#comments-list">2</a>
                                <a class="page-numbers" href="?page=3#comments-list">3</a> <a class="page-numbers" href="?page=4#comments-list">4</a>
                                <a class="next page-numbers" href="?page=2#comments-list"> <i class="fa fa-angle-right"></i></a></div>
                        </nav>
                        <div class="clear"></div>
                    </#if>
                    <#if article.articleCanComment == false>
                        <h2 class="comments-title wow fadeInUp" data-wow-delay="0.3s"> 博主设置此文章不能评论</h2>
                    </#if>
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

