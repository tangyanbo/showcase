package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.FaiOrderInfoV2BackTestDto;
import  com.shiyue.bbs.dao.IFaiOrderInfoV2BackTestDao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.FaiOrderInfoV2BackTestDto;
import com.shiyue.bbs.model.FaiOrderInfoV2BackTestQueryBean;

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
@Service("faiOrderInfoV2BackTestDao")
public class FaiOrderInfoV2BackTestDaoImpl extends BaseDaoImpl<FaiOrderInfoV2BackTestDto, String> implements IFaiOrderInfoV2BackTestDao{
	public FaiOrderInfoV2BackTestDaoImpl() {
		super(FaiOrderInfoV2BackTestDto.class);
	}
	
	
	/****
	 * 
	 * @param faiOrderInfoV2BackTestQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryFaiOrderInfoV2BackTestListPage(FaiOrderInfoV2BackTestQueryBean faiOrderInfoV2BackTestQueryBean,PagingObject pagingObject) throws Exception
	 {	
		faiOrderInfoV2BackTestQueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("faiOrderInfoV2BackTest.select_faiOrderInfoV2BackTestList_count",faiOrderInfoV2BackTestQueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List faiOrderInfoV2BackTestList = this.getSqlMapClientTemplate().queryForList("faiOrderInfoV2BackTest.select_faiOrderInfoV2BackTestList", faiOrderInfoV2BackTestQueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(faiOrderInfoV2BackTestList);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
