package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SysManagerDto;
import com.shiyue.bbs.service.ISysManagerService;

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
 
@Controller("editSysManagerAction")
@Scope("prototype")
public class EditSysManagerAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISysManagerService sysManagerService;
	private SysManagerDto sysManagerDto =new SysManagerDto();;

	public String execute() throws Exception {
		try {
		    
		      SysManagerDto tmpSysManagerDto = new SysManagerDto();
			  tmpSysManagerDto.setId(sysManagerDto.getId());
			  tmpSysManagerDto.setLogin_name(sysManagerDto.getLogin_name());
			  tmpSysManagerDto.setLogin_pwd(sysManagerDto.getLogin_pwd());
			  tmpSysManagerDto.setDepartment(sysManagerDto.getDepartment());
			  tmpSysManagerDto.setReal_name(sysManagerDto.getReal_name());
			  tmpSysManagerDto.setPhone(sysManagerDto.getPhone());
			  tmpSysManagerDto.setEmail(sysManagerDto.getEmail());
			  tmpSysManagerDto.setLevel(sysManagerDto.getLevel());
			  tmpSysManagerDto.setBand_ip(sysManagerDto.getBand_ip());
			  tmpSysManagerDto.setLevel_pwd(sysManagerDto.getLevel_pwd());
			  tmpSysManagerDto.setPurview(sysManagerDto.getPurview());
			  tmpSysManagerDto.setLast_login_time(sysManagerDto.getLast_login_time());
			  tmpSysManagerDto.setLogin_times(sysManagerDto.getLogin_times());
			  tmpSysManagerDto.setLast_login_ip(sysManagerDto.getLast_login_ip());
			  tmpSysManagerDto.setStatus(sysManagerDto.getStatus());
			  tmpSysManagerDto.setCreate_time(sysManagerDto.getCreate_time());
			  tmpSysManagerDto.setReserved(sysManagerDto.getReserved());
			  tmpSysManagerDto.setReport_email(sysManagerDto.getReport_email());
		
			sysManagerService.updatePK(sysManagerDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SysManagerDto getSysManagerDto() {
		return sysManagerDto;
	}

	public final void setStudentDto(SysManagerDto sysManagerDto) {
		this.sysManagerDto = sysManagerDto;
	}

}
