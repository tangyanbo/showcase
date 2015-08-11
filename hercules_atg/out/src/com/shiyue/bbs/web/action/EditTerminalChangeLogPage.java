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
 
@Controller("editTerminalChangeLogPage")
@Scope("prototype")
public class EditTerminalChangeLogPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ITerminalChangeLogService terminalChangeLogService;
	
	//入参
	private  String     pkid;
	
	//出参
	private TerminalChangeLogDto terminalChangeLogDto;

	
	public String execute() throws Exception {
		try {
		    TerminalChangeLogDto paramTerminalChangeLogDto = new TerminalChangeLogDto();
		//设置主键
			paramTerminalChangeLogDto.setId(pkid);
			terminalChangeLogDto = terminalChangeLogService.getRow(paramTerminalChangeLogDto );
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
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
