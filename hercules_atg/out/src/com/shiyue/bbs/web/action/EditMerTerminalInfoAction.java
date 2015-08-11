package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.MerTerminalInfoDto;
import com.shiyue.bbs.service.IMerTerminalInfoService;

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
 
@Controller("editMerTerminalInfoAction")
@Scope("prototype")
public class EditMerTerminalInfoAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private IMerTerminalInfoService merTerminalInfoService;
	private MerTerminalInfoDto merTerminalInfoDto =new MerTerminalInfoDto();;

	public String execute() throws Exception {
		try {
		    
		      MerTerminalInfoDto tmpMerTerminalInfoDto = new MerTerminalInfoDto();
			  tmpMerTerminalInfoDto.setId(merTerminalInfoDto.getId());
			  tmpMerTerminalInfoDto.setMer_sys_id(merTerminalInfoDto.getMer_sys_id());
			  tmpMerTerminalInfoDto.setCategory(merTerminalInfoDto.getCategory());
			  tmpMerTerminalInfoDto.setTerminal_code(merTerminalInfoDto.getTerminal_code());
			  tmpMerTerminalInfoDto.setTerminal_systerm(merTerminalInfoDto.getTerminal_systerm());
			  tmpMerTerminalInfoDto.setFile_name(merTerminalInfoDto.getFile_name());
			  tmpMerTerminalInfoDto.setVersion(merTerminalInfoDto.getVersion());
			  tmpMerTerminalInfoDto.setVersion_desc(merTerminalInfoDto.getVersion_desc());
			  tmpMerTerminalInfoDto.setUpdate_type(merTerminalInfoDto.getUpdate_type());
			  tmpMerTerminalInfoDto.setUpdate_path(merTerminalInfoDto.getUpdate_path());
			  tmpMerTerminalInfoDto.setCreate_time(merTerminalInfoDto.getCreate_time());
			  tmpMerTerminalInfoDto.setStatus(merTerminalInfoDto.getStatus());
			  tmpMerTerminalInfoDto.setReserved(merTerminalInfoDto.getReserved());
		
			merTerminalInfoService.updatePK(merTerminalInfoDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final MerTerminalInfoDto getMerTerminalInfoDto() {
		return merTerminalInfoDto;
	}

	public final void setStudentDto(MerTerminalInfoDto merTerminalInfoDto) {
		this.merTerminalInfoDto = merTerminalInfoDto;
	}

}
