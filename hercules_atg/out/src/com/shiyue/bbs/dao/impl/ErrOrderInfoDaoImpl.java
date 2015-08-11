package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.ErrOrderInfoDto;
import  com.shiyue.bbs.dao.IErrOrderInfoDao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.ErrOrderInfoDto;
import com.shiyue.bbs.model.ErrOrderInfoQueryBean;

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
@Service("errOrderInfoDao")
public class ErrOrderInfoDaoImpl extends BaseDaoImpl<ErrOrderInfoDto, String> implements IErrOrderInfoDao{
	public ErrOrderInfoDaoImpl() {
		super(ErrOrderInfoDto.class);
	}
	
	
	/****
	 * 
	 * @param errOrderInfoQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryErrOrderInfoListPage(ErrOrderInfoQueryBean errOrderInfoQueryBean,PagingObject pagingObject) throws Exception
	 {	
		errOrderInfoQueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("errOrderInfo.select_errOrderInfoList_count",errOrderInfoQueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List errOrderInfoList = this.getSqlMapClientTemplate().queryForList("errOrderInfo.select_errOrderInfoList", errOrderInfoQueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(errOrderInfoList);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
