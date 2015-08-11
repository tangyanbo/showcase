package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.V2BankBehalfOrderDto;
import  com.shiyue.bbs.dao.IV2BankBehalfOrderDao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.V2BankBehalfOrderDto;
import com.shiyue.bbs.model.V2BankBehalfOrderQueryBean;

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
@Service("v2BankBehalfOrderDao")
public class V2BankBehalfOrderDaoImpl extends BaseDaoImpl<V2BankBehalfOrderDto, String> implements IV2BankBehalfOrderDao{
	public V2BankBehalfOrderDaoImpl() {
		super(V2BankBehalfOrderDto.class);
	}
	
	
	/****
	 * 
	 * @param v2BankBehalfOrderQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryV2BankBehalfOrderListPage(V2BankBehalfOrderQueryBean v2BankBehalfOrderQueryBean,PagingObject pagingObject) throws Exception
	 {	
		v2BankBehalfOrderQueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("v2BankBehalfOrder.select_v2BankBehalfOrderList_count",v2BankBehalfOrderQueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List v2BankBehalfOrderList = this.getSqlMapClientTemplate().queryForList("v2BankBehalfOrder.select_v2BankBehalfOrderList", v2BankBehalfOrderQueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(v2BankBehalfOrderList);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
