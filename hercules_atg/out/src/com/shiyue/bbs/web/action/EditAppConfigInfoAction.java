package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.AppConfigInfoDto;
import com.shiyue.bbs.service.IAppConfigInfoService;

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
 
@Controller("editAppConfigInfoAction")
@Scope("prototype")
public class EditAppConfigInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IAppConfigInfoService appConfigInfoService;
	private AppConfigInfoDto appConfigInfoDto =new AppConfigInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      AppConfigInfoDto tmpAppConfigInfoDto = new AppConfigInfoDto();
			  tmpAppConfigInfoDto.setId(appConfigInfoDto.getId());
			  tmpAppConfigInfoDto.setApk_name(appConfigInfoDto.getApk_name());
			  tmpAppConfigInfoDto.setPic_url(appConfigInfoDto.getPic_url());
			  tmpAppConfigInfoDto.setApk_url(appConfigInfoDto.getApk_url());
			  tmpAppConfigInfoDto.setEntrance_name(appConfigInfoDto.getEntrance_name());
			  tmpAppConfigInfoDto.setStatus(appConfigInfoDto.getStatus());
			  tmpAppConfigInfoDto.setCreate_time(appConfigInfoDto.getCreate_time());
			  tmpAppConfigInfoDto.setRemark(appConfigInfoDto.getRemark());
			  tmpAppConfigInfoDto.setReserved(appConfigInfoDto.getReserved());
			  tmpAppConfigInfoDto.setVersion(appConfigInfoDto.getVersion());
		
			appConfigInfoService.updatePK(appConfigInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final AppConfigInfoDto getAppConfigInfoDto() {
		return appConfigInfoDto;
	}

	public final void setStudentDto(AppConfigInfoDto appConfigInfoDto) {
		this.appConfigInfoDto = appConfigInfoDto;
	}

}
