package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.CstpCsn0358Dto;
import  com.shiyue.bbs.dao.ICstpCsn0358Dao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.CstpCsn0358Dto;
import com.shiyue.bbs.model.CstpCsn0358QueryBean;

/**
 * 类功能:自动代码生成模板 DaoImpl 模板
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
@Service("cstpCsn0358Dao")
public class CstpCsn0358DaoImpl extends BaseDaoImpl<CstpCsn0358Dto, String> implements ICstpCsn0358Dao{
	public CstpCsn0358DaoImpl() {
		super(CstpCsn0358Dto.class);
	}
	
	
	/****
	 * 
	 * @param cstpCsn0358QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryCstpCsn0358ListPage(CstpCsn0358QueryBean cstpCsn0358QueryBean,PagingObject pagingObject) throws Exception
	 {	
		cstpCsn0358QueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("cstpCsn0358.select_cstpCsn0358List_count",cstpCsn0358QueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List cstpCsn0358List = this.getSqlMapClientTemplate().queryForList("cstpCsn0358.select_cstpCsn0358List", cstpCsn0358QueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(cstpCsn0358List);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}