package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.SucOrderInfoV21102Dto;
import  com.shiyue.bbs.dao.ISucOrderInfoV21102Dao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.SucOrderInfoV21102Dto;
import com.shiyue.bbs.model.SucOrderInfoV21102QueryBean;

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
@Service("sucOrderInfoV21102Dao")
public class SucOrderInfoV21102DaoImpl extends BaseDaoImpl<SucOrderInfoV21102Dto, String> implements ISucOrderInfoV21102Dao{
	public SucOrderInfoV21102DaoImpl() {
		super(SucOrderInfoV21102Dto.class);
	}
	
	
	/****
	 * 
	 * @param sucOrderInfoV21102QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult querySucOrderInfoV21102ListPage(SucOrderInfoV21102QueryBean sucOrderInfoV21102QueryBean,PagingObject pagingObject) throws Exception
	 {	
		sucOrderInfoV21102QueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("sucOrderInfoV21102.select_sucOrderInfoV21102List_count",sucOrderInfoV21102QueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List sucOrderInfoV21102List = this.getSqlMapClientTemplate().queryForList("sucOrderInfoV21102.select_sucOrderInfoV21102List", sucOrderInfoV21102QueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(sucOrderInfoV21102List);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
