package org.csu.demo.orderservice;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EnableDiscoveryClient // 启用Nacos服务发现
@ComponentScan(basePackages = {"org.csu.demo"}) // 明确指定扫描包
@MapperScan("org.csu.demo.dao") // 扫描Mapper接口
@EnableFeignClients(basePackages = {"org.csu.demo.feign"}) // 启用Feign客户端，扫描feign包
public class OrderServiceApplication {
    public static void main(String[] args) {
        SpringApplication.run(OrderServiceApplication.class, args);
    }
}
