package org.csu.demo.accountservice;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
// 启用 Nacos 服务发现
@EnableDiscoveryClient
// 显式扫描业务逻辑所在的 org.csu 包
@ComponentScan("org.csu")
@MapperScan("org.csu.demo.dao")
@EnableFeignClients(basePackages = "org.csu.demo.feign")
public class AccountServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(AccountServiceApplication.class, args);
    }

}