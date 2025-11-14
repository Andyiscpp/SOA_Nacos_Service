package org.csu.demo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.csu.demo.dao.InventoryDao;
import org.csu.demo.domain.Inventory;
import org.csu.demo.service.IInventoryService;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author YinBo
 * @since 2025-03-08
 */
@Service
public class InventoryServiceImpl extends ServiceImpl<InventoryDao, Inventory> implements IInventoryService {

}
