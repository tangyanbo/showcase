package com.shiyue.bbs.web.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.ldbank.common.tools.opensymphony.web.action.BaseAction;
import com.shiyue.bbs.model.dto.SubMerTerminalDto;
import com.shiyue.bbs.service.ISubMerTerminalService;

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
 
@Controller("editSubMerTerminalAction")
@Scope("prototype")
public class EditSubMerTerminalAction extends BaseAction {
	private static final long serialVersionUID = 1L;

	@Autowired
	private ISubMerTerminalService subMerTerminalService;
	private SubMerTerminalDto subMerTerminalDto =new SubMerTerminalDto();;

	public String execute() throws Exception {
		try {
		    
		      SubMerTerminalDto tmpSubMerTerminalDto = new SubMerTerminalDto();
			  tmpSubMerTerminalDto.setId(subMerTerminalDto.getId());
			  tmpSubMerTerminalDto.setTsn(subMerTerminalDto.getTsn());
			  tmpSubMerTerminalDto.setFactory(subMerTerminalDto.getFactory());
			  tmpSubMerTerminalDto.setSub_mer_id(subMerTerminalDto.getSub_mer_id());
			  tmpSubMerTerminalDto.setMer_sys_id(subMerTerminalDto.getMer_sys_id());
			  tmpSubMerTerminalDto.setPlat_mer_id(subMerTerminalDto.getPlat_mer_id());
			  tmpSubMerTerminalDto.setVersion(subMerTerminalDto.getVersion());
			  tmpSubMerTerminalDto.setCategory(subMerTerminalDto.getCategory());
			  tmpSubMerTerminalDto.setCreate_time(subMerTerminalDto.getCreate_time());
			  tmpSubMerTerminalDto.setActive_time(subMerTerminalDto.getActive_time());
			  tmpSubMerTerminalDto.setLast_update_time(subMerTerminalDto.getLast_update_time());
			  tmpSubMerTerminalDto.setTerminal_info(subMerTerminalDto.getTerminal_info());
			  tmpSubMerTerminalDto.setLogin_name(subMerTerminalDto.getLogin_name());
			  tmpSubMerTerminalDto.setLogin_pwd(subMerTerminalDto.getLogin_pwd());
			  tmpSubMerTerminalDto.setLast_login_time(subMerTerminalDto.getLast_login_time());
			  tmpSubMerTerminalDto.setLast_login_info(subMerTerminalDto.getLast_login_info());
			  tmpSubMerTerminalDto.setStatus(subMerTerminalDto.getStatus());
			  tmpSubMerTerminalDto.setReserved(subMerTerminalDto.getReserved());
			  tmpSubMerTerminalDto.setAgent_id_l1(subMerTerminalDto.getAgent_id_l1());
			  tmpSubMerTerminalDto.setAgent_id_l2(subMerTerminalDto.getAgent_id_l2());
		
			subMerTerminalService.updatePK(subMerTerminalDto);
			return SUCCESS;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return ERROR;

	}

	public final SubMerTerminalDto getSubMerTerminalDto() {
		return subMerTerminalDto;
	}

	public final void setStudentDto(SubMerTerminalDto subMerTerminalDto) {
		this.subMerTerminalDto = subMerTerminalDto;
	}

}
