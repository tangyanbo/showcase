package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.AgenctInfoDto;
import com.shiyue.bbs.service.IAgenctInfoService;

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
 
@Controller("addAgenctInfoAction")
@Scope("prototype")
public class AddAgenctInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IAgenctInfoService agenctInfoService;
	private AgenctInfoDto agenctInfoDto= new AgenctInfoDto();

	public String execute() throws Exception {
		try {
			agenctInfoService.save(agenctInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final AgenctInfoDto getAgenctInfoDto() {
		return agenctInfoDto;
	}

	public final void setStudentDto(AgenctInfoDto agenctInfoDto) {
		this.agenctInfoDto = agenctInfoDto;
	}

}
