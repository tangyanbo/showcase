package com.shiyue.bbs.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.hercules.database.dao.BaseDao;
import com.hercules.database.service.impl.GenericServiceImpl;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import com.shiyue.bbs.dao.ISequenceDao;
import com.shiyue.bbs.model.dto.SequenceDto;
import com.shiyue.bbs.model.SequenceQueryBean;
import com.shiyue.bbs.service.ISequenceService;


/**
 * 类功能:自动代码生成模板 ServiceImpl 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */

@Scope("prototype")
@Service("sequenceService")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class SequenceServiceImpl extends GenericServiceImpl<SequenceDto, String> implements ISequenceService{
    @Autowired
    private ISequenceDao   sequenceDao;

	public BaseDao<SequenceDto, String> getBaseDao() {
		return sequenceDao;
	}
	

	/****
	 * @param  sequenceQueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult querySequenceListPage(SequenceQueryBean sequenceQueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.sequenceDao.querySequenceListPage(sequenceQueryBean, pagingObject);
	 }
	
}
