package org.csu.demo.feign;

import org.csu.demo.controller.Result;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

/**
 * Product Service Feign 客户端
 * 在 order-service 中调用 product-service
 */
@FeignClient(name = "product-service", fallback = ProductFeignClientFallback.class)
public interface ProductFeignClient {

    @GetMapping("/product")
    Result getAllProducts();

    @GetMapping("/item")
    Result getAllItems();

    @GetMapping("/category")
    Result getAllCategories();

    // [新增] 根据 Item ID 获取特定商品（需要在 product-service 的 ItemController 实现）
    @GetMapping("/item/{itemid}")
    Result getItemById(@PathVariable("itemid") String itemid);
}