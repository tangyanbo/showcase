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
 
@Controller("detailAppConfigInfoPage")
@Scope("prototype")
public class DetailAppConfigInfoPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IAppConfigInfoService appConfigInfoService;
	
	//入参
	private  String     pkid;
	
	//出参
	private AppConfigInfoDto appConfigInfoDto;

	
	public String execute() throws Exception {
		try {
		    AppConfigInfoDto paramAppConfigInfoDto = new AppConfigInfoDto();
		//设置主键
			paramAppConfigInfoDto.setId(pkid);
			appConfigInfoDto = appConfigInfoService.getRow(paramAppConfigInfoDto );
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
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
