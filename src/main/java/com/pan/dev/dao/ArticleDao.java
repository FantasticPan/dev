package com.pan.dev.dao;

import com.pan.dev.entity.Article;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Pan on 2019/6/17.
 */
@Repository
public interface ArticleDao {

    void insertArticle(Article article);

    void deleteArticleById(Integer articleId);

    void updateArticle(Article article);

    List<Article> getAllArticle();

    List<Article> getArticlesByClassify(String articleClassify);

    List<Article> getArticleByTag(String articleTag);

    Article getArticleById(Integer articleId);
}
