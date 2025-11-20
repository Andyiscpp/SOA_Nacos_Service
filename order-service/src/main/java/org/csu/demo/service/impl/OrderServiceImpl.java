package org.csu.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.csu.demo.dao.OrderDao;
import org.csu.demo.domain.Order;
import org.csu.demo.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class OrderServiceImpl extends ServiceImpl<OrderDao, Order> implements IOrderService {

    @Autowired
    private OrderDao orderDao;

    @Override
    public List<Order> getAllOrders() {
        return orderDao.selectList(null);
    }

    @Override
    public List<Order> getOrdersByUserid(String userid) {
        LambdaQueryWrapper<Order> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(Order::getUserid, userid);
        return orderDao.selectList(wrapper);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public boolean createOrder(Order order) {
        // 1. 强制设置ID为null，保证是插入新数据
        order.setOrderid(null);

        // 2. 如果前端没传状态，默认为 PENDING；但前端传了 PAID，这里就会用 PAID
        if (order.getStatus() == null || order.getStatus().isEmpty()) {
            order.setStatus("PENDING");
        }

        // 3. 插入数据库
        int flag = orderDao.insert(order);

        // 注意：MyBatis-Plus 插入成功后，会自动把生成的 ID 回填到 order 对象中
        System.out.println("新订单生成 ID: " + order.getOrderid());

        return flag == 1;
    }

    @Override
    public boolean updateOrderStatus(Order order) {
        // 使用 LambdaUpdateWrapper 只更新状态字段
        LambdaUpdateWrapper<Order> wrapper = new LambdaUpdateWrapper<>();
        wrapper.eq(Order::getOrderid, order.getOrderid())
                .set(Order::getStatus, order.getStatus());

        int flag = orderDao.update(null, wrapper);
        return flag == 1;
    }

    @Override
    public boolean deleteOrder(Integer orderid) {
        int flag = orderDao.deleteById(orderid);
        return flag == 1;
    }
}