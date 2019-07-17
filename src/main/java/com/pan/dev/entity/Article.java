package com.pan.dev.entity;

import java.io.Serializable;
import java.sql.Date;

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
    private String articleMarkdownContent;

    //文章摘要
    private String articleSummary;

    //文章html内容
    private String articleHtmlContent;

    //文章作者
    private User articleAuthor;

    //文章创建时间
    private Date articleReleaseDate;

    //文章更新时间
    private Date articleUpdateDate;

    //文章访问量、阅读量
    private Integer articleViewCount;

    //文章评论量
    private Integer articleCommentCount;

    //文章点赞量
    private Integer articleLikeCount;

    //文章原创、转载
    private String articleReleaseType;

    //文章分类
    private String articleClassify;

    //文章是否可以评论
    private Boolean articleCanComment;

    //上一篇文章标题
    private String articlePreArticleTitle;

    //下一篇文章标题
    private String articleNextArticleTitle;

    //文章图片路径
    private String articleImage;

    //文章置顶，通过设置权重来决定置顶顺序
    private Integer articleTop;

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

    public String getArticleMarkdownContent() {
        return articleMarkdownContent;
    }

    public void setArticleMarkdownContent(String articleMarkdownContent) {
        this.articleMarkdownContent = articleMarkdownContent;
    }

    public String getArticleSummary() {
        return articleSummary;
    }

    public void setArticleSummary(String articleSummary) {
        this.articleSummary = articleSummary;
    }

    public String getArticleHtmlContent() {
        return articleHtmlContent;
    }

    public void setArticleHtmlContent(String articleHtmlContent) {
        this.articleHtmlContent = articleHtmlContent;
    }

    public User getArticleAuthor() {
        return articleAuthor;
    }

    public void setArticleAuthor(User articleAuthor) {
        this.articleAuthor = articleAuthor;
    }

    public Date getArticleReleaseDate() {
        return articleReleaseDate;
    }

    public void setArticleReleaseDate(Date articleReleaseDate) {
        this.articleReleaseDate = articleReleaseDate;
    }

    public Date getArticleUpdateDate() {
        return articleUpdateDate;
    }

    public void setArticleUpdateDate(Date articleUpdateDate) {
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

    public String getArticleReleaseType() {
        return articleReleaseType;
    }

    public void setArticleReleaseType(String articleReleaseType) {
        this.articleReleaseType = articleReleaseType;
    }

    public String getArticleClassify() {
        return articleClassify;
    }

    public void setArticleClassify(String articleClassify) {
        this.articleClassify = articleClassify;
    }

    public Boolean getArticleCanComment() {
        return articleCanComment;
    }

    public void setArticleCanComment(Boolean articleCanComment) {
        this.articleCanComment = articleCanComment;
    }

    public String getArticlePreArticleTitle() {
        return articlePreArticleTitle;
    }

    public void setArticlePreArticleTitle(String articlePreArticleTitle) {
        this.articlePreArticleTitle = articlePreArticleTitle;
    }

    public String getArticleNextArticleTitle() {
        return articleNextArticleTitle;
    }

    public void setArticleNextArticleTitle(String articleNextArticleTitle) {
        this.articleNextArticleTitle = articleNextArticleTitle;
    }

    public String getArticleImage() {
        return articleImage;
    }

    public void setArticleImage(String articleImage) {
        this.articleImage = articleImage;
    }

    public Integer getArticleTop() {
        return articleTop;
    }

    public void setArticleTop(Integer articleTop) {
        this.articleTop = articleTop;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", articleId=").append(articleId);
        sb.append(", articleTitle=").append(articleTitle);
        sb.append(", articleMarkdownContent=").append(articleMarkdownContent);
        sb.append(", articleSummary=").append(articleSummary);
        sb.append(", articleHtmlContent=").append(articleHtmlContent);
        sb.append(", articleAuthor=").append(articleAuthor);
        sb.append(", articleReleaseDate=").append(articleReleaseDate);
        sb.append(", articleUpdateDate=").append(articleUpdateDate);
        sb.append(", articleViewCount=").append(articleViewCount);
        sb.append(", articleCommentCount=").append(articleCommentCount);
        sb.append(", articleLikeCount=").append(articleLikeCount);
        sb.append(", articleReleaseType=").append(articleReleaseType);
        sb.append(", articleClassify=").append(articleClassify);
        sb.append(", articleCanComment=").append(articleCanComment);
        sb.append(", articlePreArticleTitle=").append(articlePreArticleTitle);
        sb.append(", articleNextArticleTitle=").append(articleNextArticleTitle);
        sb.append(", articleImage=").append(articleImage);
        sb.append(", articleTop=").append(articleTop);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}
