package com.pan.dev.entity;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * 文章类
 * Created by Pan on 2019/6/17.
 */
public class Article implements Serializable {

    private static final long serialVersionUID = -2650040641412028112L;

    //文章主键id
    private Integer articleId;

    //文章标题
    private String articleTitle;

    //文章内容
    private String markdownArticleContent;

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
    private Boolean canComment;

    //上一篇文章标题
    private String preArticleTitle;

    //下一篇文章标题
    private String nextArticleTitle;

    //文章归档
    private Boolean articleArchive;

    public Article() {
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public String getArticleTitle() {
        return articleTitle;
    }

    public void setArticleTitle(String articleTitle) {
        this.articleTitle = articleTitle;
    }

    public String getMarkdownArticleContent() {
        return markdownArticleContent;
    }

    public void setMarkdownArticleContent(String markdownArticleContent) {
        this.markdownArticleContent = markdownArticleContent;
    }

    public String getArticleSummary() {
        return articleSummary;
    }

    public void setArticleSummary(String articleSummary) {
        this.articleSummary = articleSummary;
    }

    public String getHtmlArticleContent() {
        return htmlArticleContent;
    }

    public void setHtmlArticleContent(String htmlArticleContent) {
        this.htmlArticleContent = htmlArticleContent;
    }

    public User getArticleAuthor() {
        return articleAuthor;
    }

    public void setArticleAuthor(User articleAuthor) {
        this.articleAuthor = articleAuthor;
    }

    public Timestamp getArticleCreateDate() {
        return articleCreateDate;
    }

    public void setArticleCreateDate(Timestamp articleCreateDate) {
        this.articleCreateDate = articleCreateDate;
    }

    public Timestamp getArticleUpdateDate() {
        return articleUpdateDate;
    }

    public void setArticleUpdateDate(Timestamp articleUpdateDate) {
        this.articleUpdateDate = articleUpdateDate;
    }

    public Integer getArticleViewCount() {
        return articleViewCount;
    }

    public void setArticleViewCount(Integer articleViewCount) {
        this.articleViewCount = articleViewCount;
    }

    public Integer getArticleCommentCount() {
        return articleCommentCount;
    }

    public void setArticleCommentCount(Integer articleCommentCount) {
        this.articleCommentCount = articleCommentCount;
    }

    public Integer getArticleLikeCount() {
        return articleLikeCount;
    }

    public void setArticleLikeCount(Integer articleLikeCount) {
        this.articleLikeCount = articleLikeCount;
    }

    public String getArticleAuthorType() {
        return articleAuthorType;
    }

    public void setArticleAuthorType(String articleAuthorType) {
        this.articleAuthorType = articleAuthorType;
    }

    public String getArticleClassify() {
        return articleClassify;
    }

    public void setArticleClassify(String articleClassify) {
        this.articleClassify = articleClassify;
    }

    public Boolean getCanComment() {
        return canComment;
    }

    public void setCanComment(Boolean canComment) {
        this.canComment = canComment;
    }

    public String getPreArticleTitle() {
        return preArticleTitle;
    }

    public void setPreArticleTitle(String preArticleTitle) {
        this.preArticleTitle = preArticleTitle;
    }

    public String getNextArticleTitle() {
        return nextArticleTitle;
    }

    public void setNextArticleTitle(String nextArticleTitle) {
        this.nextArticleTitle = nextArticleTitle;
    }

    public Boolean getArticleArchive() {
        return articleArchive;
    }

    public void setArticleArchive(Boolean articleArchive) {
        this.articleArchive = articleArchive;
    }
}
