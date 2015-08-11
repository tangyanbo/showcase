package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.MerAccountDto;
import  com.shiyue.bbs.dao.IMerAccountDao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.MerAccountDto;
import com.shiyue.bbs.model.MerAccountQueryBean;

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
@Service("merAccountDao")
public class MerAccountDaoImpl extends BaseDaoImpl<MerAccountDto, String> implements IMerAccountDao{
	public MerAccountDaoImpl() {
		super(MerAccountDto.class);
	}
	
	
	/****
	 * 
	 * @param merAccountQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryMerAccountListPage(MerAccountQueryBean merAccountQueryBean,PagingObject pagingObject) throws Exception
	 {	
		merAccountQueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("merAccount.select_merAccountList_count",merAccountQueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List merAccountList = this.getSqlMapClientTemplate().queryForList("merAccount.select_merAccountList", merAccountQueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(merAccountList);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
