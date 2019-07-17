package com.pan.dev.service.impl;

import com.pan.dev.dao.ArticleDao;
import com.pan.dev.entity.Article;
import com.pan.dev.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * Created by Pan on 2019/6/17.
 */
@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleDao articleDao;

    @Override
    public void insertArticle(Article article) {
        articleDao.insertArticle(article);
    }

    @Override
    public void deleteArticleById(Integer articleId) {
        articleDao.deleteArticleById(articleId);
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
    public Article getArticleById(Integer articleId) {
        return articleDao.getArticleById(articleId);
    }

    @Override
    public void viewCountIncrease(Integer articleId) {
        Article article = this.getArticleById(articleId);
        //cas操作加1
        AtomicInteger viewCount = new AtomicInteger(article.getArticleViewCount());
        article.setArticleViewCount(viewCount.incrementAndGet());
        this.updateArticle(article);
    }

    @Override
    public void likeCountIncrease(Integer articleId) {
        Article article = this.getArticleById(articleId);
        //cas操作加1
        AtomicInteger likeCount = new AtomicInteger(article.getArticleLikeCount());
        article.setArticleLikeCount(likeCount.incrementAndGet());
        this.updateArticle(article);
    }
}
