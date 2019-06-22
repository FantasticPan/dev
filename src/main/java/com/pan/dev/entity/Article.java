package com.pan.dev.entity;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * 文章类
 * Created by Pan on 2019/6/17.
 */
public class Article implements Serializable {

    private static final long serialVersionUID = 4971922185708969462L;

    private Integer articleId;

    //文章标题
    private String articleTitle;

    //文章内容
    private String articleContent;

    //文章摘要
    private String articleSummary;

    //文章html内容
    private String htmlArticleContent;

    //文章作者
    private User articleAuthor;

    //文章创建时间
    private Timestamp articleCreateDate;

    //文章更新时间
    private Timestamp articleUpdateDate;

    //文章访问量、阅读量
    private Integer articleViewCount;

    //文章评论量
    private Integer articleCommentCount;

    //文章点赞量
    private Integer articleLikeCount;

    //文章原创、转载
    private String articleAuthorType;

    //文章分类
    private String articleClassify;

    //文章是否可以评论
    private Integer canComment;

    //上一篇文章标题
    private String preArticleTitle;

    //下一篇文章标题
    private String nextArticleTitle;
}
