package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.CssConfigDto;
import  com.shiyue.bbs.dao.ICssConfigDao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.CssConfigDto;
import com.shiyue.bbs.model.CssConfigQueryBean;

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
@Service("cssConfigDao")
public class CssConfigDaoImpl extends BaseDaoImpl<CssConfigDto, String> implements ICssConfigDao{
	public CssConfigDaoImpl() {
		super(CssConfigDto.class);
	}
	
	
	/****
	 * 
	 * @param cssConfigQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryCssConfigListPage(CssConfigQueryBean cssConfigQueryBean,PagingObject pagingObject) throws Exception
	 {	
		cssConfigQueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("cssConfig.select_cssConfigList_count",cssConfigQueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List cssConfigList = this.getSqlMapClientTemplate().queryForList("cssConfig.select_cssConfigList", cssConfigQueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(cssConfigList);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
