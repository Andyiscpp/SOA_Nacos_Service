package org.csu.demo.service.impl;

import org.csu.demo.domain.Sequence;
import org.csu.demo.dao.SequenceDao;
import org.csu.demo.service.ISequenceService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
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
public class SequenceServiceImpl extends ServiceImpl<SequenceDao, Sequence> implements ISequenceService {

}
