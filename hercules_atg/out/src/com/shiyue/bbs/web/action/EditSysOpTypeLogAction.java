package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SysOpTypeLogDto;
import com.shiyue.bbs.service.ISysOpTypeLogService;

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
 
@Controller("editSysOpTypeLogAction")
@Scope("prototype")
public class EditSysOpTypeLogAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISysOpTypeLogService sysOpTypeLogService;
	private SysOpTypeLogDto sysOpTypeLogDto =new SysOpTypeLogDto();;

	public String execute() throws Exception {
		try {
		    
		      SysOpTypeLogDto tmpSysOpTypeLogDto = new SysOpTypeLogDto();
			  tmpSysOpTypeLogDto.setId(sysOpTypeLogDto.getId());
			  tmpSysOpTypeLogDto.setLogin_name(sysOpTypeLogDto.getLogin_name());
			  tmpSysOpTypeLogDto.setOp_desc(sysOpTypeLogDto.getOp_desc());
			  tmpSysOpTypeLogDto.setOp_url(sysOpTypeLogDto.getOp_url());
			  tmpSysOpTypeLogDto.setIp(sysOpTypeLogDto.getIp());
			  tmpSysOpTypeLogDto.setOp_type(sysOpTypeLogDto.getOp_type());
			  tmpSysOpTypeLogDto.setOp_time(sysOpTypeLogDto.getOp_time());
			  tmpSysOpTypeLogDto.setRemark(sysOpTypeLogDto.getRemark());
		
			sysOpTypeLogService.updatePK(sysOpTypeLogDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SysOpTypeLogDto getSysOpTypeLogDto() {
		return sysOpTypeLogDto;
	}

	public final void setStudentDto(SysOpTypeLogDto sysOpTypeLogDto) {
		this.sysOpTypeLogDto = sysOpTypeLogDto;
	}

}
