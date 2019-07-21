package com.pan.dev.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pan.dev.entity.Article;
import com.pan.dev.service.ArticleService;
import com.pan.dev.util.ConstantUtil;
import com.pan.dev.util.ResultUtil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by Pan on 2019/6/29.
 */
@Controller
@RequestMapping("/article")
public class ArticleController {

    private static final Logger LOGGER = LogManager.getLogger(ArticleController.class);

    @Autowired
    private ArticleService articleService;

    /**
     * 获得文章编辑界面
     *
     * @return 返回视图跳转至文章编辑页面
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
        articleService.insertArticle(article);
        return ResultUtil.redirect("/show");
    }

    /**
     * 根据Id获取文章
     *
     * @param articleId 文章Id
     * @return 返回视图跳转至文章展示界面
     */
    @GetMapping("/display")
    public ModelAndView articleDisplay(@RequestParam(value = "articleId") Integer articleId, Model model) {
        Article article = articleService.getArticleById(articleId);
        model.addAttribute("article", article);
        return ResultUtil.view("article/article-display");
    }

    /**
     * 根据分类获取文章
     *
     * @param articleClassify 文章分类
     * @param pageNum         当前页数
     * @param model           模型
     * @return 返回ModelAndView视图模型
     */
    @GetMapping("/classify")
    public ModelAndView articleClassify(@RequestParam(value = "articleClassify") String articleClassify,
                                        @RequestParam(required = false, defaultValue = "1", value = "pageNum") Integer pageNum,
                                        Model model) {
        PageHelper.startPage(pageNum, ConstantUtil.PAGE_SIZE);
        List<Article> articleList = articleService.getArticlesByClassify(articleClassify);
        PageInfo<Article> pageInfo = new PageInfo<>(articleList, ConstantUtil.NAVIGATE_PAGES);
        model.addAttribute("pageInfo", pageInfo);
        return ResultUtil.view("/");
    }

    /**
     * 根据标签获取文章
     *
     * @param articleTag 文章标签
     * @param pageNum    当前页数
     * @param model      模型
     * @return 返回ModelAndView视图模型
     */
    @GetMapping("/tag")
    public ModelAndView articleTag(@RequestParam(value = "articleTag") String articleTag,
                                   @RequestParam(required = false, defaultValue = "1", value = "pageNum") Integer pageNum,
                                   Model model) {
        PageHelper.startPage(pageNum, ConstantUtil.PAGE_SIZE);
        List<Article> articleList = articleService.getArticleByTag(articleTag);
        PageInfo<Article> pageInfo = new PageInfo<>(articleList, ConstantUtil.NAVIGATE_PAGES);
        model.addAttribute("pageInfo", pageInfo);
        return ResultUtil.view("/");
    }
}
