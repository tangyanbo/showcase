package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.RegionCodeNewDto;
import  com.shiyue.bbs.dao.IRegionCodeNewDao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.RegionCodeNewDto;
import com.shiyue.bbs.model.RegionCodeNewQueryBean;

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
@Service("regionCodeNewDao")
public class RegionCodeNewDaoImpl extends BaseDaoImpl<RegionCodeNewDto, String> implements IRegionCodeNewDao{
	public RegionCodeNewDaoImpl() {
		super(RegionCodeNewDto.class);
	}
	
	
	/****
	 * 
	 * @param regionCodeNewQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryRegionCodeNewListPage(RegionCodeNewQueryBean regionCodeNewQueryBean,PagingObject pagingObject) throws Exception
	 {	
		regionCodeNewQueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("regionCodeNew.select_regionCodeNewList_count",regionCodeNewQueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List regionCodeNewList = this.getSqlMapClientTemplate().queryForList("regionCodeNew.select_regionCodeNewList", regionCodeNewQueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(regionCodeNewList);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
