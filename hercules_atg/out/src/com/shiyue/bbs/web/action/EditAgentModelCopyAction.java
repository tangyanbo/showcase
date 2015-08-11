package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.AgentModelCopyDto;
import com.shiyue.bbs.service.IAgentModelCopyService;

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
 
@Controller("editAgentModelCopyAction")
@Scope("prototype")
public class EditAgentModelCopyAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IAgentModelCopyService agentModelCopyService;
	private AgentModelCopyDto agentModelCopyDto =new AgentModelCopyDto();;

	public String execute() throws Exception {
		try {
		    
		      AgentModelCopyDto tmpAgentModelCopyDto = new AgentModelCopyDto();
			  tmpAgentModelCopyDto.setId(agentModelCopyDto.getId());
			  tmpAgentModelCopyDto.setModel_name(agentModelCopyDto.getModel_name());
			  tmpAgentModelCopyDto.setModel_no(agentModelCopyDto.getModel_no());
			  tmpAgentModelCopyDto.setPath(agentModelCopyDto.getPath());
			  tmpAgentModelCopyDto.setDesc(agentModelCopyDto.getDesc());
			  tmpAgentModelCopyDto.setSuper_no(agentModelCopyDto.getSuper_no());
			  tmpAgentModelCopyDto.setRemark(agentModelCopyDto.getRemark());
			  tmpAgentModelCopyDto.setReserved(agentModelCopyDto.getReserved());
		
			agentModelCopyService.updatePK(agentModelCopyDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final AgentModelCopyDto getAgentModelCopyDto() {
		return agentModelCopyDto;
	}

	public final void setStudentDto(AgentModelCopyDto agentModelCopyDto) {
		this.agentModelCopyDto = agentModelCopyDto;
	}

}
