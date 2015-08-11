package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.AgentModelDto;
import com.shiyue.bbs.service.IAgentModelService;

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
 
@Controller("editAgentModelAction")
@Scope("prototype")
public class EditAgentModelAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IAgentModelService agentModelService;
	private AgentModelDto agentModelDto =new AgentModelDto();;

	public String execute() throws Exception {
		try {
		    
		      AgentModelDto tmpAgentModelDto = new AgentModelDto();
			  tmpAgentModelDto.setId(agentModelDto.getId());
			  tmpAgentModelDto.setModel_name(agentModelDto.getModel_name());
			  tmpAgentModelDto.setModel_no(agentModelDto.getModel_no());
			  tmpAgentModelDto.setPath(agentModelDto.getPath());
			  tmpAgentModelDto.setDesc(agentModelDto.getDesc());
			  tmpAgentModelDto.setSuper_no(agentModelDto.getSuper_no());
			  tmpAgentModelDto.setRemark(agentModelDto.getRemark());
			  tmpAgentModelDto.setReserved(agentModelDto.getReserved());
		
			agentModelService.updatePK(agentModelDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final AgentModelDto getAgentModelDto() {
		return agentModelDto;
	}

	public final void setStudentDto(AgentModelDto agentModelDto) {
		this.agentModelDto = agentModelDto;
	}

}
