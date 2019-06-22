package com.pan.dev.service;

import com.pan.dev.entity.Article;

import java.util.List;

/**
 * Created by Pan on 2019/6/17.
 */
public interface ArticleService {

    void insertArticle(Article article);

    void deleteArticle(Article article);

    void updateArticle(Article article);

    List<Article> getAllArticle();

    List<Article> getArticlesByClassify(String articleClassify);

    void viewCountIncrease(Integer articleId);

    void likeCountIncrease(Integer articleId);
}
