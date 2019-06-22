package com.pan.dev.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * MVC配置类
 * Created by Pan on 2019/6/15.
 */
@Configuration
public class MvcConfig implements WebMvcConfigurer {

    //@Bean
    //public FreeMarkerViewResolver freeMarkerViewResolver() {
    //    FreeMarkerViewResolver resolver = new FreeMarkerViewResolver();
    //    resolver.setPrefix("");
    //    resolver.setSuffix(".ftl");
    //    resolver.setContentType("text/html; charset=UTF-8");
    //    resolver.setRequestContextAttribute("request");
    //    return resolver;
    //}

    /**
     * 效果等价于后端的Controller代码，若Controller中不写逻辑代码的话这样更方便，减少代码书写
     *
     * @param registry
     */
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/").setViewName("index");
        registry.addViewController("/user/index").setViewName("user/index");
        registry.addViewController("/vip/index").setViewName("vip/index");
        registry.addViewController("/toLogin").setViewName("login");
        registry.addViewController("/toRegister").setViewName("register");
        registry.addViewController("/error").setViewName("error/auth");
    }
}
