package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.AppTractInfoDto;
import com.shiyue.bbs.service.IAppTractInfoService;

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
 
@Controller("addAppTractInfoAction")
@Scope("prototype")
public class AddAppTractInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IAppTractInfoService appTractInfoService;
	private AppTractInfoDto appTractInfoDto= new AppTractInfoDto();

	public String execute() throws Exception {
		try {
			appTractInfoService.save(appTractInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final AppTractInfoDto getAppTractInfoDto() {
		return appTractInfoDto;
	}

	public final void setStudentDto(AppTractInfoDto appTractInfoDto) {
		this.appTractInfoDto = appTractInfoDto;
	}

}
