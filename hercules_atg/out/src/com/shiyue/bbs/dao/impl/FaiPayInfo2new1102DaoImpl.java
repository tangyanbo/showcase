package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.FaiPayInfo2new1102Dto;
import  com.shiyue.bbs.dao.IFaiPayInfo2new1102Dao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.FaiPayInfo2new1102Dto;
import com.shiyue.bbs.model.FaiPayInfo2new1102QueryBean;

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
@Service("faiPayInfo2new1102Dao")
public class FaiPayInfo2new1102DaoImpl extends BaseDaoImpl<FaiPayInfo2new1102Dto, String> implements IFaiPayInfo2new1102Dao{
	public FaiPayInfo2new1102DaoImpl() {
		super(FaiPayInfo2new1102Dto.class);
	}
	
	
	/****
	 * 
	 * @param faiPayInfo2new1102QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryFaiPayInfo2new1102ListPage(FaiPayInfo2new1102QueryBean faiPayInfo2new1102QueryBean,PagingObject pagingObject) throws Exception
	 {	
		faiPayInfo2new1102QueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("faiPayInfo2new1102.select_faiPayInfo2new1102List_count",faiPayInfo2new1102QueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List faiPayInfo2new1102List = this.getSqlMapClientTemplate().queryForList("faiPayInfo2new1102.select_faiPayInfo2new1102List", faiPayInfo2new1102QueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(faiPayInfo2new1102List);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
