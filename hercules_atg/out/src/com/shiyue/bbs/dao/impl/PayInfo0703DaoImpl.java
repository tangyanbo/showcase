package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.PayInfo0703Dto;
import  com.shiyue.bbs.dao.IPayInfo0703Dao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.PayInfo0703Dto;
import com.shiyue.bbs.model.PayInfo0703QueryBean;

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
@Service("payInfo0703Dao")
public class PayInfo0703DaoImpl extends BaseDaoImpl<PayInfo0703Dto, String> implements IPayInfo0703Dao{
	public PayInfo0703DaoImpl() {
		super(PayInfo0703Dto.class);
	}
	
	
	/****
	 * 
	 * @param payInfo0703QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryPayInfo0703ListPage(PayInfo0703QueryBean payInfo0703QueryBean,PagingObject pagingObject) throws Exception
	 {	
		payInfo0703QueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("payInfo0703.select_payInfo0703List_count",payInfo0703QueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List payInfo0703List = this.getSqlMapClientTemplate().queryForList("payInfo0703.select_payInfo0703List", payInfo0703QueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(payInfo0703List);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
