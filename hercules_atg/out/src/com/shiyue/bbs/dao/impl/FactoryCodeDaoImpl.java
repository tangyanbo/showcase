package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.FactoryCodeDto;
import  com.shiyue.bbs.dao.IFactoryCodeDao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.FactoryCodeDto;
import com.shiyue.bbs.model.FactoryCodeQueryBean;

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
@Service("factoryCodeDao")
public class FactoryCodeDaoImpl extends BaseDaoImpl<FactoryCodeDto, String> implements IFactoryCodeDao{
	public FactoryCodeDaoImpl() {
		super(FactoryCodeDto.class);
	}
	
	
	/****
	 * 
	 * @param factoryCodeQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryFactoryCodeListPage(FactoryCodeQueryBean factoryCodeQueryBean,PagingObject pagingObject) throws Exception
	 {	
		factoryCodeQueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("factoryCode.select_factoryCodeList_count",factoryCodeQueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List factoryCodeList = this.getSqlMapClientTemplate().queryForList("factoryCode.select_factoryCodeList", factoryCodeQueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(factoryCodeList);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
