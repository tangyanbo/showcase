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
import com.shiyue.bbs.dao.IOrderInfo1Dao;
import com.shiyue.bbs.model.dto.OrderInfo1Dto;
import com.shiyue.bbs.model.OrderInfo1QueryBean;
import com.shiyue.bbs.service.IOrderInfo1Service;


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
@Service("orderInfo1Service")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class OrderInfo1ServiceImpl extends GenericServiceImpl<OrderInfo1Dto, String> implements IOrderInfo1Service{
    @Autowired
    private IOrderInfo1Dao   orderInfo1Dao;

	public BaseDao<OrderInfo1Dto, String> getBaseDao() {
		return orderInfo1Dao;
	}
	

	/****
	 * @param  orderInfo1QueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryOrderInfo1ListPage(OrderInfo1QueryBean orderInfo1QueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.orderInfo1Dao.queryOrderInfo1ListPage(orderInfo1QueryBean, pagingObject);
	 }
	
}