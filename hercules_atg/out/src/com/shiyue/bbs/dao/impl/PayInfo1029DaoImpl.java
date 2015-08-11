package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.PayInfo1029Dto;
import  com.shiyue.bbs.dao.IPayInfo1029Dao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.PayInfo1029Dto;
import com.shiyue.bbs.model.PayInfo1029QueryBean;

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
@Service("payInfo1029Dao")
public class PayInfo1029DaoImpl extends BaseDaoImpl<PayInfo1029Dto, String> implements IPayInfo1029Dao{
	public PayInfo1029DaoImpl() {
		super(PayInfo1029Dto.class);
	}
	
	
	/****
	 * 
	 * @param payInfo1029QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryPayInfo1029ListPage(PayInfo1029QueryBean payInfo1029QueryBean,PagingObject pagingObject) throws Exception
	 {	
		payInfo1029QueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("payInfo1029.select_payInfo1029List_count",payInfo1029QueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List payInfo1029List = this.getSqlMapClientTemplate().queryForList("payInfo1029.select_payInfo1029List", payInfo1029QueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(payInfo1029List);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
