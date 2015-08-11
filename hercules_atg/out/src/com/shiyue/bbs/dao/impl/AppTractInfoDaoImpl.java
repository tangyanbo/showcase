package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.AppTractInfoDto;
import  com.shiyue.bbs.dao.IAppTractInfoDao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.AppTractInfoDto;
import com.shiyue.bbs.model.AppTractInfoQueryBean;

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
@Service("appTractInfoDao")
public class AppTractInfoDaoImpl extends BaseDaoImpl<AppTractInfoDto, String> implements IAppTractInfoDao{
	public AppTractInfoDaoImpl() {
		super(AppTractInfoDto.class);
	}
	
	
	/****
	 * 
	 * @param appTractInfoQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryAppTractInfoListPage(AppTractInfoQueryBean appTractInfoQueryBean,PagingObject pagingObject) throws Exception
	 {	
		appTractInfoQueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("appTractInfo.select_appTractInfoList_count",appTractInfoQueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List appTractInfoList = this.getSqlMapClientTemplate().queryForList("appTractInfo.select_appTractInfoList", appTractInfoQueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(appTractInfoList);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
