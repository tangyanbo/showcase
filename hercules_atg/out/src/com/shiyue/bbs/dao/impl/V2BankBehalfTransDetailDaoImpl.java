package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.V2BankBehalfTransDetailDto;
import  com.shiyue.bbs.dao.IV2BankBehalfTransDetailDao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.V2BankBehalfTransDetailDto;
import com.shiyue.bbs.model.V2BankBehalfTransDetailQueryBean;

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
@Service("v2BankBehalfTransDetailDao")
public class V2BankBehalfTransDetailDaoImpl extends BaseDaoImpl<V2BankBehalfTransDetailDto, String> implements IV2BankBehalfTransDetailDao{
	public V2BankBehalfTransDetailDaoImpl() {
		super(V2BankBehalfTransDetailDto.class);
	}
	
	
	/****
	 * 
	 * @param v2BankBehalfTransDetailQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryV2BankBehalfTransDetailListPage(V2BankBehalfTransDetailQueryBean v2BankBehalfTransDetailQueryBean,PagingObject pagingObject) throws Exception
	 {	
		v2BankBehalfTransDetailQueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("v2BankBehalfTransDetail.select_v2BankBehalfTransDetailList_count",v2BankBehalfTransDetailQueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List v2BankBehalfTransDetailList = this.getSqlMapClientTemplate().queryForList("v2BankBehalfTransDetail.select_v2BankBehalfTransDetailList", v2BankBehalfTransDetailQueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(v2BankBehalfTransDetailList);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
