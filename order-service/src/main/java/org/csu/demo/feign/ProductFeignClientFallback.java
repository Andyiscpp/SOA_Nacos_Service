
package org.csu.demo.feign;

import org.csu.demo.controller.Code;
import org.csu.demo.controller.Result;
import org.springframework.stereotype.Component;

// 1. 必须添加 @Component 注解
@Component
// 2. 必须实现对应的 Feign 接口
public class ProductFeignClientFallback implements ProductFeignClient {

    @Override
    public Result getAllProducts() {
        return new Result(Code.SYSTEM_ERR, null, "服务降级：商品服务(Products)暂时不可用，请稍后重试");
    }

    @Override
    public Result getAllItems() {
        return new Result(Code.SYSTEM_ERR, null, "服务降级：商品项服务(Items)暂时不可用，请稍后重试");
    }

    @Override
    public Result getAllCategories() {
        return new Result(Code.SYSTEM_ERR, null, "服务降级：分类服务(Categories)暂时不可用，请稍后重试");
    }

    @Override
    public Result getItemById(String itemid) {
        return new Result(Code.SYSTEM_ERR, null, "服务降级：分类服务(items)暂时不可用，请稍后重试");
    }
}