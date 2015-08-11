package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.TerminalChangeLogDto;
import com.shiyue.bbs.service.ITerminalChangeLogService;

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
 
@Controller("editTerminalChangeLogAction")
@Scope("prototype")
public class EditTerminalChangeLogAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ITerminalChangeLogService terminalChangeLogService;
	private TerminalChangeLogDto terminalChangeLogDto =new TerminalChangeLogDto();;

	public String execute() throws Exception {
		try {
		    
		      TerminalChangeLogDto tmpTerminalChangeLogDto = new TerminalChangeLogDto();
			  tmpTerminalChangeLogDto.setId(terminalChangeLogDto.getId());
			  tmpTerminalChangeLogDto.setTerminal_id(terminalChangeLogDto.getTerminal_id());
			  tmpTerminalChangeLogDto.setOrg_sub_mer_id(terminalChangeLogDto.getOrg_sub_mer_id());
			  tmpTerminalChangeLogDto.setOrg_mer_sys_id(terminalChangeLogDto.getOrg_mer_sys_id());
			  tmpTerminalChangeLogDto.setOrg_login_name(terminalChangeLogDto.getOrg_login_name());
			  tmpTerminalChangeLogDto.setOrg_login_pwd(terminalChangeLogDto.getOrg_login_pwd());
			  tmpTerminalChangeLogDto.setOrg_version(terminalChangeLogDto.getOrg_version());
			  tmpTerminalChangeLogDto.setChange_date(terminalChangeLogDto.getChange_date());
			  tmpTerminalChangeLogDto.setChange_desc(terminalChangeLogDto.getChange_desc());
			  tmpTerminalChangeLogDto.setReserved(terminalChangeLogDto.getReserved());
		
			terminalChangeLogService.updatePK(terminalChangeLogDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final TerminalChangeLogDto getTerminalChangeLogDto() {
		return terminalChangeLogDto;
	}

	public final void setStudentDto(TerminalChangeLogDto terminalChangeLogDto) {
		this.terminalChangeLogDto = terminalChangeLogDto;
	}

}
