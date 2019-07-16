package com.pan.dev.controller;

import com.pan.dev.entity.User;
import com.pan.dev.service.UserService;
import com.pan.dev.util.ResultUtil;
import com.pan.dev.util.ShiroUtil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Pan on 2019/6/15.
 */
@Controller
public class LoginController {

    private static final Logger LOGGER = LogManager.getLogger(LoginController.class);

    @Autowired
    private UserService userService;

    /**
     * 当点击需要认证的URL时，如果没有登录，就会请求此方法跳转到登录页面，注意这里是GET方法，返回的是视图，不是请求
     *
     * @return
     */
    @GetMapping(value = "/login")
    public ModelAndView login() {
        return ResultUtil.view("login");
    }

    /**
     * 登录
     * @param username 用户名
     * @param password 密码
     * @return 跳转至首页
     */
    @PostMapping("/login")
    public ModelAndView login(@RequestParam("username") String username,
                              @RequestParam("password") String password) {

        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        Subject subject = SecurityUtils.getSubject();
        subject.login(token);
        return ResultUtil.redirect("/");
    }

    @PostMapping(value = "/register")
    @ResponseBody
    public String register(User user) {
        return ShiroUtil.passwordEncryption(user);
    }
}
