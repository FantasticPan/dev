package com.pan.dev.controller;

import com.pan.dev.dao.ArticleDao;
import com.pan.dev.entity.Article;
import com.pan.dev.util.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Pan on 2019/6/29.
 */
@Controller
@RequestMapping("/article")
public class ArticleController {

    @Autowired
    private ArticleDao articleDao;

    /**
     * 获得文章编辑界面
     *
     * @return
     */
    @RequestMapping("/edit")
    public ModelAndView articleEdit() {
        return ResultUtil.view("/article/article-edit");
    }

    /**
     * 发布文章
     *
     * @param markdownContent markdown格式文章内容
     * @param htmlContent     html格式文章内容
     * @return 页面跳转
     */
    @PostMapping("/publish")
    public ModelAndView articlePublish(@RequestParam("editormd-markdown-doc") String markdownContent,
                                       @RequestParam("editor-html-code") String htmlContent) {
        Article article = new Article();
        articleDao.insertArticle(article);
        return ResultUtil.redirect("/show");
    }


}
