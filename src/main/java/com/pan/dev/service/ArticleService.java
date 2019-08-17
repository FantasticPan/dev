package com.pan.dev.service;

import com.pan.dev.entity.Article;

import java.util.List;

/**
 * Created by Pan on 2019/6/17.
 */
public interface ArticleService {

    void insertArticle(Article article);

    void deleteArticleById(Integer articleId);

    void updateArticle(Article article);

    List<Article> getAllArticle();

    List<Article> getArticlesByClassify(String articleClassify);

    List<Article> getArticleByTag(String articleTag);

    List<Article> getTop10ViewCountArticle();

    List<Article> getArticleBySlide();

    List<String> getTags();

    List<String> getClassifies();

    Article getArticleById(Integer articleId);

    void viewCountIncrease(Integer articleId);

    void likeCountIncrease(Integer articleId);
}
