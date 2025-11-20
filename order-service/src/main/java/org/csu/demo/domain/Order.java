package org.csu.demo.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

@Data
@ToString
@TableName("`order`") // 数据库表名
public class Order implements Serializable {
    private static final long serialVersionUID = 1L;

    @TableId(value = "orderid", type = IdType.AUTO)
    private Integer orderid; // 订单ID

    @TableField("userid")
    private String userid; // 关联用户ID

    @TableField("orderdate")
    private Date orderdate; // 订单日期

    @TableField("status")
    private String status; // 订单状态（如：PENDING, SHIPPED, DELIVERED）

    @TableField("totalprice")
    private BigDecimal totalprice; // 总金额

    @TableField("addr1")
    private String addr1; // 收货地址1

    @TableField("addr2")
    private String addr2; // 收货地址2

    @TableField("city")
    private String city; // 城市

    @TableField("state")
    private String state; // 省份/州

    @TableField("zip")
    private String zip; // 邮编

    @TableField("country")
    private String country; // 国家

    @TableField("phone")
    private String phone; // 联系电话
}