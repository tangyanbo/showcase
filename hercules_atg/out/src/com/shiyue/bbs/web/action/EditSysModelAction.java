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
 
@Controller("editSysModelAction")
@Scope("prototype")
public class EditSysModelAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISysModelService sysModelService;
	private SysModelDto sysModelDto =new SysModelDto();;

	public String execute() throws Exception {
		try {
		    
		      SysModelDto tmpSysModelDto = new SysModelDto();
			  tmpSysModelDto.setId(sysModelDto.getId());
			  tmpSysModelDto.setModel_name(sysModelDto.getModel_name());
			  tmpSysModelDto.setModel_no(sysModelDto.getModel_no());
			  tmpSysModelDto.setPath(sysModelDto.getPath());
			  tmpSysModelDto.setDesc(sysModelDto.getDesc());
			  tmpSysModelDto.setRemark(sysModelDto.getRemark());
			  tmpSysModelDto.setSuper_no(sysModelDto.getSuper_no());
		
			sysModelService.updatePK(sysModelDto);
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

}
