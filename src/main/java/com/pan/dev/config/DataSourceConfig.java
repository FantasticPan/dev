//package com.pan.web.config;
//
//import com.alibaba.druid.pool.DruidDataSource;
//import com.alibaba.druid.support.http.StatViewServlet;
//import com.alibaba.druid.support.http.WebStatFilter;
//import org.apache.logging.log4j.LogManager;
//import org.apache.logging.log4j.Logger;
//import org.springframework.boot.context.properties.ConfigurationProperties;
//import org.springframework.boot.web.servlet.FilterRegistrationBean;
//import org.springframework.boot.web.servlet.ServletRegistrationBean;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.context.annotation.Primary;
//import org.springframework.jdbc.datasource.DataSourceTransactionManager;
//import org.springframework.transaction.PlatformTransactionManager;
//
//import javax.sql.DataSource;
//
///**
// * 连接池配置
// * Created by Pan on 2019/6/15.
// */
//@Configuration
//public class DataSourceConfig {
//
//    private static final Logger LOGGER = LogManager.getLogger(DataSourceConfig.class);
//
//    /**
//     * 配置连接池
//     */
//    @ConfigurationProperties(prefix = "spring.datasource")
//    @Bean
//    @Primary // 不能保证只有一个实例，@Primary注解的实例优先于其他实例被注入
//    public DataSource dataSource() {
//        LOGGER.info("初始化druid连接池");
//        return new DruidDataSource();
//    }
//
//    /**
//     * 配置@Transactional注解事务
//     *
//     * @return
//     */
//    @Bean
//    public PlatformTransactionManager transactionManager() {
//        return new DataSourceTransactionManager(dataSource());
//    }
//
//    /**
//     * 监控页面 ip + 端口/druid/index.htm
//     *
//     * @return
//     */
//    @Bean
//    public ServletRegistrationBean druidServlet() {
//        //创建servlet注册实体
//        ServletRegistrationBean servletRegistrationBean = new ServletRegistrationBean(new StatViewServlet(), "/druid/*");
//        //控制台管理用户
//        servletRegistrationBean.addInitParameter("loginUsername", "李攀");
//        servletRegistrationBean.addInitParameter("loginPassword", "19970622");
//        //是否能够重置数据 禁用HTML页面上的“Reset All”功能
//        servletRegistrationBean.addInitParameter("resetEnable", "true");
//        return servletRegistrationBean;
//    }
//
//    @Bean
//    public FilterRegistrationBean filterRegistrationBean() {
//        FilterRegistrationBean filterRegistrationBean = new FilterRegistrationBean(new WebStatFilter());
//        filterRegistrationBean.addUrlPatterns("/*");
//        filterRegistrationBean.addInitParameter("exclusions", "*.js,*.gif,*.jpg,*.png,*.css,*.ico,/druid/*");
//        return filterRegistrationBean;
//    }
//}
