package org.csu.demo.controller;

/**
 * 全局状态码常量类
 * 与account-service保持一致，确保跨服务状态码统一
 */
public class Code {
    // 操作成功状态码
    public static final Integer SAVE_OK = 20011;       // 保存成功
    public static final Integer DELETE_OK = 20021;     // 删除成功
    public static final Integer UPDATE_OK = 20031;     // 更新成功
    public static final Integer GET_OK = 20041;        // 查询成功

    // 操作失败状态码
    public static final Integer SAVE_ERR = 20010;      // 保存失败
    public static final Integer DELETE_ERR = 20020;    // 删除失败
    public static final Integer UPDATE_ERR = 20030;    // 更新失败
    public static final Integer GET_ERR = 20040;       // 查询失败

    // 系统错误状态码
    public static final Integer SYSTEM_ERR = 50001;        // 系统错误
    public static final Integer SYSTEM_TIMEOUT_ERR = 50002; // 系统超时
    public static final Integer SYSTEM_UNKNOW_ERR = 59999;  // 未知系统错误

    // 业务错误状态码
    public static final Integer BUSINESS_ERR = 60002;      // 业务逻辑错误
}