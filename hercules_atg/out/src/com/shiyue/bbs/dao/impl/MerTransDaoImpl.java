package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.MerTransDto;
import  com.shiyue.bbs.dao.IMerTransDao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.MerTransDto;
import com.shiyue.bbs.model.MerTransQueryBean;

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
@Service("merTransDao")
public class MerTransDaoImpl extends BaseDaoImpl<MerTransDto, String> implements IMerTransDao{
	public MerTransDaoImpl() {
		super(MerTransDto.class);
	}
	
	
	/****
	 * 
	 * @param merTransQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryMerTransListPage(MerTransQueryBean merTransQueryBean,PagingObject pagingObject) throws Exception
	 {	
		merTransQueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("merTrans.select_merTransList_count",merTransQueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List merTransList = this.getSqlMapClientTemplate().queryForList("merTrans.select_merTransList", merTransQueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(merTransList);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
