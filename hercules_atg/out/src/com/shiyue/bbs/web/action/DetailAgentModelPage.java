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
 
@Controller("detailAgentModelPage")
@Scope("prototype")
public class DetailAgentModelPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IAgentModelService agentModelService;
	
	//入参
	private  String     pkid;
	
	//出参
	private AgentModelDto agentModelDto;

	
	public String execute() throws Exception {
		try {
		    AgentModelDto paramAgentModelDto = new AgentModelDto();
		//设置主键
			paramAgentModelDto.setId(pkid);
			agentModelDto = agentModelService.getRow(paramAgentModelDto );
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
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
