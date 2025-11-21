package org.csu.demo.config;

import feign.Logger;
import feign.Request;
import feign.RequestInterceptor;
import feign.RequestTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * Feign 配置类
 */
@Configuration
public class FeignConfig {

    /**
     * 配置 Feign 日志级别
     */
    @Bean
    Logger.Level feignLoggerLevel() {
        return Logger.Level.FULL;
    }

    /**
     * 配置超时时间
     */
    @Bean
    public Request.Options options() {
        return new Request.Options(5000, 10000);
    }

    /**
     * [新增] Feign 请求拦截器
     * 作用：解决服务间调用时，Token 无法透传的问题
     */
    @Bean
    public RequestInterceptor requestInterceptor() {
        return new RequestInterceptor() {
            @Override
            public void apply(RequestTemplate template) {
                // 1. 获取当前请求的上下文（即浏览器发给 order-service 的请求）
                ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();

                if (attributes != null) {
                    HttpServletRequest request = attributes.getRequest();
                    // 2. 获取原始请求头中的 Authorization (你的 Token)
                    String token = request.getHeader("Authorization");

                    // 3. 如果 Token 存在，把它手动塞到 Feign 的下游请求头中
                    if (token != null) {
                        template.header("Authorization", token);
                        System.out.println("Feign拦截器已添加Token透传"); // 调试用，确认拦截器生效
                    }
                }
            }
        };
    }
}