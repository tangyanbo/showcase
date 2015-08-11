package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.OrderInfo1Dto;
import  com.shiyue.bbs.dao.IOrderInfo1Dao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.OrderInfo1Dto;
import com.shiyue.bbs.model.OrderInfo1QueryBean;

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
@Service("orderInfo1Dao")
public class OrderInfo1DaoImpl extends BaseDaoImpl<OrderInfo1Dto, String> implements IOrderInfo1Dao{
	public OrderInfo1DaoImpl() {
		super(OrderInfo1Dto.class);
	}
	
	
	/****
	 * 
	 * @param orderInfo1QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryOrderInfo1ListPage(OrderInfo1QueryBean orderInfo1QueryBean,PagingObject pagingObject) throws Exception
	 {	
		orderInfo1QueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("orderInfo1.select_orderInfo1List_count",orderInfo1QueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List orderInfo1List = this.getSqlMapClientTemplate().queryForList("orderInfo1.select_orderInfo1List", orderInfo1QueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(orderInfo1List);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
