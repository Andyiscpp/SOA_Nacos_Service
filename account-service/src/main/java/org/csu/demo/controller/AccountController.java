package org.csu.demo.controller;

import org.csu.demo.dao.AccountDao;
import org.csu.demo.dao.SignonDao;
import org.csu.demo.domain.Account;
import org.csu.demo.domain.AccountInfoVO;
import org.csu.demo.domain.Signon;
import org.csu.demo.feign.OrderFeignClient;
import org.csu.demo.service.IAccountService;
import org.csu.demo.service.ISignonService;
import org.csu.demo.utils.JwtUtil;
import org.csu.demo.utils.ThreadLocalUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author YinBo
 * @since 2025-03-08
 */
@RestController
@RequestMapping("/account")
@Validated
public class AccountController {
    @Autowired
    private IAccountService accountService;
    @Autowired
    private SignonDao signonDao;
    @Autowired
    private ISignonService signonService;
    @Autowired
    private AccountDao accountDao;

    // 1. 注入 OrderFeignClient
    @Qualifier("org.csu.demo.feign.OrderFeignClient")
    @Autowired
    private OrderFeignClient orderFeignClient;
    
    //0.0注册
    @PostMapping("/register")
    public Result register(String username, String password) {

        //查询用户
        Signon signon = signonDao.selectById(username);
        if (signon == null) {
            //没有占用
            //注册
            signonService.register(username, password);
            boolean flag=true;
            return new Result(flag ? Code.SAVE_OK:Code.SAVE_ERR,flag,"注册成功！");
        } else {
            //占用
            boolean flag=false;
            return new Result(flag ? Code.SAVE_OK:Code.SAVE_ERR,flag,"注册失败，。用户名已存在");
        }

    }
    @PostMapping("/login")
    public Result login(String username, String password) {
        // 查询用户
        System.out.println("== 登录接口被调用 ==");
        System.out.println("用户名：" + username);
        System.out.println("密码：" + password);
        Signon signon = signonDao.selectById(username);

        // 判断用户是否存在
        if (signon == null) {
            return new Result(Code.SAVE_ERR, false, "用户不存在");
        }

        // 打印密码（开发时用，生产环境要移除）
        System.out.println("输入的密码: " + password);

        // 判断密码是否正确（直接比对明文密码）
        if (password.equals(signon.getPassword())) {
            // 登录成功，生成 JWT token
            Map<String, Object> claims = new HashMap<>();
            claims.put("username", signon.getUsername());  // 只存储 username
            String token = JwtUtil.genToken(claims);

            // 将 token 存储到 Redis 中
//            ValueOperations<String, String> operations = stringRedisTemplate.opsForValue();
//            operations.set(token, token, 1, TimeUnit.HOURS); // 设置 token 过期时间为 1 小时

            return new Result(Code.SAVE_OK,true,token);
        }

        return new Result(Code.SAVE_ERR,false,"登陆失败");
    }

    //1.0根据userid获取Account和signon
    @GetMapping("/userInfo")
    public Result userInfo(/*@RequestHeader(name = "Authorization") String token*/) {
        //根据用户名查询用户
       /* Map<String, Object> map = JwtUtil.parseToken(token);
        String username = (String) map.get("username");*/
        Map<String, Object> map = ThreadLocalUtil.get();
        String username = (String) map.get("username");
        Account account =accountDao.selectById(username);
        Signon signon=signonDao.selectById(username);
        // 合并数据
        AccountInfoVO vo = new AccountInfoVO();
        BeanUtils.copyProperties(account, vo);
        BeanUtils.copyProperties(signon, vo); // 后 copy 的会覆盖重复字段
        return  new Result(Code.GET_OK, vo, "获取成功！");
    }

    //1.更新账户
    @PutMapping
    public Result updateAccount(@RequestBody Account account) {
        System.out.println(account);
        boolean flag=accountService.updateAccount(account);
        return new Result(flag ? Code.UPDATE_OK:Code.DELETE_ERR,flag);
    }

    //2.查询所有
    @GetMapping
    public Result getAccounts() {
        List<Account> accountList = accountService.getAccounts();
        Integer code = accountList != null ? Code.GET_OK : Code.GET_ERR;
        String msg = accountList != null ? "" : "数据查询失败，请重试！";
        return new Result(code,accountList,msg);
    }

    //3.删除账户
//    @DeleteMapping("/{userid}")
//    public Result deleteAccount(@PathVariable String userid) {
//        boolean flag=accountService.deleteAccount(userid);
//        return new Result(flag ? Code.DELETE_OK:Code.DELETE_ERR,flag);
//    }

    // 2. 修改删除逻辑
    @DeleteMapping("/{userid}")
    public boolean deleteAccount(@PathVariable String userid) {
        System.out.println("正在尝试删除用户: " + userid + "，准备检查关联订单...");

        // --- 新增逻辑：调用 Order 服务检查订单 ---
        try {
            Result orderResult = orderFeignClient.getOrdersByUserid(userid);

            // 检查调用是否成功
            if (Code.GET_OK.equals(orderResult.getCode())) {
                // 获取数据部分
                Object data = orderResult.getData();
                // 简单判断：如果 data 是 List 且不为空，说明有订单
                if (data instanceof List && !((List<?>) data).isEmpty()) {
                    System.out.println("删除失败：该用户存在关联订单");
                    // 这里我们选择返回 false 表示删除失败（或者你可以选择抛出自定义异常）
                    return false;
                }
            }
        } catch (Exception e) {
            // 如果订单服务挂了，是否允许删除？通常为了安全起见，如果不确定有没有订单，最好不要删
            System.err.println("订单服务调用异常，为数据安全停止删除: " + e.getMessage());
            return false;
        }
        // -------------------------------------

        // 如果没有订单，继续执行原来的删除逻辑
        int flag = accountDao.deleteById(userid);
        int flag2 = signonDao.deleteById(userid);
        return flag == 1 && flag2 == 1;
    }

    //4.重置密码
    @PutMapping("/reset-password")
    public Result resetPassword(@RequestBody Signon signon) {
        signon.setPassword("1234");
        boolean flag=accountService.resetPassword(signon);
        Integer code = flag ? Code.UPDATE_OK:Code.UPDATE_ERR;
        String msg= flag ? "重置成功":"重置失败";
        return new Result(code,msg);
    }
}
