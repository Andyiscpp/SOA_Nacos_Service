package org.csu.demo.config;


import org.csu.demo.interceptor.LoginInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Autowired
    private LoginInterceptor loginInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 【已修改】: 暂时注释掉拦截器的注册逻辑，以禁用 JWT 认证和拦截功能
        registry.addInterceptor(loginInterceptor).excludePathPatterns(

                "/account/login",
                "/account/register",
                "/oauth/render",
                "/oauth/callback",
                "/category/**",
                "/product/**",

                "/item/**",
                "/orders/**"
        );
    }
}