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
import com.shiyue.bbs.dao.ICstpCsn0358Dao;
import com.shiyue.bbs.model.dto.CstpCsn0358Dto;
import com.shiyue.bbs.model.CstpCsn0358QueryBean;
import com.shiyue.bbs.service.ICstpCsn0358Service;


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
@Service("cstpCsn0358Service")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class CstpCsn0358ServiceImpl extends GenericServiceImpl<CstpCsn0358Dto, String> implements ICstpCsn0358Service{
    @Autowired
    private ICstpCsn0358Dao   cstpCsn0358Dao;

	public BaseDao<CstpCsn0358Dto, String> getBaseDao() {
		return cstpCsn0358Dao;
	}
	

	/****
	 * @param  cstpCsn0358QueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryCstpCsn0358ListPage(CstpCsn0358QueryBean cstpCsn0358QueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.cstpCsn0358Dao.queryCstpCsn0358ListPage(cstpCsn0358QueryBean, pagingObject);
	 }
	
}
