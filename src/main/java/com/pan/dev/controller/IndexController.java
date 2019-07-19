package com.pan.dev.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pan.dev.entity.Article;
import com.pan.dev.service.ArticleService;
import com.pan.dev.util.ConstantUtil;
import com.pan.dev.util.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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

    /**
     * 加载首页，使用分页显示文章列表
     *
     * @param pageNum 当前页数
     * @param model   模型
     * @return 返回ModelAndView视图模型
     */
    @GetMapping("/")
    public ModelAndView index(@RequestParam(required = false, defaultValue = "1", value = "pageNum") Integer pageNum,
                              Model model) {
        PageHelper.startPage(pageNum, ConstantUtil.PAGE_SIZE);
        List<Article> articleList = articleService.getAllArticle();
        PageInfo<Article> pageInfo = new PageInfo<>(articleList, ConstantUtil.NAVIGATE_PAGES);
        model.addAttribute("pageInfo", pageInfo);
        return ResultUtil.view("index");
    }
}
