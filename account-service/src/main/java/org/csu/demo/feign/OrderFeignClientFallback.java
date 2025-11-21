package org.csu.demo.feign;

import org.csu.demo.controller.Code;
import org.csu.demo.controller.Result;
import org.springframework.stereotype.Component;

@Component
public class OrderFeignClientFallback implements OrderFeignClient {
    @Override
    public Result getOrdersByUserid(String userid) {
        return new Result(Code.SYSTEM_ERR, null, "服务降级：无法查询订单信息");
    }
}
