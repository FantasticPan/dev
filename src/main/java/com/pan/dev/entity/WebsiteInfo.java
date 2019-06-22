package com.pan.dev.entity;

import java.io.Serializable;

/**
 * Created by Pan on 2019/6/17.
 */
public class WebsiteInfo implements Serializable {

    private static final long serialVersionUID = 3032647515231536737L;

    private Integer websiteInfoId;

    private Integer websiteArticleCount;

    private Integer websiteTagCount;

    private Integer websiteClassifyCount;

    private Integer websiteRunDays;

    private Integer websiteVisitCount;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getWebsiteInfoId() {
        return websiteInfoId;
    }

    public void setWebsiteInfoId(Integer websiteInfoId) {
        this.websiteInfoId = websiteInfoId;
    }

    public Integer getWebsiteArticleCount() {
        return websiteArticleCount;
    }

    public void setWebsiteArticleCount(Integer websiteArticleCount) {
        this.websiteArticleCount = websiteArticleCount;
    }

    public Integer getWebsiteTagCount() {
        return websiteTagCount;
    }

    public void setWebsiteTagCount(Integer websiteTagCount) {
        this.websiteTagCount = websiteTagCount;
    }

    public Integer getWebsiteClassifyCount() {
        return websiteClassifyCount;
    }

    public void setWebsiteClassifyCount(Integer websiteClassifyCount) {
        this.websiteClassifyCount = websiteClassifyCount;
    }

    public Integer getWebsiteRunDays() {
        return websiteRunDays;
    }

    public void setWebsiteRunDays(Integer websiteRunDays) {
        this.websiteRunDays = websiteRunDays;
    }

    public Integer getWebsiteVisitCount() {
        return websiteVisitCount;
    }

    public void setWebsiteVisitCount(Integer websiteVisitCount) {
        this.websiteVisitCount = websiteVisitCount;
    }
}
