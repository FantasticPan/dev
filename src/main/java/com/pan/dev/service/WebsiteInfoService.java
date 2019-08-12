package com.pan.dev.service;

import com.pan.dev.entity.WebsiteInfo;

import java.util.List;

/**
 * Created by Pan on 2019/8/12.
 */
public interface WebsiteInfoService {

    void saveWebsiteInfo(WebsiteInfo websiteInfo);

    List<WebsiteInfo> getWebsiteInfo();

    void websiteVisitCountIncrease();
}
