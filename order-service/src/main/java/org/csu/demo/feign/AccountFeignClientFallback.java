package org.csu.demo.feign;

import org.csu.demo.controller.Code;
import org.csu.demo.controller.Result;
import org.springframework.stereotype.Component;

// 1. 必须添加 @Component 注解
@Component
// 2. 必须实现对应的 Feign 接口
public class AccountFeignClientFallback implements AccountFeignClient {

    @Override
    public Result getUserInfo() {
        // 3. 返回降级数据
        return new Result(Code.SYSTEM_ERR, null, "服务降级：账户服务暂时不可用");
    }
}