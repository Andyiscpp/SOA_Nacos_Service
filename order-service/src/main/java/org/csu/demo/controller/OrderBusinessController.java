package org.csu.demo.controller;

import org.csu.demo.domain.Order;
import org.csu.demo.feign.AccountFeignClient;
import org.csu.demo.feign.ProductFeignClient;
import org.csu.demo.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

/**
 * 订单业务控制器 - 演示跨服务调用
 * 这个控制器展示如何使用 Feign 调用其他服务
 */
@RestController
@RequestMapping("/order/business")
public class OrderBusinessController {

    @Autowired
    private IOrderService orderService;

    @Qualifier("org.csu.demo.feign.AccountFeignClient")
    @Autowired
    private AccountFeignClient accountFeignClient;

    @Qualifier("org.csu.demo.feign.ProductFeignClient")
    @Autowired
    private ProductFeignClient productFeignClient;

    /**
     * 创建订单（完整业务流程）
     * 1. 验证用户信息
     * 2. 验证商品信息
     * 3. 创建订单
     */
    @PostMapping("/create")
    public Result createOrderWithValidation(@RequestBody Order order) {
        System.out.println("=== 开始创建订单（包含服务间调用） ===");

        try {
            // 步骤1: 调用 account-service 验证用户信息
            System.out.println("步骤1: 调用 account-service 验证用户");
            Result userResult = accountFeignClient.getUserInfo();

            // 【修改点1】使用 .equals() 进行比较，或者用 intValue()
            if (!Code.GET_OK.equals(userResult.getCode())) {
                return new Result(Code.BUSINESS_ERR, false, "用户信息验证失败: " + userResult.getMsg());
            }
            System.out.println("用户验证通过: " + userResult.getData());

            // 步骤2: 调用 product-service 验证商品信息
            System.out.println("步骤2: 调用 product-service 验证商品");
            Result itemsResult = productFeignClient.getAllItems();

            // 【修改点2】同样修复这里的比较逻辑
            if (!Code.GET_OK.equals(itemsResult.getCode())) {
                return new Result(Code.BUSINESS_ERR, false, "商品信息获取失败: " + itemsResult.getMsg());
            }
            System.out.println("商品信息获取成功");

            // 步骤3: 创建订单
            System.out.println("步骤3: 创建订单");
            boolean flag = orderService.createOrder(order);

            if (flag) {
                System.out.println("订单创建成功，订单ID: " + order.getOrderid());
                return new Result(Code.SAVE_OK, order.getOrderid(), "订单创建成功");
            } else {
                return new Result(Code.SAVE_ERR, false, "订单创建失败");
            }

        } catch (Exception e) {
            System.err.println("订单创建异常: " + e.getMessage());
            e.printStackTrace();
            return new Result(Code.SYSTEM_ERR, false, "订单创建异常：" + e.getMessage());
        }
    }

    /**
     * 获取订单相关的完整信息
     * 包括用户信息、订单列表、商品信息
     */
    @GetMapping("/complete-info/{userid}")
    public Result getCompleteOrderInfo(@PathVariable String userid) {
        System.out.println("=== 获取完整订单信息（聚合多个服务数据） ===");

        try {
            Map<String, Object> result = new HashMap<>();

            // 1. 获取用户信息
            System.out.println("获取用户信息...");
            Result userResult = accountFeignClient.getUserInfo();
            result.put("user", userResult.getData());

            // 2. 获取订单列表
            System.out.println("获取订单列表...");
            Result ordersResult = new Result(
                    Code.GET_OK,
                    orderService.getOrdersByUserid(userid),
                    "查询成功"
            );
            result.put("orders", ordersResult.getData());

            // 3. 获取商品信息
            System.out.println("获取商品信息...");
            Result itemsResult = productFeignClient.getAllItems();
            result.put("items", itemsResult.getData());

            // 4. 获取商品分类
            System.out.println("获取商品分类...");
            Result categoriesResult = productFeignClient.getAllCategories();
            result.put("categories", categoriesResult.getData());

            return new Result(Code.GET_OK, result, "完整信息获取成功");

        } catch (Exception e) {
            System.err.println("获取信息异常: " + e.getMessage());
            return new Result(Code.SYSTEM_ERR, null, "获取信息异常：" + e.getMessage());
        }
    }

    /**
     * 测试服务连通性
     */
    @GetMapping("/test-connection")
    public Result testServiceConnection() {
        Map<String, String> result = new HashMap<>();

        // 测试 account-service
        try {
            Result accountResult = accountFeignClient.getUserInfo();
            result.put("account-service", "连接成功 (状态码: " + accountResult.getCode() + ")");
        } catch (Exception e) {
            result.put("account-service", "连接失败: " + e.getMessage());
        }

        // 测试 product-service
        try {
            Result productResult = productFeignClient.getAllProducts();
            result.put("product-service", "连接成功 (状态码: " + productResult.getCode() + ")");
        } catch (Exception e) {
            result.put("product-service", "连接失败: " + e.getMessage());
        }

        return new Result(Code.GET_OK, result, "服务连通性测试完成");
    }
}
