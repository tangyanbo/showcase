package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.PayInfo0708Dto;
import  com.shiyue.bbs.dao.IPayInfo0708Dao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.PayInfo0708Dto;
import com.shiyue.bbs.model.PayInfo0708QueryBean;

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
@Service("payInfo0708Dao")
public class PayInfo0708DaoImpl extends BaseDaoImpl<PayInfo0708Dto, String> implements IPayInfo0708Dao{
	public PayInfo0708DaoImpl() {
		super(PayInfo0708Dto.class);
	}
	
	
	/****
	 * 
	 * @param payInfo0708QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryPayInfo0708ListPage(PayInfo0708QueryBean payInfo0708QueryBean,PagingObject pagingObject) throws Exception
	 {	
		payInfo0708QueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("payInfo0708.select_payInfo0708List_count",payInfo0708QueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List payInfo0708List = this.getSqlMapClientTemplate().queryForList("payInfo0708.select_payInfo0708List", payInfo0708QueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(payInfo0708List);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
