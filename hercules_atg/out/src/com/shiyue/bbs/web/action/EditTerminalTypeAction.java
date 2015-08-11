package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.TerminalTypeDto;
import com.shiyue.bbs.service.ITerminalTypeService;

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
 
@Controller("editTerminalTypeAction")
@Scope("prototype")
public class EditTerminalTypeAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ITerminalTypeService terminalTypeService;
	private TerminalTypeDto terminalTypeDto =new TerminalTypeDto();;

	public String execute() throws Exception {
		try {
		    
		      TerminalTypeDto tmpTerminalTypeDto = new TerminalTypeDto();
			  tmpTerminalTypeDto.setProduct_id(terminalTypeDto.getProduct_id());
			  tmpTerminalTypeDto.setProduct_name(terminalTypeDto.getProduct_name());
			  tmpTerminalTypeDto.setProduct_desc(terminalTypeDto.getProduct_desc());
			  tmpTerminalTypeDto.setStatus(terminalTypeDto.getStatus());
			  tmpTerminalTypeDto.setRemark(terminalTypeDto.getRemark());
			  tmpTerminalTypeDto.setType(terminalTypeDto.getType());
		
			terminalTypeService.updatePK(terminalTypeDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final TerminalTypeDto getTerminalTypeDto() {
		return terminalTypeDto;
	}

	public final void setStudentDto(TerminalTypeDto terminalTypeDto) {
		this.terminalTypeDto = terminalTypeDto;
	}

}
