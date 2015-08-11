package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SysModelDto;
import com.shiyue.bbs.service.ISysModelService;

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
 
@Controller("editSysModelPage")
@Scope("prototype")
public class EditSysModelPage extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISysModelService sysModelService;
	
	//入参
	private  String     pkid;
	
	//出参
	private SysModelDto sysModelDto;

	
	public String execute() throws Exception {
		try {
		    SysModelDto paramSysModelDto = new SysModelDto();
		//设置主键
			paramSysModelDto.setId(pkid);
			sysModelDto = sysModelService.getRow(paramSysModelDto );
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SysModelDto getSysModelDto() {
		return sysModelDto;
	}

	public final void setStudentDto(SysModelDto sysModelDto) {
		this.sysModelDto = sysModelDto;
	}
	
	
	public final String getPkid() {
		return pkid;
	}

	public final void setPkid(String pkid) {
		this.pkid = pkid;
	}

}
