package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.CstpCsn0013Dto;
import  com.shiyue.bbs.dao.ICstpCsn0013Dao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.CstpCsn0013Dto;
import com.shiyue.bbs.model.CstpCsn0013QueryBean;

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
@Service("cstpCsn0013Dao")
public class CstpCsn0013DaoImpl extends BaseDaoImpl<CstpCsn0013Dto, String> implements ICstpCsn0013Dao{
	public CstpCsn0013DaoImpl() {
		super(CstpCsn0013Dto.class);
	}
	
	
	/****
	 * 
	 * @param cstpCsn0013QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryCstpCsn0013ListPage(CstpCsn0013QueryBean cstpCsn0013QueryBean,PagingObject pagingObject) throws Exception
	 {	
		cstpCsn0013QueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("cstpCsn0013.select_cstpCsn0013List_count",cstpCsn0013QueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List cstpCsn0013List = this.getSqlMapClientTemplate().queryForList("cstpCsn0013.select_cstpCsn0013List", cstpCsn0013QueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(cstpCsn0013List);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
