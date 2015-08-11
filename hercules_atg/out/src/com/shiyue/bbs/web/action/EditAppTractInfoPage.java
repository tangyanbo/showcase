package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.AppTractInfoDto;
import com.shiyue.bbs.service.IAppTractInfoService;

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
 
@Controller("editAppTractInfoPage")
@Scope("prototype")
public class EditAppTractInfoPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IAppTractInfoService appTractInfoService;
	
	//入参
	private  String     pkid;
	
	//出参
	private AppTractInfoDto appTractInfoDto;

	
	public String execute() throws Exception {
		try {
		    AppTractInfoDto paramAppTractInfoDto = new AppTractInfoDto();
		//设置主键
			paramAppTractInfoDto.setApp_tract_id(pkid);
			appTractInfoDto = appTractInfoService.getRow(paramAppTractInfoDto );
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
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
