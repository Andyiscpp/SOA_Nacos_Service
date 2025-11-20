package org.csu.demo.service;

import com.baomidou.mybatisplus.extension.service.IService;
import org.csu.demo.domain.Order;
import java.util.List;

public interface IOrderService extends IService<Order> {
    // 查询所有订单
    List<Order> getAllOrders();

    // 根据用户ID查询订单
    List<Order> getOrdersByUserid(String userid);

    // 创建订单
    boolean createOrder(Order order);

    // 更新订单状态
    boolean updateOrderStatus(Order order);

    // 删除订单
    boolean deleteOrder(Integer orderid);
}