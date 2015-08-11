package com.shiyue.bbs.dao.impl;
import java.util.List;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.AgentModelCopyDto;
import  com.shiyue.bbs.dao.IAgentModelCopyDao;
import  org.springframework.context.annotation.Scope;
import  org.springframework.stereotype.Service;
import  com.hercules.database.dao.impl.BaseDaoImpl;
import  com.shiyue.bbs.model.dto.AgentModelCopyDto;
import com.shiyue.bbs.model.AgentModelCopyQueryBean;

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
@Service("agentModelCopyDao")
public class AgentModelCopyDaoImpl extends BaseDaoImpl<AgentModelCopyDto, String> implements IAgentModelCopyDao{
	public AgentModelCopyDaoImpl() {
		super(AgentModelCopyDto.class);
	}
	
	
	/****
	 * 
	 * @param agentModelCopyQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryAgentModelCopyListPage(AgentModelCopyQueryBean agentModelCopyQueryBean,PagingObject pagingObject) throws Exception
	 {	
		agentModelCopyQueryBean.setOrderStr(" order by "+ pagingObject.getSort_name() +" "+pagingObject.getSort_order());	
		 PageResult prs = new PageResult(); 
		 
		 //查询记录总量信息
		 Integer count = (Integer) this.getSqlMapClientTemplate().queryForObject("agentModelCopy.select_agentModelCopyList_count",agentModelCopyQueryBean);
		 
		 //填充分页对象 以便构重新初始化对象
		 pagingObject.calculatePage(count.intValue());
		 
		 
		 //查询列表
		 List agentModelCopyList = this.getSqlMapClientTemplate().queryForList("agentModelCopy.select_agentModelCopyList", agentModelCopyQueryBean, pagingObject.getCurrentStartRecordCount(), pagingObject.getPage_size());
		 prs.setResultList(agentModelCopyList);
		 prs.setPagingObject(pagingObject);
		 
		 return prs;
	 }
	
}
