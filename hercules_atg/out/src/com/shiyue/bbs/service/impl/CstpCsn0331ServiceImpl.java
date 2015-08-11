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
import com.shiyue.bbs.dao.ICstpCsn0331Dao;
import com.shiyue.bbs.model.dto.CstpCsn0331Dto;
import com.shiyue.bbs.model.CstpCsn0331QueryBean;
import com.shiyue.bbs.service.ICstpCsn0331Service;


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
@Service("cstpCsn0331Service")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class CstpCsn0331ServiceImpl extends GenericServiceImpl<CstpCsn0331Dto, String> implements ICstpCsn0331Service{
    @Autowired
    private ICstpCsn0331Dao   cstpCsn0331Dao;

	public BaseDao<CstpCsn0331Dto, String> getBaseDao() {
		return cstpCsn0331Dao;
	}
	

	/****
	 * @param  cstpCsn0331QueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryCstpCsn0331ListPage(CstpCsn0331QueryBean cstpCsn0331QueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.cstpCsn0331Dao.queryCstpCsn0331ListPage(cstpCsn0331QueryBean, pagingObject);
	 }
	
}
