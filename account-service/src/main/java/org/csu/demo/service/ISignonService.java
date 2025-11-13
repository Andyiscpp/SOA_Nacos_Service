package org.csu.demo.service;

import com.baomidou.mybatisplus.extension.service.IService;
import org.csu.demo.domain.Signon;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author YinBo
 * @since 2025-03-08
 */
public interface ISignonService extends IService<Signon> {
    void register(String username, String password);
}
