package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.V2BankBehalfAccountInfoDto;
import  com.shiyue.bbs.dao.IV2BankBehalfAccountInfoDao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.V2BankBehalfAccountInfoDto;
import com.shiyue.bbs.model.V2BankBehalfAccountInfoQueryBean;

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
@Service("v2BankBehalfAccountInfoDao")
public class V2BankBehalfAccountInfoDaoImpl extends BaseDaoImpl<V2BankBehalfAccountInfoDto, String> implements IV2BankBehalfAccountInfoDao{
	public V2BankBehalfAccountInfoDaoImpl() {
		super(V2BankBehalfAccountInfoDto.class);
	}
	
	
	/****
	 * 
	 * @param v2BankBehalfAccountInfoQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryV2BankBehalfAccountInfoListPage(V2BankBehalfAccountInfoQueryBean v2BankBehalfAccountInfoQueryBean,PagingObject pagingObject) throws Exception
	 {	
		v2BankBehalfAccountInfoQueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("v2BankBehalfAccountInfo.select_v2BankBehalfAccountInfoList_count",v2BankBehalfAccountInfoQueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List v2BankBehalfAccountInfoList = this.getSqlMapClientTemplate().queryForList("v2BankBehalfAccountInfo.select_v2BankBehalfAccountInfoList", v2BankBehalfAccountInfoQueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(v2BankBehalfAccountInfoList);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
