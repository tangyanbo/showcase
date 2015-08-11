package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubMerTerminalInfoDto;
import com.shiyue.bbs.service.ISubMerTerminalInfoService;

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
 
@Controller("addSubMerTerminalInfoAction")
@Scope("prototype")
public class AddSubMerTerminalInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubMerTerminalInfoService subMerTerminalInfoService;
	private SubMerTerminalInfoDto subMerTerminalInfoDto= new SubMerTerminalInfoDto();

	public String execute() throws Exception {
		try {
			subMerTerminalInfoService.save(subMerTerminalInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SubMerTerminalInfoDto getSubMerTerminalInfoDto() {
		return subMerTerminalInfoDto;
	}

	public final void setStudentDto(SubMerTerminalInfoDto subMerTerminalInfoDto) {
		this.subMerTerminalInfoDto = subMerTerminalInfoDto;
	}

}
