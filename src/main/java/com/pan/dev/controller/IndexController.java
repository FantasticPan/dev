package com.pan.dev.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pan.dev.entity.Article;
import com.pan.dev.service.ArticleService;
import com.pan.dev.util.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by Pan on 2019/7/16.
 */
@Controller
public class IndexController {

    @Autowired
    private ArticleService articleService;

    @RequestMapping("/")
    public ModelAndView index(@RequestParam(required = false, defaultValue = "1", value = "pageNum") Integer pageNum,
                              Model model) {
        PageHelper.startPage(pageNum, 10);
        List<Article> articleList = articleService.getAllArticle();
        PageInfo<Article> pageInfo = new PageInfo<>(articleList, 10);
        model.addAttribute("pageInfo", pageInfo);
        return ResultUtil.view("index", "pageInfoModel", model);
    }
}
