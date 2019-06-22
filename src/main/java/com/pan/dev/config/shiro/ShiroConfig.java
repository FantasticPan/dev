package com.pan.dev.config.shiro;

import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.crypto.hash.Sha256Hash;
import org.apache.shiro.mgt.RememberMeManager;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.CookieRememberMeManager;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.servlet.Cookie;
import org.apache.shiro.web.servlet.SimpleCookie;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * shiro配置
 * Created by Pan on 2019/6/15.
 */
@Configuration
public class ShiroConfig {

    /**
     * 这是shiro的大管家，相当于mybatis里的SqlSessionFactoryBean
     *
     * @return
     */
    @Bean
    public ShiroFilterFactoryBean shiroFilter() {
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        shiroFilterFactoryBean.setSecurityManager(securityManager());
        /*
          权限配置

          anon：匿名用户可访问
          authc：认证用户可访问
          user：使用rememberMe可访问
          perms：对应权限可访问
          role：对应角色权限可访问
         */
        //必须是LinkedHashMap，因为要保证有序
        Map<String, String> filterChainDefinitionMap = new LinkedHashMap<>();
        //可以匿名访问
        filterChainDefinitionMap.put("/toLogin", "anon");
        filterChainDefinitionMap.put("/toRegister", "anon");
        filterChainDefinitionMap.put("/user/index", "anon");
        //所有用户界面都需要身份验证，否则会跳转到loginurl：shiroFilterFactoryBean.setLoginUrl("/login");
        filterChainDefinitionMap.put("/vip/index", "authc");
        //定义注销路径
        filterChainDefinitionMap.put("/logout", "logout");
        //所有admin路径要求具备admin角色权限
        filterChainDefinitionMap.put("/admin/**", "roles[admin]");

        //登录的url
        shiroFilterFactoryBean.setLoginUrl("/login");
        //登录成功跳转的url
        shiroFilterFactoryBean.setSuccessUrl("/");
        //设置没有权限跳转Url
        shiroFilterFactoryBean.setUnauthorizedUrl("/error");
        shiroFilterFactoryBean.setFilterChainDefinitionMap(filterChainDefinitionMap);
        return shiroFilterFactoryBean;
    }

    /**
     * 加密算法
     *
     * @return
     */
    @Bean
    public HashedCredentialsMatcher hashedCredentialsMatcher() {
        HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();
        hashedCredentialsMatcher.setHashAlgorithmName(Sha256Hash.ALGORITHM_NAME);
        hashedCredentialsMatcher.setHashIterations(1024);
        //转化为16进制(与入库时保持一致)
        hashedCredentialsMatcher.setStoredCredentialsHexEncoded(true);
        return hashedCredentialsMatcher;
    }

    /**
     * 自己定义的验证方法
     *
     * @return
     */
    @Bean
    public ShiroRealm shiroRealm() {
        ShiroRealm shiroRealm = new ShiroRealm();
        shiroRealm.setCredentialsMatcher(hashedCredentialsMatcher());
        return shiroRealm;
    }

    /**
     * 记住我的配置
     *
     * @return
     */
    @Bean
    public RememberMeManager rememberMeManager() {
        Cookie cookie = new SimpleCookie("rememberMe");
        //通过js脚本将无法读取到cookie信息
        cookie.setHttpOnly(true);
        //cookie保存一天
        cookie.setMaxAge(60 * 60 * 24);

        CookieRememberMeManager cookieRememberMeManager = new CookieRememberMeManager();
        cookieRememberMeManager.setCookie(cookie);
        return cookieRememberMeManager;
    }

    /**
     * Web应用管理配置
     *
     * @return
     */
    @Bean
    public DefaultWebSecurityManager securityManager() {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        securityManager.setRealm(shiroRealm());
        //记住Cookie
        securityManager.setRememberMeManager(rememberMeManager());
        return securityManager;
    }

    //@Bean
    //public LifecycleBeanPostProcessor lifecycleBeanPostProcessor() {
    //    return new LifecycleBeanPostProcessor();
    //}

    /**
     * 启用shiro注解
     *
     * @return
     */
    @Bean
    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor() {
        AuthorizationAttributeSourceAdvisor advisor = new AuthorizationAttributeSourceAdvisor();
        advisor.setSecurityManager(securityManager());
        return advisor;
    }

    /**
     * setUsePrefix(false)用于解决一个奇怪的bug。在引入spring aop的情况下。
     * 在@Controller注解的类的方法中加入@RequiresRole等shiro注解，会导致该方法无法映射请求，导致返回404。
     * 加入这项配置能解决这个bug
     */
    @Bean
    public static DefaultAdvisorAutoProxyCreator getDefaultAdvisorAutoProxyCreator(){
        DefaultAdvisorAutoProxyCreator defaultAdvisorAutoProxyCreator=new DefaultAdvisorAutoProxyCreator();
        defaultAdvisorAutoProxyCreator.setUsePrefix(true);
        return defaultAdvisorAutoProxyCreator;
    }
}
