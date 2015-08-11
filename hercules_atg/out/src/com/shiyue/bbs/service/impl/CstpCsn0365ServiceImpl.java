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
import com.shiyue.bbs.dao.ICstpCsn0365Dao;
import com.shiyue.bbs.model.dto.CstpCsn0365Dto;
import com.shiyue.bbs.model.CstpCsn0365QueryBean;
import com.shiyue.bbs.service.ICstpCsn0365Service;


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
@Service("cstpCsn0365Service")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class CstpCsn0365ServiceImpl extends GenericServiceImpl<CstpCsn0365Dto, String> implements ICstpCsn0365Service{
    @Autowired
    private ICstpCsn0365Dao   cstpCsn0365Dao;

	public BaseDao<CstpCsn0365Dto, String> getBaseDao() {
		return cstpCsn0365Dao;
	}
	

	/****
	 * @param  cstpCsn0365QueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryCstpCsn0365ListPage(CstpCsn0365QueryBean cstpCsn0365QueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.cstpCsn0365Dao.queryCstpCsn0365ListPage(cstpCsn0365QueryBean, pagingObject);
	 }
	
}
