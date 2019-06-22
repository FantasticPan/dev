package com.pan.dev.service.impl;

import com.pan.dev.dao.ArticleDao;
import com.pan.dev.entity.Article;
import com.pan.dev.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by Pan on 2019/6/17.
 */
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleDao articleDao;

    @Override
    public void insertArticle(Article article) {
        articleDao.insertArticle(article);
    }

    @Override
    public void deleteArticle(Article article) {
        articleDao.deleteArticle(article);
    }

    @Override
    public void updateArticle(Article article) {
        articleDao.updateArticle(article);
    }

    @Override
    public List<Article> getAllArticle() {
        return articleDao.getAllArticle();
    }

    @Override
    public List<Article> getArticlesByClassify(String articleClassify) {
        return articleDao.getArticlesByClassify(articleClassify);
    }

    @Override
    public void viewCountIncrease(Integer articleId) {
        articleDao.viewCountIncrease(articleId);
    }

    @Override
    public void likeCountIncrease(Integer articleId) {
        articleDao.likeCountIncrease(articleId);
    }
}
