package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.FaiOrderInfoV2Dto;
import  com.shiyue.bbs.dao.IFaiOrderInfoV2Dao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.FaiOrderInfoV2Dto;
import com.shiyue.bbs.model.FaiOrderInfoV2QueryBean;

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
@Service("faiOrderInfoV2Dao")
public class FaiOrderInfoV2DaoImpl extends BaseDaoImpl<FaiOrderInfoV2Dto, String> implements IFaiOrderInfoV2Dao{
	public FaiOrderInfoV2DaoImpl() {
		super(FaiOrderInfoV2Dto.class);
	}
	
	
	/****
	 * 
	 * @param faiOrderInfoV2QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryFaiOrderInfoV2ListPage(FaiOrderInfoV2QueryBean faiOrderInfoV2QueryBean,PagingObject pagingObject) throws Exception
	 {	
		faiOrderInfoV2QueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("faiOrderInfoV2.select_faiOrderInfoV2List_count",faiOrderInfoV2QueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List faiOrderInfoV2List = this.getSqlMapClientTemplate().queryForList("faiOrderInfoV2.select_faiOrderInfoV2List", faiOrderInfoV2QueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(faiOrderInfoV2List);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
