package org.csu.demo.controller;

import org.csu.demo.domain.Order;
import org.csu.demo.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private IOrderService orderService;

    // 查询所有订单
    @GetMapping
    public Result getAllOrders() {
        List<Order> orders = orderService.getAllOrders();
        return new Result(Code.GET_OK, orders, "查询成功");
    }

    // 根据用户ID查询订单
    @GetMapping("/user/{userid}")
    public Result getOrdersByUserid(@PathVariable String userid) {
        List<Order> orders = orderService.getOrdersByUserid(userid);
        return new Result(Code.GET_OK, orders, "查询成功");
    }

    // 创建订单
    @PostMapping
    public Result createOrder(@RequestBody Order order) {
        boolean flag = orderService.createOrder(order);
        if (flag) {
            // 新增：返回创建的订单ID
            return new Result(Code.SAVE_OK, order.getOrderid(), "创建成功");
        } else {
            return new Result(Code.SAVE_ERR, flag, "创建失败");
        }
    }

    // 更新订单状态
    @PutMapping("/status")
    public Result updateOrderStatus(@RequestBody Order order) {
        boolean flag = orderService.updateOrderStatus(order);
        return new Result(flag ? Code.UPDATE_OK : Code.UPDATE_ERR, flag, flag ? "更新成功" : "更新失败");
    }

    // 删除订单
    @DeleteMapping("/{orderid}")
    public Result deleteOrder(@PathVariable Integer orderid) {
        boolean flag = orderService.deleteOrder(orderid);
        return new Result(flag ? Code.DELETE_OK : Code.DELETE_ERR, flag, flag ? "删除成功" : "删除失败");
    }

    @PutMapping
    public Result updateOrder(@RequestBody Order order) {
        // 只要 Order 类里有 orderid，MyBatis-Plus 的 updateById 就会根据 ID 更新其他非空字段
        boolean flag = orderService.updateById(order);
        return new Result(flag ? Code.UPDATE_OK : Code.UPDATE_ERR, flag, flag ? "更新成功" : "更新失败");
    }
}