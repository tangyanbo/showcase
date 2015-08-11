package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.FaiPayInfo2newDto;
import  com.shiyue.bbs.dao.IFaiPayInfo2newDao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.FaiPayInfo2newDto;
import com.shiyue.bbs.model.FaiPayInfo2newQueryBean;

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
@Service("faiPayInfo2newDao")
public class FaiPayInfo2newDaoImpl extends BaseDaoImpl<FaiPayInfo2newDto, String> implements IFaiPayInfo2newDao{
	public FaiPayInfo2newDaoImpl() {
		super(FaiPayInfo2newDto.class);
	}
	
	
	/****
	 * 
	 * @param faiPayInfo2newQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryFaiPayInfo2newListPage(FaiPayInfo2newQueryBean faiPayInfo2newQueryBean,PagingObject pagingObject) throws Exception
	 {	
		faiPayInfo2newQueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("faiPayInfo2new.select_faiPayInfo2newList_count",faiPayInfo2newQueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List faiPayInfo2newList = this.getSqlMapClientTemplate().queryForList("faiPayInfo2new.select_faiPayInfo2newList", faiPayInfo2newQueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(faiPayInfo2newList);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
