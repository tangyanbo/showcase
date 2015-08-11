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
 
@Controller("editAgentRateInfoPage")
@Scope("prototype")
public class EditAgentRateInfoPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IAgentRateInfoService agentRateInfoService;
	
	//入参
	private  String     pkid;
	
	//出参
	private AgentRateInfoDto agentRateInfoDto;

	
	public String execute() throws Exception {
		try {
		    AgentRateInfoDto paramAgentRateInfoDto = new AgentRateInfoDto();
		//设置主键
			paramAgentRateInfoDto.setId(pkid);
			agentRateInfoDto = agentRateInfoService.getRow(paramAgentRateInfoDto );
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
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}