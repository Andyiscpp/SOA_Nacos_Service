package org.csu.demo.feign;

import org.csu.demo.controller.Result;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

// 指定调用 order-service，并配置降级类
@FeignClient(name = "order-service", fallback = OrderFeignClientFallback.class)
public interface OrderFeignClient {

    /**
     * 调用订单服务的接口：根据用户ID查询订单列表
     */
    @GetMapping("/order/user/{userid}")
    Result getOrdersByUserid(@PathVariable("userid") String userid);
}