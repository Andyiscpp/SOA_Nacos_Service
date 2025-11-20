package org.csu.demo.controller;

import lombok.Data;

/**
 * 统一响应结果封装类
 * 用于Controller层返回标准化响应数据
 */
@Data
public class Result {
    private Object data;   // 响应数据（成功时返回的业务数据）
    private String msg;    // 响应消息（成功/失败描述）
    private Integer code;  // 响应状态码（对应Code类中的常量）

    /**
     * 构造方法：仅包含状态码和数据
     * @param code 状态码
     * @param data 业务数据
     */
    public Result(Integer code, Object data) {
        this.data = data;
        this.code = code;
    }

    /**
     * 构造方法：包含状态码、数据和消息
     * @param code 状态码
     * @param data 业务数据
     * @param msg 描述消息
     */
    public Result(Integer code, Object data, String msg) {
        this.data = data;
        this.code = code;
        this.msg = msg;
    }

    /**
     * 构造方法：仅包含状态码和消息（无业务数据时使用）
     * @param code 状态码
     * @param msg 描述消息
     */
    public Result(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }
}