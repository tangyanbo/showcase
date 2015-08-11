package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.AgentManagerDto;
import com.shiyue.bbs.service.IAgentManagerService;

 /**
 * 类功能:自动代码生成模板编辑   action 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */
 
@Controller("editAgentManagerAction")
@Scope("prototype")
public class EditAgentManagerAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IAgentManagerService agentManagerService;
	private AgentManagerDto agentManagerDto =new AgentManagerDto();;

	public String execute() throws Exception {
		try {
		    
		      AgentManagerDto tmpAgentManagerDto = new AgentManagerDto();
			  tmpAgentManagerDto.setId(agentManagerDto.getId());
			  tmpAgentManagerDto.setAgent_id(agentManagerDto.getAgent_id());
			  tmpAgentManagerDto.setLevel(agentManagerDto.getLevel());
			  tmpAgentManagerDto.setLogin_name(agentManagerDto.getLogin_name());
			  tmpAgentManagerDto.setLogin_pwd(agentManagerDto.getLogin_pwd());
			  tmpAgentManagerDto.setPurview(agentManagerDto.getPurview());
			  tmpAgentManagerDto.setReal_name(agentManagerDto.getReal_name());
			  tmpAgentManagerDto.setPhone(agentManagerDto.getPhone());
			  tmpAgentManagerDto.setEmail(agentManagerDto.getEmail());
			  tmpAgentManagerDto.setLogin_count(agentManagerDto.getLogin_count());
			  tmpAgentManagerDto.setLast_login_time(agentManagerDto.getLast_login_time());
			  tmpAgentManagerDto.setLogin_ip(agentManagerDto.getLogin_ip());
			  tmpAgentManagerDto.setCreate_time(agentManagerDto.getCreate_time());
			  tmpAgentManagerDto.setStatus(agentManagerDto.getStatus());
			  tmpAgentManagerDto.setRemark(agentManagerDto.getRemark());
		
			agentManagerService.updatePK(agentManagerDto);
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
