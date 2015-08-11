package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.AgentManagerDto;
import com.shiyue.bbs.service.IAgentManagerService;

 /**
 * 类功能:自动代码生成模板新增   action 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */
 
@Controller("addAgentManagerAction")
@Scope("prototype")
public class AddAgentManagerAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IAgentManagerService agentManagerService;
	private AgentManagerDto agentManagerDto= new AgentManagerDto();

	public String execute() throws Exception {
		try {
			agentManagerService.save(agentManagerDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final AgentManagerDto getAgentManagerDto() {
		return agentManagerDto;
	}

	public final void setStudentDto(AgentManagerDto agentManagerDto) {
		this.agentManagerDto = agentManagerDto;
	}

}