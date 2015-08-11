package com.shiyue.bbs.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.hercules.database.dao.BaseDao;
import com.hercules.database.service.impl.GenericServiceImpl;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import com.shiyue.bbs.dao.IAgentManagerDao;
import com.shiyue.bbs.model.dto.AgentManagerDto;
import com.shiyue.bbs.model.AgentManagerQueryBean;
import com.shiyue.bbs.service.IAgentManagerService;


/**
 * 类功能:自动代码生成模板 ServiceImpl 模板
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
@Service("agentManagerService")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class AgentManagerServiceImpl extends GenericServiceImpl<AgentManagerDto, String> implements IAgentManagerService{
    @Autowired
    private IAgentManagerDao   agentManagerDao;

	public BaseDao<AgentManagerDto, String> getBaseDao() {
		return agentManagerDao;
	}
	

	/****
	 * @param  agentManagerQueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryAgentManagerListPage(AgentManagerQueryBean agentManagerQueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.agentManagerDao.queryAgentManagerListPage(agentManagerQueryBean, pagingObject);
	 }
	
}
