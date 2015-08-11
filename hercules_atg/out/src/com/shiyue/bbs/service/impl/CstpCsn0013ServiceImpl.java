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
import com.shiyue.bbs.dao.ICstpCsn0013Dao;
import com.shiyue.bbs.model.dto.CstpCsn0013Dto;
import com.shiyue.bbs.model.CstpCsn0013QueryBean;
import com.shiyue.bbs.service.ICstpCsn0013Service;


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
@Service("cstpCsn0013Service")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class CstpCsn0013ServiceImpl extends GenericServiceImpl<CstpCsn0013Dto, String> implements ICstpCsn0013Service{
    @Autowired
    private ICstpCsn0013Dao   cstpCsn0013Dao;

	public BaseDao<CstpCsn0013Dto, String> getBaseDao() {
		return cstpCsn0013Dao;
	}
	

	/****
	 * @param  cstpCsn0013QueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryCstpCsn0013ListPage(CstpCsn0013QueryBean cstpCsn0013QueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.cstpCsn0013Dao.queryCstpCsn0013ListPage(cstpCsn0013QueryBean, pagingObject);
	 }
	
}
