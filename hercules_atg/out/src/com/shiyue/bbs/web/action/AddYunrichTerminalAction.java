package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.YunrichTerminalDto;
import com.shiyue.bbs.service.IYunrichTerminalService;

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
 
@Controller("addYunrichTerminalAction")
@Scope("prototype")
public class AddYunrichTerminalAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IYunrichTerminalService yunrichTerminalService;
	private YunrichTerminalDto yunrichTerminalDto= new YunrichTerminalDto();

	public String execute() throws Exception {
		try {
			yunrichTerminalService.save(yunrichTerminalDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final YunrichTerminalDto getYunrichTerminalDto() {
		return yunrichTerminalDto;
	}

	public final void setStudentDto(YunrichTerminalDto yunrichTerminalDto) {
		this.yunrichTerminalDto = yunrichTerminalDto;
	}

}
