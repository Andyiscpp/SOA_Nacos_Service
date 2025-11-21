package org.csu.demo.feign;

import org.csu.demo.controller.Result;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Account Service Feign 客户端
 * 在 order-service 中调用 account-service
 */
@FeignClient(name = "account-service", fallback = AccountFeignClientFallback.class)
public interface AccountFeignClient {

    /**
     * 获取当前用户信息
     * 对应 account-service 的 /account/userInfo 接口
     */
    @GetMapping("/account/userInfo")
    Result getUserInfo();
}