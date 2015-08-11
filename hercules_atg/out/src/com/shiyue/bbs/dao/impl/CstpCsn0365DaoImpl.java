package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.CstpCsn0365Dto;
import  com.shiyue.bbs.dao.ICstpCsn0365Dao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.CstpCsn0365Dto;
import com.shiyue.bbs.model.CstpCsn0365QueryBean;

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
@Service("cstpCsn0365Dao")
public class CstpCsn0365DaoImpl extends BaseDaoImpl<CstpCsn0365Dto, String> implements ICstpCsn0365Dao{
	public CstpCsn0365DaoImpl() {
		super(CstpCsn0365Dto.class);
	}
	
	
	/****
	 * 
	 * @param cstpCsn0365QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryCstpCsn0365ListPage(CstpCsn0365QueryBean cstpCsn0365QueryBean,PagingObject pagingObject) throws Exception
	 {	
		cstpCsn0365QueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("cstpCsn0365.select_cstpCsn0365List_count",cstpCsn0365QueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List cstpCsn0365List = this.getSqlMapClientTemplate().queryForList("cstpCsn0365.select_cstpCsn0365List", cstpCsn0365QueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(cstpCsn0365List);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
