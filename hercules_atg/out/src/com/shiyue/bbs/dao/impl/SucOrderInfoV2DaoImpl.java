package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.SucOrderInfoV2Dto;
import  com.shiyue.bbs.dao.ISucOrderInfoV2Dao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.SucOrderInfoV2Dto;
import com.shiyue.bbs.model.SucOrderInfoV2QueryBean;

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
@Service("sucOrderInfoV2Dao")
public class SucOrderInfoV2DaoImpl extends BaseDaoImpl<SucOrderInfoV2Dto, String> implements ISucOrderInfoV2Dao{
	public SucOrderInfoV2DaoImpl() {
		super(SucOrderInfoV2Dto.class);
	}
	
	
	/****
	 * 
	 * @param sucOrderInfoV2QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult querySucOrderInfoV2ListPage(SucOrderInfoV2QueryBean sucOrderInfoV2QueryBean,PagingObject pagingObject) throws Exception
	 {	
		sucOrderInfoV2QueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("sucOrderInfoV2.select_sucOrderInfoV2List_count",sucOrderInfoV2QueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List sucOrderInfoV2List = this.getSqlMapClientTemplate().queryForList("sucOrderInfoV2.select_sucOrderInfoV2List", sucOrderInfoV2QueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(sucOrderInfoV2List);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
