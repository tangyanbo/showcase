package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.OrderStatictisDto;
import  com.shiyue.bbs.dao.IOrderStatictisDao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.OrderStatictisDto;
import com.shiyue.bbs.model.OrderStatictisQueryBean;

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
@Service("orderStatictisDao")
public class OrderStatictisDaoImpl extends BaseDaoImpl<OrderStatictisDto, String> implements IOrderStatictisDao{
	public OrderStatictisDaoImpl() {
		super(OrderStatictisDto.class);
	}
	
	
	/****
	 * 
	 * @param orderStatictisQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryOrderStatictisListPage(OrderStatictisQueryBean orderStatictisQueryBean,PagingObject pagingObject) throws Exception
	 {	
		orderStatictisQueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("orderStatictis.select_orderStatictisList_count",orderStatictisQueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List orderStatictisList = this.getSqlMapClientTemplate().queryForList("orderStatictis.select_orderStatictisList", orderStatictisQueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(orderStatictisList);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
