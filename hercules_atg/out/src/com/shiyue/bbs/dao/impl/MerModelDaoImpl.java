package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.MerModelDto;
import  com.shiyue.bbs.dao.IMerModelDao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.MerModelDto;
import com.shiyue.bbs.model.MerModelQueryBean;

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
@Service("merModelDao")
public class MerModelDaoImpl extends BaseDaoImpl<MerModelDto, String> implements IMerModelDao{
	public MerModelDaoImpl() {
		super(MerModelDto.class);
	}
	
	
	/****
	 * 
	 * @param merModelQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryMerModelListPage(MerModelQueryBean merModelQueryBean,PagingObject pagingObject) throws Exception
	 {	
		merModelQueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("merModel.select_merModelList_count",merModelQueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List merModelList = this.getSqlMapClientTemplate().queryForList("merModel.select_merModelList", merModelQueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(merModelList);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
