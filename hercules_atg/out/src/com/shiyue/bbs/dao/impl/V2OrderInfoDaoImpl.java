package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.V2OrderInfoDto;
import  com.shiyue.bbs.dao.IV2OrderInfoDao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.V2OrderInfoDto;
import com.shiyue.bbs.model.V2OrderInfoQueryBean;

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
@Service("v2OrderInfoDao")
public class V2OrderInfoDaoImpl extends BaseDaoImpl<V2OrderInfoDto, String> implements IV2OrderInfoDao{
	public V2OrderInfoDaoImpl() {
		super(V2OrderInfoDto.class);
	}
	
	
	/****
	 * 
	 * @param v2OrderInfoQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryV2OrderInfoListPage(V2OrderInfoQueryBean v2OrderInfoQueryBean,PagingObject pagingObject) throws Exception
	 {	
		v2OrderInfoQueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("v2OrderInfo.select_v2OrderInfoList_count",v2OrderInfoQueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List v2OrderInfoList = this.getSqlMapClientTemplate().queryForList("v2OrderInfo.select_v2OrderInfoList", v2OrderInfoQueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(v2OrderInfoList);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
