package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.AgentRateInfoDto;
import com.shiyue.bbs.service.IAgentRateInfoService;

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
 
@Controller("editAgentRateInfoAction")
@Scope("prototype")
public class EditAgentRateInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IAgentRateInfoService agentRateInfoService;
	private AgentRateInfoDto agentRateInfoDto =new AgentRateInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      AgentRateInfoDto tmpAgentRateInfoDto = new AgentRateInfoDto();
			  tmpAgentRateInfoDto.setId(agentRateInfoDto.getId());
			  tmpAgentRateInfoDto.setAgent_id(agentRateInfoDto.getAgent_id());
			  tmpAgentRateInfoDto.setMcc_category_id(agentRateInfoDto.getMcc_category_id());
			  tmpAgentRateInfoDto.setAgent_rate_1(agentRateInfoDto.getAgent_rate_1());
			  tmpAgentRateInfoDto.setAgent_rate_2(agentRateInfoDto.getAgent_rate_2());
			  tmpAgentRateInfoDto.setAgent_highest_fee(agentRateInfoDto.getAgent_highest_fee());
			  tmpAgentRateInfoDto.setRemark(agentRateInfoDto.getRemark());
			  tmpAgentRateInfoDto.setReserved(agentRateInfoDto.getReserved());
		
			agentRateInfoService.updatePK(agentRateInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final AgentRateInfoDto getAgentRateInfoDto() {
		return agentRateInfoDto;
	}

	public final void setStudentDto(AgentRateInfoDto agentRateInfoDto) {
		this.agentRateInfoDto = agentRateInfoDto;
	}

}
