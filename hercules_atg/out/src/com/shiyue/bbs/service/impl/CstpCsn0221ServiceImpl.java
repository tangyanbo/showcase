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
import com.shiyue.bbs.dao.ICstpCsn0221Dao;
import com.shiyue.bbs.model.dto.CstpCsn0221Dto;
import com.shiyue.bbs.model.CstpCsn0221QueryBean;
import com.shiyue.bbs.service.ICstpCsn0221Service;


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
@Service("cstpCsn0221Service")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class CstpCsn0221ServiceImpl extends GenericServiceImpl<CstpCsn0221Dto, String> implements ICstpCsn0221Service{
    @Autowired
    private ICstpCsn0221Dao   cstpCsn0221Dao;

	public BaseDao<CstpCsn0221Dto, String> getBaseDao() {
		return cstpCsn0221Dao;
	}
	

	/****
	 * @param  cstpCsn0221QueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryCstpCsn0221ListPage(CstpCsn0221QueryBean cstpCsn0221QueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.cstpCsn0221Dao.queryCstpCsn0221ListPage(cstpCsn0221QueryBean, pagingObject);
	 }
	
}
