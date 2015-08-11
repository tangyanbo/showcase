package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.FaiOrderInfoV21102Dto;
import  com.shiyue.bbs.dao.IFaiOrderInfoV21102Dao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.FaiOrderInfoV21102Dto;
import com.shiyue.bbs.model.FaiOrderInfoV21102QueryBean;

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
@Service("faiOrderInfoV21102Dao")
public class FaiOrderInfoV21102DaoImpl extends BaseDaoImpl<FaiOrderInfoV21102Dto, String> implements IFaiOrderInfoV21102Dao{
	public FaiOrderInfoV21102DaoImpl() {
		super(FaiOrderInfoV21102Dto.class);
	}
	
	
	/****
	 * 
	 * @param faiOrderInfoV21102QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryFaiOrderInfoV21102ListPage(FaiOrderInfoV21102QueryBean faiOrderInfoV21102QueryBean,PagingObject pagingObject) throws Exception
	 {	
		faiOrderInfoV21102QueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("faiOrderInfoV21102.select_faiOrderInfoV21102List_count",faiOrderInfoV21102QueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List faiOrderInfoV21102List = this.getSqlMapClientTemplate().queryForList("faiOrderInfoV21102.select_faiOrderInfoV21102List", faiOrderInfoV21102QueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(faiOrderInfoV21102List);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
