package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.SucPayInfoNew1102Dto;
import  com.shiyue.bbs.dao.ISucPayInfoNew1102Dao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.SucPayInfoNew1102Dto;
import com.shiyue.bbs.model.SucPayInfoNew1102QueryBean;

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
@Service("sucPayInfoNew1102Dao")
public class SucPayInfoNew1102DaoImpl extends BaseDaoImpl<SucPayInfoNew1102Dto, String> implements ISucPayInfoNew1102Dao{
	public SucPayInfoNew1102DaoImpl() {
		super(SucPayInfoNew1102Dto.class);
	}
	
	
	/****
	 * 
	 * @param sucPayInfoNew1102QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult querySucPayInfoNew1102ListPage(SucPayInfoNew1102QueryBean sucPayInfoNew1102QueryBean,PagingObject pagingObject) throws Exception
	 {	
		sucPayInfoNew1102QueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("sucPayInfoNew1102.select_sucPayInfoNew1102List_count",sucPayInfoNew1102QueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List sucPayInfoNew1102List = this.getSqlMapClientTemplate().queryForList("sucPayInfoNew1102.select_sucPayInfoNew1102List", sucPayInfoNew1102QueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(sucPayInfoNew1102List);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
